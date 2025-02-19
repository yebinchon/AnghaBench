; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_check_needs_freeze.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_check_needs_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FirstOffsetNumber = common dso_local global i64 0, align 8
@FreezeLimit = common dso_local global i32 0, align 4
@MultiXactCutoff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @lazy_check_needs_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lazy_check_needs_freeze(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BufferGetPage(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @PageIsNew(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @PageIsEmpty(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %60

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @PageGetMaxOffsetNumber(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %56, %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @PageGetItemId(i32 %31, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @ItemIdIsUsed(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ItemIdIsNormal(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @PageGetItem(i32 %45, i32 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* @FreezeLimit, align 4
  %50 = load i32, i32* @MultiXactCutoff, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @heap_tuple_needs_freeze(i64 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %60

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @OffsetNumberNext(i64 %57)
  store i64 %58, i64* %7, align 8
  br label %26

59:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %54, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @PageIsEmpty(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @ItemIdIsUsed(i32) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @heap_tuple_needs_freeze(i64, i32, i32, i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
