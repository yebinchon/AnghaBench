; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageGetHeapFreeSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageGetHeapFreeSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxHeapTuplesPerPage = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PageGetHeapFreeSpace(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @PageGetFreeSpace(i64 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @PageGetMaxOffsetNumber(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MaxHeapTuplesPerPage, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @PageHasFreeLinePointers(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %37, %22
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @PageGetItemId(i64 %29, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ItemIdIsUsed(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %40

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @OffsetNumberNext(i64 %38)
  store i64 %39, i64* %4, align 8
  br label %24

40:                                               ; preds = %35, %24
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %44, %40
  br label %47

46:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %11
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i64 @PageGetFreeSpace(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i64 @PageHasFreeLinePointers(i32) #1

declare dso_local i32 @PageGetItemId(i64, i64) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
