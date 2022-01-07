; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_check.c_EC_GROUP_check.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_check.c_EC_GROUP_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@EC_F_EC_GROUP_CHECK = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_FLAGS_CUSTOM_CURVE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EC_R_DISCRIMINANT_IS_ZERO = common dso_local global i32 0, align 4
@EC_R_UNDEFINED_GENERATOR = common dso_local global i32 0, align 4
@EC_R_POINT_IS_NOT_ON_CURVE = common dso_local global i32 0, align 4
@EC_R_UNDEFINED_ORDER = common dso_local global i32 0, align 4
@EC_R_INVALID_GROUP_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_GROUP_check(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = icmp eq %struct.TYPE_12__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %19 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %20 = call i32 @ECerr(i32 %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %116

21:                                               ; preds = %12
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EC_FLAGS_CUSTOM_CURVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %116

31:                                               ; preds = %21
  %32 = load i32*, i32** %5, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = call i32* (...) @BN_CTX_new()
  store i32* %35, i32** %8, align 8
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %40 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %41 = call i32 @ECerr(i32 %39, i32 %40)
  br label %110

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @EC_GROUP_check_discriminant(%struct.TYPE_12__* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %50 = load i32, i32* @EC_R_DISCRIMINANT_IS_ZERO, align 4
  %51 = call i32 @ECerr(i32 %49, i32 %50)
  br label %110

52:                                               ; preds = %43
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %59 = load i32, i32* @EC_R_UNDEFINED_GENERATOR, align 4
  %60 = call i32 @ECerr(i32 %58, i32 %59)
  br label %110

61:                                               ; preds = %52
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @EC_POINT_is_on_curve(%struct.TYPE_12__* %62, i32* %65, i32* %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %71 = load i32, i32* @EC_R_POINT_IS_NOT_ON_CURVE, align 4
  %72 = call i32 @ECerr(i32 %70, i32 %71)
  br label %110

73:                                               ; preds = %61
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = call i32* @EC_POINT_new(%struct.TYPE_12__* %74)
  store i32* %75, i32** %9, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %110

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = call i32* @EC_GROUP_get0_order(%struct.TYPE_12__* %79)
  store i32* %80, i32** %7, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %110

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = call i64 @BN_is_zero(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %90 = load i32, i32* @EC_R_UNDEFINED_ORDER, align 4
  %91 = call i32 @ECerr(i32 %89, i32 %90)
  br label %110

92:                                               ; preds = %84
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @EC_POINT_mul(%struct.TYPE_12__* %93, i32* %94, i32* %95, i32* null, i32* null, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %110

100:                                              ; preds = %92
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @EC_POINT_is_at_infinity(%struct.TYPE_12__* %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %107 = load i32, i32* @EC_R_INVALID_GROUP_ORDER, align 4
  %108 = call i32 @ECerr(i32 %106, i32 %107)
  br label %110

109:                                              ; preds = %100
  store i32 1, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %105, %99, %88, %83, %77, %69, %57, %48, %38
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @BN_CTX_free(i32* %111)
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @EC_POINT_free(i32* %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %30, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @EC_GROUP_check_discriminant(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @EC_POINT_is_on_curve(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_12__*) #1

declare dso_local i32* @EC_GROUP_get0_order(%struct.TYPE_12__*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_mul(%struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_is_at_infinity(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
