; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_check_named_curve_lookup_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_check_named_curve_lookup_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@curves = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_named_curve_lookup_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_named_curve_lookup_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = call i32* (...) @BN_CTX_new()
  store i32* %17, i32** %10, align 8
  %18 = call i32 @TEST_ptr(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i32* @EC_GROUP_new_by_curve_name(i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = call i32 @TEST_ptr(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @EC_GROUP_get_ecparameters(i32* %26, i32* null)
  store i32* %27, i32** %8, align 8
  %28 = call i32 @TEST_ptr(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %1
  br label %77

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @EC_GROUP_free(i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @EC_GROUP_new_from_ecparameters(i32* %34)
  store i32* %35, i32** %6, align 8
  %36 = call i32 @TEST_ptr(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %77

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @EC_GROUP_check_named_curve(i32* %40, i32 0, i32* null)
  store i32 %41, i32* %5, align 4
  %42 = call i32 @TEST_int_gt(i32 %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %77

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = call i32* @EC_GROUP_new_by_curve_name(i32 %50)
  store i32* %51, i32** %7, align 8
  %52 = call i32 @TEST_ptr(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @EC_GROUP_get_ecparameters(i32* %55, i32* null)
  store i32* %56, i32** %9, align 8
  %57 = call i32 @TEST_ptr(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %49
  br label %77

60:                                               ; preds = %54
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @EC_GROUP_free(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32* @EC_GROUP_new_from_ecparameters(i32* %63)
  store i32* %64, i32** %7, align 8
  %65 = call i32 @TEST_ptr(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @EC_GROUP_cmp(i32* %68, i32* %69, i32* %70)
  %72 = call i32 @TEST_int_eq(i32 %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67, %60
  br label %77

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %45
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %74, %59, %44, %38, %30
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @EC_GROUP_free(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @EC_GROUP_free(i32* %80)
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @ECPARAMETERS_free(i32* %82)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @ECPARAMETERS_free(i32* %84)
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @BN_CTX_free(i32* %86)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32* @EC_GROUP_get_ecparameters(i32*, i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32* @EC_GROUP_new_from_ecparameters(i32*) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @EC_GROUP_check_named_curve(i32*, i32, i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @EC_GROUP_cmp(i32*, i32*, i32*) #1

declare dso_local i32 @ECPARAMETERS_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
