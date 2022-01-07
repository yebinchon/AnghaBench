
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeParser {int dummy; } ;
struct RangeList {int dummy; } ;
struct Range6List {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int LOG (int,char*,char const*,unsigned int) ;
 int exit (int) ;
 int fclose (int *) ;
 int fopen_s (int **,char const*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (unsigned char*,int,int,int *) ;
 int perror (char const*) ;
 int rangelist_add_range (struct RangeList*,unsigned int,unsigned int) ;
 int rangelist_sort (struct RangeList*) ;
 struct RangeParser* rangeparse_create () ;
 int rangeparse_err (struct RangeParser*,unsigned long long*,unsigned long long*) ;
 int rangeparse_next (struct RangeParser*,unsigned char const*,size_t*,int,unsigned int*,unsigned int*) ;
 int stderr ;

int
rangefile_read(const char *filename, struct RangeList *targets_ipv4, struct Range6List *targets_ipv6)
{
    struct RangeParser *p;
    unsigned char buf[65536];
    FILE *fp = ((void*)0);
    int err;
    bool is_error = 0;
    unsigned addr_count = 0;





    err = fopen_s(&fp, filename, "rb");
    if (err || fp == ((void*)0)) {
        perror(filename);
        exit(1);
    }





    p = rangeparse_create();





    while (!is_error) {
        size_t count;
        size_t offset;

        count = fread(buf, 1, sizeof(buf), fp);
        if (count <= 0)
            break;

        offset = 0;
        while (offset < count) {
            int x;
            unsigned begin, end;

            x = rangeparse_next(p, buf, &offset, count, &begin, &end);
            if (x < 0) {
                unsigned long long line_number, char_number;
                rangeparse_err(p, &line_number, &char_number);
                fprintf(stderr, "%s:%llu:%llu: parse err\n", filename, line_number, char_number);
                is_error = 1;
                break;
            } else if (x == 1) {
                rangelist_add_range(targets_ipv4, begin, end);
                addr_count++;
            } else if (x == 0) {
                if (offset < count)
                    fprintf(stderr, "[-] fail\n");
            }
        }
    }
    fclose(fp);



    if (!is_error) {
        int x;
        size_t offset = 0;
        unsigned begin, end;
        x = rangeparse_next(p, (const unsigned char *)"\n", &offset, 1, &begin, &end);
        if (x < 0) {
            unsigned long long line_number, char_number;
            rangeparse_err(p, &line_number, &char_number);
            fprintf(stderr, "%s:%llu:%llu: parse err\n", filename, line_number, char_number);
            is_error = 1;
        } else if (x == 1) {
            rangelist_add_range(targets_ipv4, begin, end);
            addr_count++;
        }
    }

    LOG(1, "[+] %s: %u addresses read\n", filename, addr_count);



    rangelist_sort(targets_ipv4);

    if (is_error)
        return -1;
    else
        return 0;
}
