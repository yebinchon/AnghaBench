
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* insts; int bytelen; char len; } ;
typedef TYPE_1__ ByteProg ;
 int assert (int ) ;
 int printf (char*,...) ;

void re1_5_dumpcode(ByteProg *prog)
{
    int pc = 0;
    char *code = prog->insts;
    while (pc < prog->bytelen) {
                printf("%2d: ", pc);
                switch(code[pc++]) {
                default:
                        assert(0);

                case 128:
                        printf("split %d (%d)\n", pc + (signed char)code[pc] + 1, (signed char)code[pc]);
                        pc++;
                        break;
                case 130:
                        printf("rsplit %d (%d)\n", pc + (signed char)code[pc] + 1, (signed char)code[pc]);
                        pc++;
                        break;
                case 133:
                        printf("jmp %d (%d)\n", pc + (signed char)code[pc] + 1, (signed char)code[pc]);
                        pc++;
                        break;
                case 137:
                        printf("char %c\n", code[pc++]);
                        break;
                case 139:
                        printf("any\n");
                        break;
                case 136:
                case 135: {
                        int num = code[pc];
                        printf("class%s %d", (code[pc - 1] == 135 ? "not" : ""), num);
                        pc++;
                        while (num--) {
                            printf(" 0x%02x-0x%02x", code[pc], code[pc + 1]);
                            pc += 2;
                        }
                        printf("\n");
                        break;
                }
                case 131:
                        printf("namedclass %c\n", code[pc++]);
                        break;
                case 132:
                        printf("match\n");
                        break;
                case 129:
                        printf("save %d\n", (unsigned char)code[pc++]);
                        break;
                case 138:
                        printf("assert bol\n");
                        break;
                case 134:
                        printf("assert eol\n");
                        break;
                }
    }
    printf("Bytes: %d, insts: %d\n", prog->bytelen, prog->len);
}
