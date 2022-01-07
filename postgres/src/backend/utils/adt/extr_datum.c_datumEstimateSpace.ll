; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datumEstimateSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datumEstimateSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datumEstimateSpace(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  br label %46

20:                                               ; preds = %12
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DatumGetPointer(i32 %24)
  %26 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @DatumGetEOHP(i32 %29)
  %31 = call i64 @EOH_get_flat_size(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  br label %45

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @datumGetSize(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %36, %28
  br label %46

46:                                               ; preds = %45, %15
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @EOH_get_flat_size(i32) #1

declare dso_local i32 @DatumGetEOHP(i32) #1

declare dso_local i64 @datumGetSize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
