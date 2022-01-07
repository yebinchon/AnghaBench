; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_f2s.c_float_to_shortest_decimal_bufn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_f2s.c_float_to_shortest_decimal_bufn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLOAT_MANTISSA_BITS = common dso_local global i32 0, align 4
@FLOAT_EXPONENT_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float_to_shortest_decimal_bufn(float %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float %0, float* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load float, float* %4, align 4
  %13 = call i32 @float_to_bits(float %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FLOAT_MANTISSA_BITS, align 4
  %16 = load i32, i32* @FLOAT_EXPONENT_BITS, align 4
  %17 = add nsw i32 %15, %16
  %18 = ashr i32 %14, %17
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FLOAT_MANTISSA_BITS, align 4
  %24 = shl i32 1, %23
  %25 = sub i32 %24, 1
  %26 = and i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @FLOAT_MANTISSA_BITS, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* @FLOAT_EXPONENT_BITS, align 4
  %31 = shl i32 1, %30
  %32 = sub i32 %31, 1
  %33 = and i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @FLOAT_EXPONENT_BITS, align 4
  %36 = shl i32 1, %35
  %37 = sub i32 %36, 1
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42, %2
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @copy_special_str(i8* %46, i32 %47, i32 %50, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %42, %39
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @f2d_small_int(i32 %56, i32 %57, i32* %10)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @f2d(i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @to_chars(i32 %66, i32 %67, i8* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %45
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @float_to_bits(float) #1

declare dso_local i32 @copy_special_str(i8*, i32, i32, i32) #1

declare dso_local i32 @f2d_small_int(i32, i32, i32*) #1

declare dso_local i32 @f2d(i32, i32) #1

declare dso_local i32 @to_chars(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
