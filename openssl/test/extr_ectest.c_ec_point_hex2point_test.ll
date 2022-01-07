; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_ec_point_hex2point_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_ec_point_hex2point_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@curves = common dso_local global %struct.TYPE_2__* null, align 8
@POINT_CONVERSION_COMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_HYBRID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ec_point_hex2point_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_point_hex2point_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = call i32* (...) @BN_CTX_new()
  store i32* %15, i32** %8, align 8
  %16 = call i32 @TEST_ptr(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32* @EC_GROUP_new_by_curve_name(i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = call i32 @TEST_ptr(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @EC_GROUP_get0_generator(i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = call i32 @TEST_ptr(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @EC_POINT_dup(i32* %29, i32* %30)
  store i32* %31, i32** %7, align 8
  %32 = call i32 @TEST_ptr(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28, %23, %18, %1
  br label %82

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @ec_point_hex2point_test_helper(i32* %36, i32* %37, i32 %38, i32* %39)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %35
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ec_point_hex2point_test_helper(i32* %44, i32* null, i32 %45, i32* %46)
  %48 = call i32 @TEST_true(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %43
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @ec_point_hex2point_test_helper(i32* %51, i32* %52, i32 %53, i32* %54)
  %56 = call i32 @TEST_true(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @ec_point_hex2point_test_helper(i32* %59, i32* null, i32 %60, i32* %61)
  %63 = call i32 @TEST_true(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @ec_point_hex2point_test_helper(i32* %66, i32* %67, i32 %68, i32* %69)
  %71 = call i32 @TEST_true(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @ec_point_hex2point_test_helper(i32* %74, i32* null, i32 %75, i32* %76)
  %78 = call i32 @TEST_true(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73, %65, %58, %50, %43, %35
  br label %82

81:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %80, %34
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @EC_POINT_free(i32* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @EC_GROUP_free(i32* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @BN_CTX_free(i32* %87)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32* @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32* @EC_POINT_dup(i32*, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ec_point_hex2point_test_helper(i32*, i32*, i32, i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
