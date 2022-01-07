; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_fast_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_fast_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @numeric_fast_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numeric_fast_cmp(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @DatumGetNumeric(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @DatumGetNumeric(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @cmp_numerics(i64 %14, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @DatumGetPointer(i32 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @pfree(i64 %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @DatumGetPointer(i32 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @pfree(i64 %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i64 @DatumGetNumeric(i32) #1

declare dso_local i32 @cmp_numerics(i64, i64) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @pfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
