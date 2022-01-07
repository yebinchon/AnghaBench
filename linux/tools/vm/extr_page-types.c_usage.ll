; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1913 x i8] c"page-types [options]\0A            -r|--raw                   Raw mode, for kernel developers\0A            -d|--describe flags        Describe flags\0A            -a|--addr    addr-spec     Walk a range of pages\0A            -b|--bits    bits-spec     Walk pages with specified bits\0A            -c|--cgroup  path|@inode   Walk pages within memory cgroup\0A            -p|--pid     pid           Walk process address space\0A            -f|--file    filename      Walk file address space\0A            -i|--mark-idle             Mark pages idle\0A            -l|--list                  Show page details in ranges\0A            -L|--list-each             Show page details one by one\0A            -C|--list-cgroup           Show cgroup inode for pages\0A            -M|--list-mapcnt           Show page map count\0A            -N|--no-summary            Don't show summary info\0A            -X|--hwpoison              hwpoison pages\0A            -x|--unpoison              unpoison pages\0A            -F|--kpageflags filename   kpageflags file to parse\0A            -h|--help                  Show this usage message\0Aflags:\0A            0x10                       bitfield format, e.g.\0A            anon                       bit-name, e.g.\0A            0x10,anon                  comma-separated list, e.g.\0Aaddr-spec:\0A            N                          one page at offset N (unit: pages)\0A            N+M                        pages range from N to N+M-1\0A            N,M                        pages range from N to M-1\0A            N,                         pages range from N to end\0A            ,M                         pages range from 0 to M-1\0Abits-spec:\0A            bit1,bit2                  (flags & (bit1|bit2)) != 0\0A            bit1,bit2=bit1             (flags & (bit1|bit2)) == bit1\0A            bit1,~bit2                 (flags & (bit1|bit2)) == bit1\0A            =bit1,bit2                 flags == (bit1|bit2)\0Abit-names:\0A\00", align 1
@page_flag_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%16s%s\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"\0A                                   (r) raw mode bits  (o) overloaded bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1913 x i8], [1913 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i8**, i8*** @page_flag_names, align 8
  %7 = call i64 @ARRAY_SIZE(i8** %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load i8**, i8*** @page_flag_names, align 8
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %32

16:                                               ; preds = %9
  %17 = load i8**, i8*** @page_flag_names, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i64, i64* %1, align 8
  %23 = shl i64 1, %22
  %24 = call i32 @page_flag_type(i64 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %24)
  %26 = load i64, i64* %2, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %2, align 8
  %28 = icmp ugt i64 %27, 3
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  store i64 0, i64* %2, align 8
  %30 = call i32 @putchar(i8 signext 10)
  br label %31

31:                                               ; preds = %29, %16
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i64, i64* %1, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %1, align 8
  br label %4

35:                                               ; preds = %4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @page_flag_type(i64) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
