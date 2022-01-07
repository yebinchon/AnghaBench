; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_invmod.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_invmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_RANGE = common dso_local global i32 0, align 4
@MP_UNDEF = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i64 0, align 8
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_invmod(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %13, %10, %3
  %17 = phi i1 [ false, %10 ], [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @CMPZ(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @CMPZ(i32* %24)
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %16
  %28 = load i32, i32* @MP_RANGE, align 4
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %23
  %30 = call i32 @DECLARE_TEMP(i32 2)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @TEMP(i32 0)
  %34 = call i32 @TEMP(i32 1)
  %35 = call i32 @mp_int_egcd(i32* %31, i32* %32, i32 %33, i32 %34, i32* null)
  %36 = call i32 @REQUIRE(i32 %35)
  %37 = call i32 @TEMP(i32 0)
  %38 = call i64 @mp_int_compare_value(i32 %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @MP_UNDEF, align 4
  %42 = call i32 @REQUIRE(i32 %41)
  br label %43

43:                                               ; preds = %40, %29
  %44 = call i32 @TEMP(i32 1)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @TEMP(i32 1)
  %47 = call i32 @mp_int_mod(i32 %44, i32* %45, i32 %46)
  %48 = call i32 @REQUIRE(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @MP_SIGN(i32* %49)
  %51 = load i64, i64* @MP_NEG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @TEMP(i32 1)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @mp_int_sub(i32* %54, i32 %55, i32* %56)
  %58 = call i32 @REQUIRE(i32 %57)
  br label %64

59:                                               ; preds = %43
  %60 = call i32 @TEMP(i32 1)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @mp_int_copy(i32 %60, i32* %61)
  %63 = call i32 @REQUIRE(i32 %62)
  br label %64

64:                                               ; preds = %59, %53
  %65 = call i32 (...) @CLEANUP_TEMP()
  %66 = load i32, i32* @MP_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %27
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CMPZ(i32*) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @mp_int_egcd(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @TEMP(i32) #1

declare dso_local i64 @mp_int_compare_value(i32, i32) #1

declare dso_local i32 @mp_int_mod(i32, i32*, i32) #1

declare dso_local i64 @MP_SIGN(i32*) #1

declare dso_local i32 @mp_int_sub(i32*, i32, i32*) #1

declare dso_local i32 @mp_int_copy(i32, i32*) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
