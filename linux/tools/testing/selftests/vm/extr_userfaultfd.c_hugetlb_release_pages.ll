; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_userfaultfd.c_hugetlb_release_pages.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_userfaultfd.c_hugetlb_release_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge_fd = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@huge_fd_off0 = common dso_local global i8* null, align 8
@nr_pages = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fallocate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hugetlb_release_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlb_release_pages(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @huge_fd, align 4
  %5 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %6 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %7 = or i32 %5, %6
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** @huge_fd_off0, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @nr_pages, align 4
  %14 = load i32, i32* @page_size, align 4
  %15 = mul nsw i32 %13, %14
  br label %16

16:                                               ; preds = %12, %11
  %17 = phi i32 [ 0, %11 ], [ %15, %12 ]
  %18 = load i32, i32* @nr_pages, align 4
  %19 = load i32, i32* @page_size, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i64 @fallocate(i32 %4, i32 %7, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @fallocate(i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
