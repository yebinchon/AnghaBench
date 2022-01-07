
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lh5801_insn_format { ____Placeholder_lh5801_insn_format } lh5801_insn_format ;


 int LH5801_IFMT_FD_MASK ;




__attribute__((used)) static bool lh5801_ifmt_fd_matches(enum lh5801_insn_format fmt, int fd) {
 switch (fmt & LH5801_IFMT_FD_MASK) {
 case 129: return !fd;
 case 128: return fd;
 case 130: return 1;
 default: return 0;
 }
}
