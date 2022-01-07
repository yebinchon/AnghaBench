; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ecstresstest.c_test_curve.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ecstresstest.c_test_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@num_repeats = common dso_local global i32 0, align 4
@print_mode = common dso_local global i64 0, align 8
@bio_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@kP256DefaultResult = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_curve() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @NID_X9_62_prime256v1, align 4
  %8 = call i32* @EC_GROUP_new_by_curve_name(i32 %7)
  store i32* %8, i32** %2, align 8
  %9 = call i32 @TEST_ptr(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @EC_GROUP_get0_generator(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @EC_POINT_dup(i32 %13, i32* %14)
  store i32* %15, i32** %3, align 8
  %16 = call i32 @TEST_ptr(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32*, i32** %2, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @num_repeats, align 4
  %22 = call i32* @walk_curve(i32* %19, i32* %20, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = call i32 @TEST_ptr(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %11, %0
  store i32 0, i32* %1, align 4
  br label %62

26:                                               ; preds = %18
  %27 = load i64, i64* @print_mode, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @bio_out, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @BN_print(i32 %30, i32* %31)
  %33 = load i32, i32* @bio_out, align 4
  %34 = call i32 @BIO_printf(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %51

35:                                               ; preds = %26
  %36 = load i32, i32* @kP256DefaultResult, align 4
  %37 = call i32 @BN_hex2bn(i32** %5, i32 %36)
  %38 = call i32 @TEST_true(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @TEST_ptr(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @TEST_BN_eq(i32* %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %40, %35
  br label %52

50:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @EC_GROUP_free(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @EC_POINT_free(i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @BN_free(i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @BN_free(i32* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %52, %25
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32* @EC_POINT_dup(i32, i32*) #1

declare dso_local i32 @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32* @walk_curve(i32*, i32*, i32) #1

declare dso_local i32 @BN_print(i32, i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_hex2bn(i32**, i32) #1

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
