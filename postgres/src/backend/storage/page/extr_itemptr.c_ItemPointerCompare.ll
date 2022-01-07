; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_itemptr.c_ItemPointerCompare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_itemptr.c_ItemPointerCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ItemPointerCompare(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @ItemPointerGetBlockNumberNoCheck(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @ItemPointerGetBlockNumberNoCheck(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %36

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @ItemPointerGetOffsetNumberNoCheck(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @ItemPointerGetOffsetNumberNoCheck(i32 %24)
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @ItemPointerGetOffsetNumberNoCheck(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @ItemPointerGetOffsetNumberNoCheck(i32 %31)
  %33 = icmp sgt i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %27, %20, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @ItemPointerGetBlockNumberNoCheck(i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumberNoCheck(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
