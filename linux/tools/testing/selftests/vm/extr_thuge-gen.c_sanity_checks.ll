; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_thuge-gen.c_sanity_checks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_thuge-gen.c_sanity_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_page_sizes = common dso_local global i32 0, align 4
@page_sizes = common dso_local global i64* null, align 8
@NUM_PAGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Not enough huge pages for page size %lu MB, need %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"/proc/sys/kernel/shmmax\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Please do echo %lu > /proc/sys/kernel/shmmax\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"No GB pages available on x86-64\0APlease boot with hugepagesz=1G hugepages=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sanity_checks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 (...) @getpagesize()
  store i64 %3, i64* %2, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %42, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @num_page_sizes, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load i64*, i64** @page_sizes, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load i64*, i64** @page_sizes, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %16, %8
  %23 = load i64*, i64** @page_sizes, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @read_free(i64 %27)
  %29 = load i64, i64* @NUM_PAGES, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i64*, i64** @page_sizes, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = lshr i64 %36, 20
  %38 = load i64, i64* @NUM_PAGES, align 8
  %39 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  %40 = call i32 @exit(i32 0) #3
  unreachable

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %4

45:                                               ; preds = %4
  %46 = call i64 @read_sysfs(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* @NUM_PAGES, align 8
  %48 = load i64, i64* %2, align 8
  %49 = mul i64 %47, %48
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* @NUM_PAGES, align 8
  %54 = mul i64 %52, %53
  %55 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = call i32 @exit(i32 0) #3
  unreachable

57:                                               ; preds = %45
  %58 = load i64, i64* %2, align 8
  %59 = icmp ne i64 %58, 1073741824
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* @NUM_PAGES, align 8
  %62 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i64 %61)
  %63 = call i32 @exit(i32 0) #3
  unreachable

64:                                               ; preds = %57
  ret void
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i64 @read_free(i64) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @read_sysfs(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
