; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_cmp_numerics.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_cmp_numerics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cmp_numerics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_numerics(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @NUMERIC_IS_NAN(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @NUMERIC_IS_NAN(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %15

14:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %13
  br label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @NUMERIC_IS_NAN(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %39

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @NUMERIC_DIGITS(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @NUMERIC_NDIGITS(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @NUMERIC_WEIGHT(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @NUMERIC_SIGN(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @NUMERIC_DIGITS(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @NUMERIC_NDIGITS(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @NUMERIC_WEIGHT(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @NUMERIC_SIGN(i32 %36)
  %38 = call i32 @cmp_var_common(i32 %23, i32 %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %21, %20
  br label %40

40:                                               ; preds = %39, %15
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @NUMERIC_IS_NAN(i32) #1

declare dso_local i32 @cmp_var_common(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NUMERIC_DIGITS(i32) #1

declare dso_local i32 @NUMERIC_NDIGITS(i32) #1

declare dso_local i32 @NUMERIC_WEIGHT(i32) #1

declare dso_local i32 @NUMERIC_SIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
