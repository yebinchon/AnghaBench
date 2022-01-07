; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_exptmod_known.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_exptmod_known.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_UNDEF = common dso_local global i32 0, align 4
@MP_RANGE = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_exptmod_known(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %19, %16, %5
  %26 = phi i1 [ false, %19 ], [ false, %16 ], [ false, %5 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @CMPZ(i64 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @MP_UNDEF, align 4
  store i32 %33, i32* %6, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @CMPZ(i64 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @MP_RANGE, align 4
  store i32 %39, i32* %6, align 4
  br label %84

40:                                               ; preds = %34
  %41 = call i32 @DECLARE_TEMP(i32 2)
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @MP_USED(i64 %42)
  store i32 %43, i32* %12, align 4
  %44 = call i64 @TEMP(i32 0)
  %45 = load i32, i32* %12, align 4
  %46 = mul nsw i32 2, %45
  %47 = call i32 @GROW(i64 %44, i32 %46)
  %48 = call i32 @REQUIRE(i32 %47)
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52, %40
  %57 = call i64 @TEMP(i32 1)
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 2, %58
  %60 = call i32 @GROW(i64 %57, i32 %59)
  %61 = call i32 @REQUIRE(i32 %60)
  %62 = call i64 @TEMP(i32 1)
  store i64 %62, i64* %13, align 8
  br label %65

63:                                               ; preds = %52
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @TEMP(i32 0)
  %69 = call i32 @mp_int_mod(i64 %66, i64 %67, i64 %68)
  %70 = call i32 @REQUIRE(i32 %69)
  %71 = call i64 @TEMP(i32 0)
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @s_embar(i64 %71, i64 %72, i64 %73, i64 %74, i64 %75)
  %77 = call i32 @REQUIRE(i32 %76)
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @mp_int_copy(i64 %78, i64 %79)
  %81 = call i32 @REQUIRE(i32 %80)
  %82 = call i32 (...) @CLEANUP_TEMP()
  %83 = load i32, i32* @MP_OK, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %65, %38, %32
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CMPZ(i64) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @MP_USED(i64) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @GROW(i64, i32) #1

declare dso_local i64 @TEMP(i32) #1

declare dso_local i32 @mp_int_mod(i64, i64, i64) #1

declare dso_local i32 @s_embar(i64, i64, i64, i64, i64) #1

declare dso_local i32 @mp_int_copy(i64, i64) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
