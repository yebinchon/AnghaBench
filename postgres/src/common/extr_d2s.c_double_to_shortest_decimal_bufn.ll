; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_double_to_shortest_decimal_bufn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_double_to_shortest_decimal_bufn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DOUBLE_MANTISSA_BITS = common dso_local global i32 0, align 4
@DOUBLE_EXPONENT_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @double_to_shortest_decimal_bufn(double %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load double, double* %4, align 8
  %13 = call i32 @double_to_bits(double %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %16 = load i32, i32* @DOUBLE_EXPONENT_BITS, align 4
  %17 = add nsw i32 %15, %16
  %18 = ashr i32 %14, %17
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @UINT64CONST(i32 1)
  %24 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %25 = shl i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %22, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @DOUBLE_EXPONENT_BITS, align 4
  %32 = shl i32 1, %31
  %33 = sub i32 %32, 1
  %34 = and i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @DOUBLE_EXPONENT_BITS, align 4
  %37 = shl i32 1, %36
  %38 = sub i32 %37, 1
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43, %2
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @copy_special_str(i8* %47, i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %71

56:                                               ; preds = %43, %40
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @d2d_small_int(i32 %57, i32 %58, i32* %10)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @d2d(i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @to_chars(i32 %67, i32 %68, i8* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %46
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @double_to_bits(double) #1

declare dso_local i32 @UINT64CONST(i32) #1

declare dso_local i32 @copy_special_str(i8*, i32, i32, i32) #1

declare dso_local i32 @d2d_small_int(i32, i32, i32*) #1

declare dso_local i32 @d2d(i32, i32) #1

declare dso_local i32 @to_chars(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
