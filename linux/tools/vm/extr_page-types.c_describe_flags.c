
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int page_flag_longname (scalar_t__) ;
 int page_flag_name (scalar_t__) ;
 scalar_t__ parse_flag_names (char const*,int ) ;
 int printf (char*,unsigned long long,int ,int ) ;

__attribute__((used)) static void describe_flags(const char *optarg)
{
 uint64_t flags = parse_flag_names(optarg, 0);

 printf("0x%016llx\t%s\t%s\n",
  (unsigned long long)flags,
  page_flag_name(flags),
  page_flag_longname(flags));
}
