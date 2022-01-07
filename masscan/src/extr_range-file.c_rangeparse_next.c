
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_bracket; int ellision_index; int index; int* tmp; } ;
struct RangeParser {int state; unsigned char tmp; int digit_count; unsigned int begin; unsigned int end; int addr; scalar_t__ char_number; int line_number; TYPE_1__ ipv6; } ;


 int ipv6_finish_number (struct RangeParser*,unsigned char) ;
 int ipv6_init (struct RangeParser*) ;

__attribute__((used)) static int
rangeparse_next(struct RangeParser *p, const unsigned char *buf, size_t *r_offset, size_t length,
                unsigned *r_begin, unsigned *r_end)
{
    size_t i = *r_offset;
    enum RangeState {
        LINE_START, ADDR_START,
        COMMENT,
        NUMBER0, NUMBER1, NUMBER2, NUMBER3, NUMBER_ERR,
        SECOND0, SECOND1, SECOND2, SECOND3, SECOND_ERR,
        CIDR,
        UNIDASH1, UNIDASH2,
        IPV6_NUM, IPV6_COLON, IPV6_CIDR, IPV6_ENDBRACKET,
        ERROR
    } state = p->state;
    int result = 0;

    while (i < length) {
        unsigned char c = buf[i++];
        p->char_number++;
        switch (state) {
            case LINE_START:
            case ADDR_START:
                switch (c) {
                    case ' ': case '\t': case '\r':

                        continue;
                    case '\n':
                        p->line_number++;
                        p->char_number = 0;
                        continue;
                    case '#': case ';': case '/': case '-':
                        state = COMMENT;
                        continue;

                    case '0': case '1': case '2': case '3': case '4':
                    case '5': case '6': case '7': case '8': case '9':
                        p->tmp = (c - '0');
                        p->digit_count = 1;
                        state = NUMBER0;
                        break;
                    case 'a': case 'b': case 'c': case 'd': case 'e': case 'f':
                        ipv6_init(p);
                        p->tmp = (c - 'a' + 10);
                        p->digit_count = 1;
                        state = IPV6_NUM;
                        break;
                    case 'A': case 'B': case 'C': case 'D': case 'E': case 'F':
                        ipv6_init(p);
                        p->tmp = (c - 'A' + 10);
                        p->digit_count = 1;
                        state = IPV6_NUM;
                        break;
                    case '[':
                        ipv6_init(p);
                        p->ipv6.is_bracket = 1;
                        state = IPV6_NUM;
                        break;
                    default:
                        state = ERROR;
                        length = i;
                        break;
                }
                break;
            case IPV6_COLON:
                p->digit_count = 0;
                p->tmp = 0;
                if (c == ':') {
                    if (p->ipv6.ellision_index < 8) {
                        state = ERROR;
                        length = i;
                    } else {
                        p->ipv6.ellision_index = p->ipv6.index;
                        state = IPV6_COLON;
                    }
                    break;
                }

            case IPV6_NUM:
                switch (c) {
                    case '0': case '1': case '2': case '3': case '4':
                    case '5': case '6': case '7': case '8': case '9':
                        if (p->digit_count >= 4) {
                            state = ERROR;
                            length = i;
                        } else {
                            p->tmp = p->tmp * 16 + (c - '0');
                            p->digit_count++;
                        }
                        break;
                    case 'a': case 'b': case 'c': case 'd': case 'e': case 'f':
                        if (p->digit_count >= 4) {
                            state = ERROR;
                            length = i;
                        } else {
                            p->tmp = p->tmp * 16 + (c - 'a' + 10);
                            p->digit_count++;
                        }
                        break;
                    case 'A': case 'B': case 'C': case 'D': case 'E': case 'F':
                        if (p->digit_count >= 4) {
                            state = ERROR;
                            length = i;
                        } else {
                            p->tmp = p->tmp * 16 + (c - 'A' + 10);
                            p->digit_count++;
                        }
                        break;
                    case ':':
                        if (p->ipv6.index >= 8) {
                            state = ERROR;
                            length = i;
                        } else {
                            p->ipv6.tmp[p->ipv6.index++] = p->tmp;
                            state = IPV6_COLON;
                        }
                        break;
                    case '/':
                    case ']':
                    case ' ':
                    case '\t':
                    case '\r':
                    case '\n':
                    case ',':
                    case '-':

                        p->ipv6.tmp[p->ipv6.index++] = p->tmp;
                        if (ipv6_finish_number(p, c) != 0) {
                            state = ERROR;
                            length = i;
                            break;
                        }
                        switch (c) {
                            case '/':
                                state = IPV6_CIDR;
                                break;
                            case ']':
                                if (!p->ipv6.is_bracket) {
                                    state = ERROR;
                                    length = i;
                                } else {
                                    state = IPV6_ENDBRACKET;
                                }
                                break;
                            case '\n':
                                p->line_number++;
                                p->char_number = 0;

                            case ' ':
                            case '\t':
                            case '\r':
                            case ',':

                            case '-':
                                break;
                        }
                        break;
                    default:
                        state = ERROR;
                        length = i;
                        break;
                }
                break;
            case COMMENT:
                if (c == '\n') {
                    state = LINE_START;
                    p->line_number++;
                    p->char_number = 0;
                } else
                    state = COMMENT;
                break;
            case CIDR:
                switch (c) {
                    case '0': case '1': case '2': case '3': case '4':
                    case '5': case '6': case '7': case '8': case '9':
                        if (p->digit_count == 3) {
                            state = ERROR;
                            length = i;
                        } else {
                            p->digit_count++;
                            p->tmp = p->tmp * 10 + (c - '0');
                            if (p->tmp > 32) {
                                state = ERROR;
                                length = i;
                            }
                            continue;
                        }
                        break;
                    case ':':
                    case ',':
                    case ' ':
                    case '\t':
                    case '\r':
                    case '\n':
                        {
                            unsigned long long prefix = p->tmp;
                            unsigned long long mask = 0xFFFFFFFF00000000ULL >> prefix;


                            p->begin &= (unsigned)mask;



                            p->end = p->begin | (unsigned)~mask;


                            state = ADDR_START;
                            length = i;
                            if (c == '\n') {
                                p->line_number++;
                                p->char_number = 0;
                            }
                            *r_begin = p->begin;
                            *r_end = p->end;
                            result = 1;
                        }
                        break;
                    default:
                        state = ERROR;
                        length = i;
                        break;
                }
                break;

            case UNIDASH1:
                if (c == 0x80)
                    state = UNIDASH2;
                else {
                    state = ERROR;
                    length = i;
                }
                break;
            case UNIDASH2:
                if (c < 0x90 || 0x95 < c) {
                    state = ERROR;
                    length = i;
                } else {
                    c = '-';
                    state = NUMBER3;

                }


            case NUMBER0:
            case NUMBER1:
            case NUMBER2:
            case NUMBER3:
            case SECOND0:
            case SECOND1:
            case SECOND2:
            case SECOND3:
                switch (c) {
                    case '.':
                        p->addr = (p->addr << 8) | p->tmp;
                        p->tmp = 0;
                        p->digit_count = 0;
                        if (state == NUMBER3 || state == SECOND3) {
                            length = i;
                            state = ERROR;
                        } else
                            state++;
                        break;
                    case '0': case '1': case '2': case '3': case '4':
                    case '5': case '6': case '7': case '8': case '9':
                        if (p->digit_count == 3) {
                            state = ERROR;
                            length = i;
                        } else {
                            p->digit_count++;
                            p->tmp = p->tmp * 10 + (c - '0');
                            if (p->tmp > 255) {
                                state = ERROR;
                                length = i;
                            }
                            continue;
                        }
                        break;
                    case 0xe2:
                        if (state == NUMBER3) {
                            state = UNIDASH1;
                        } else {
                            state = ERROR;
                            length = i;
                        }
                        break;
                    case '-':
                    case 0x96:
                        if (state == NUMBER3) {
                            p->begin = (p->addr << 8) | p->tmp;
                            p->tmp = 0;
                            p->digit_count = 0;
                            p->addr = 0;
                            state = SECOND0;
                        } else {
                            state = NUMBER_ERR;
                            length = i;
                        }
                        break;
                    case '/':
                        if (state == NUMBER3) {
                            p->begin = (p->addr << 8) | p->tmp;
                            p->tmp = 0;
                            p->digit_count = 0;
                            p->addr = 0;
                            state = CIDR;
                        } else {
                            state = NUMBER_ERR;
                            length = i;
                        }
                        break;
                    case ':':
                    case ',':
                    case ' ':
                    case '\t':
                    case '\r':
                    case '\n':
                        if (state == NUMBER3) {
                            p->begin = (p->addr << 8) | p->tmp;
                            p->end = p->begin;
                            p->tmp = 0;
                            p->digit_count = 0;
                            p->addr = 0;
                            state = ADDR_START;
                            length = i;
                            if (c == '\n') {
                                p->line_number++;
                                p->char_number = 0;
                            }
                            *r_begin = p->begin;
                            *r_end = p->end;
                            result = 1;
                        } else if (state == SECOND3) {
                            p->end = (p->addr << 8) | p->tmp;
                            p->tmp = 0;
                            p->digit_count = 0;
                            p->addr = 0;
                            state = ADDR_START;
                            length = i;
                            if (c == '\n') {
                                p->line_number++;
                                p->char_number = 0;
                            }
                            *r_begin = p->begin;
                            *r_end = p->end;
                            result = 1;
                        } else {
                            state = NUMBER_ERR;
                            length = i;
                        }
                        break;
                    default:
                        state = ERROR;
                        length = i;
                        break;
                }
                break;

            default:
            case ERROR:
            case NUMBER_ERR:
            case SECOND_ERR:
                state = ERROR;
                length = i;
                break;
        }
    }

    *r_offset = i;
    p->state = state;
    if (state == ERROR || state == NUMBER_ERR || state == SECOND_ERR)
        result = -1;
    return result;
}
