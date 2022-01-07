; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_thuge-gen.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_thuge-gen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_page_sizes = common dso_local global i32 0, align 4
@page_sizes = common dso_local global i64* null, align 8
@MAP_HUGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Testing %luMB mmap with shift %x\0A\00", align 1
@MAP_HUGETLB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Testing default huge mmap\0A\00", align 1
@SHM_HUGETLB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Testing non-huge shmget\00", align 1
@SHM_HUGE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Testing %luMB shmget with shift %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"default huge shmget\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = call i32 (...) @default_huge_page_size()
  store i32 %8, i32* %3, align 4
  %9 = call i32 (...) @find_pagesizes()
  %10 = call i32 (...) @sanity_checks()
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %35, %0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @num_page_sizes, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i64*, i64** @page_sizes, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ilog2(i64 %21)
  %23 = load i32, i32* @MAP_HUGE_SHIFT, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i64, i64* %4, align 8
  %26 = lshr i64 %25, 20
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @MAP_HUGETLB, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @test_mmap(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %11

38:                                               ; preds = %11
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SHM_HUGETLB, align 4
  %42 = call i32 @test_mmap(i32 %40, i32 %41)
  %43 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 (...) @getpagesize()
  %45 = call i32 @test_shmget(i32 %44, i32 0)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %70, %38
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @num_page_sizes, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load i64*, i64** @page_sizes, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @ilog2(i64 %56)
  %58 = load i32, i32* @SHM_HUGE_SHIFT, align 4
  %59 = shl i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load i64, i64* %6, align 8
  %61 = lshr i64 %60, 20
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %61, i32 %62)
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @SHM_HUGETLB, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @test_shmget(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %50
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %46

73:                                               ; preds = %46
  %74 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SHM_HUGETLB, align 4
  %77 = call i32 @test_shmget(i32 %75, i32 %76)
  ret i32 0
}

declare dso_local i32 @default_huge_page_size(...) #1

declare dso_local i32 @find_pagesizes(...) #1

declare dso_local i32 @sanity_checks(...) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @test_mmap(i32, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @test_shmget(i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
