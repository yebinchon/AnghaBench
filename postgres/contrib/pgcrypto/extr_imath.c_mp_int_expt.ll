; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_expt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_expt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_RANGE = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_expt(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @MP_RANGE, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = call i32 @DECLARE_TEMP(i32 1)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @TEMP(i32 0)
  %21 = call i32 @mp_int_copy(i32* %19, i32 %20)
  %22 = call i32 @REQUIRE(i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @mp_int_set_value(i32* %23, i32 1)
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @labs(i64 %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %46, %17
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @TEMP(i32 0)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @mp_int_mul(i32* %35, i32 %36, i32* %37)
  %39 = call i32 @REQUIRE(i32 %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %8, align 4
  %42 = lshr i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  %47 = call i32 @TEMP(i32 0)
  %48 = call i32 @TEMP(i32 0)
  %49 = call i32 @mp_int_sqr(i32 %47, i32 %48)
  %50 = call i32 @REQUIRE(i32 %49)
  br label %27

51:                                               ; preds = %45, %27
  %52 = call i32 (...) @CLEANUP_TEMP()
  %53 = load i32, i32* @MP_OK, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @mp_int_copy(i32*, i32) #1

declare dso_local i32 @TEMP(i32) #1

declare dso_local i32 @mp_int_set_value(i32*, i32) #1

declare dso_local i32 @labs(i64) #1

declare dso_local i32 @mp_int_mul(i32*, i32, i32*) #1

declare dso_local i32 @mp_int_sqr(i32, i32) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
