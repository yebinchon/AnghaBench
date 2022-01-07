; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_reduce.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @s_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_reduce(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @MP_USED(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* @MP_DIGIT_BIT, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @MP_DIGIT_BIT, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @mp_int_copy(i32 %25, i32 %26)
  %28 = load i64, i64* @MP_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %86

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @s_qdiv(i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @UMUL(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @s_qdiv(i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @s_qmod(i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @UMUL(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @s_qmod(i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mp_int_sub(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @CMPZ(i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %31
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @s_qsub(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %86

65:                                               ; preds = %59, %31
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @mp_int_compare(i32 %66, i32 %67)
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @mp_int_sub(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @mp_int_compare(i32 %75, i32 %76)
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @mp_int_sub(i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %70
  br label %85

85:                                               ; preds = %84, %65
  store i32 1, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %64, %30
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @MP_USED(i32) #1

declare dso_local i64 @mp_int_copy(i32, i32) #1

declare dso_local i32 @s_qdiv(i32, i32) #1

declare dso_local i32 @UMUL(i32, i32, i32) #1

declare dso_local i32 @s_qmod(i32, i32) #1

declare dso_local i32 @mp_int_sub(i32, i32, i32) #1

declare dso_local i64 @CMPZ(i32) #1

declare dso_local i32 @s_qsub(i32, i32) #1

declare dso_local i64 @mp_int_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
