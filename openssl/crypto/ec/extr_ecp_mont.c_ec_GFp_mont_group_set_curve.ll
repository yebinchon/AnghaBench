; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_mont.c_ec_GFp_mont_group_set_curve.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_mont.c_ec_GFp_mont_group_set_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }

@EC_F_EC_GFP_MONT_GROUP_SET_CURVE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_mont_group_set_curve(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @BN_MONT_CTX_free(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @BN_free(i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @BN_CTX_new_ex(i32 %33)
  store i32* %34, i32** %12, align 8
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %104

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %5
  %40 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %96

44:                                               ; preds = %39
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @BN_MONT_CTX_set(i32* %45, i32* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EC_F_EC_GFP_MONT_GROUP_SET_CURVE, align 4
  %52 = load i32, i32* @ERR_R_BN_LIB, align 4
  %53 = call i32 @ECerr(i32 %51, i32 %52)
  br label %96

54:                                               ; preds = %44
  %55 = call i32* (...) @BN_new()
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %96

59:                                               ; preds = %54
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 (...) @BN_value_one()
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @BN_to_montgomery(i32* %60, i32 %61, i32* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %96

67:                                               ; preds = %59
  %68 = load i32*, i32** %13, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  store i32* null, i32** %13, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  store i32* null, i32** %14, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_4__* %74, i32* %75, i32* %76, i32* %77, i32* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %67
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @BN_MONT_CTX_free(i32* %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @BN_free(i32* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %82, %67
  br label %96

96:                                               ; preds = %95, %66, %58, %50, %43
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @BN_free(i32* %97)
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @BN_CTX_free(i32* %99)
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @BN_MONT_CTX_free(i32* %101)
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %96, %37
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32* @BN_MONT_CTX_new(...) #1

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_to_montgomery(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_4__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
