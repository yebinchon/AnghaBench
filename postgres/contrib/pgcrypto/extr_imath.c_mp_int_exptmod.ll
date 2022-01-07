; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_exptmod.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_exptmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_UNDEF = common dso_local global i32 0, align 4
@MP_RANGE = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_exptmod(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %20, %17, %14, %4
  %24 = phi i1 [ false, %17 ], [ false, %14 ], [ false, %4 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @CMPZ(i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @MP_UNDEF, align 4
  store i32 %31, i32* %5, align 4
  br label %91

32:                                               ; preds = %23
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @CMPZ(i32* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @MP_RANGE, align 4
  store i32 %37, i32* %5, align 4
  br label %91

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @MP_USED(i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = call i32 @DECLARE_TEMP(i32 3)
  %42 = call i32* @TEMP(i32 0)
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 2, %43
  %45 = call i32 @GROW(i32* %42, i32 %44)
  %46 = call i32 @REQUIRE(i32 %45)
  %47 = call i32* @TEMP(i32 1)
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 2, %48
  %50 = call i32 @GROW(i32* %47, i32 %49)
  %51 = call i32 @REQUIRE(i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp eq i32* %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %38
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp eq i32* %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %38
  %60 = call i32* @TEMP(i32 2)
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 2, %61
  %63 = call i32 @GROW(i32* %60, i32 %62)
  %64 = call i32 @REQUIRE(i32 %63)
  %65 = call i32* @TEMP(i32 2)
  store i32* %65, i32** %11, align 8
  br label %68

66:                                               ; preds = %55
  %67 = load i32*, i32** %9, align 8
  store i32* %67, i32** %11, align 8
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @TEMP(i32 0)
  %72 = call i32 @mp_int_mod(i32* %69, i32* %70, i32* %71)
  %73 = call i32 @REQUIRE(i32 %72)
  %74 = call i32* @TEMP(i32 1)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @s_brmu(i32* %74, i32* %75)
  %77 = call i32 @REQUIRE(i32 %76)
  %78 = call i32* @TEMP(i32 0)
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32* @TEMP(i32 1)
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @s_embar(i32* %78, i32* %79, i32* %80, i32* %81, i32* %82)
  %84 = call i32 @REQUIRE(i32 %83)
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @mp_int_copy(i32* %85, i32* %86)
  %88 = call i32 @REQUIRE(i32 %87)
  %89 = call i32 (...) @CLEANUP_TEMP()
  %90 = load i32, i32* @MP_OK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %68, %36, %30
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CMPZ(i32*) #1

declare dso_local i32 @MP_USED(i32*) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @GROW(i32*, i32) #1

declare dso_local i32* @TEMP(i32) #1

declare dso_local i32 @mp_int_mod(i32*, i32*, i32*) #1

declare dso_local i32 @s_brmu(i32*, i32*) #1

declare dso_local i32 @s_embar(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mp_int_copy(i32*, i32*) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
