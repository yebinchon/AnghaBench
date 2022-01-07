; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_memory.c_kkll_m_memory_search.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_memory.c_kkll_m_memory_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_memory_search(i64 %0, i64 %1, i32* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64*, i64** %10, align 8
  store i64 %12, i64* %13, align 8
  br label %14

14:                                               ; preds = %43, %5
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp sle i64 %20, %21
  %23 = zext i1 %22 to i32
  br label %30

24:                                               ; preds = %14
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sge i64 %26, %27
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i32 [ %23, %18 ], [ %29, %24 ]
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @RtlEqualMemory(i32* %34, i64 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %41, i32* %6, align 4
  br label %56

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sgt i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 -1
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %49
  store i64 %52, i64* %50, align 8
  br label %14

53:                                               ; preds = %30
  %54 = load i64*, i64** %10, align 8
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @STATUS_NOT_FOUND, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %40
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @RtlEqualMemory(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
