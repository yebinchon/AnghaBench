; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactOffsetWouldWrap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactOffsetWouldWrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @MultiXactOffsetWouldWrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MultiXactOffsetWouldWrap(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add nsw i64 %9, %10
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %44

33:                                               ; preds = %18
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp slt i64 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %30
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
