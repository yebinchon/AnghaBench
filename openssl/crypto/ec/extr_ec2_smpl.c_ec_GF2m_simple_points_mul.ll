; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_points_mul.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_points_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@EC_F_EC_GF2M_SIMPLE_POINTS_MUL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i64, i32**, i32**, i32*)* @ec_GF2m_simple_points_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_GF2m_simple_points_mul(%struct.TYPE_7__* %0, i32* %1, i32* %2, i64 %3, i32** %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ugt i64 %18, 1
  br i1 %19, label %32, label %20

20:                                               ; preds = %7
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @BN_is_zero(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @BN_is_zero(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26, %20, %7
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i32**, i32*** %13, align 8
  %38 = load i32**, i32*** %14, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @ec_wNAF_mul(%struct.TYPE_7__* %33, i32* %34, i32* %35, i64 %36, i32** %37, i32** %38, i32* %39)
  store i32 %40, i32* %8, align 4
  br label %111

41:                                               ; preds = %26
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i64, i64* %12, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @ec_scalar_mul_ladder(%struct.TYPE_7__* %48, i32* %49, i32* %50, i32* null, i32* %51)
  store i32 %52, i32* %8, align 4
  br label %111

53:                                               ; preds = %44, %41
  %54 = load i32*, i32** %11, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i64, i64* %12, align 8
  %58 = icmp eq i64 %57, 1
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32**, i32*** %14, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32**, i32*** %13, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @ec_scalar_mul_ladder(%struct.TYPE_7__* %60, i32* %61, i32* %64, i32* %67, i32* %68)
  store i32 %69, i32* %8, align 4
  br label %111

70:                                               ; preds = %56, %53
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = call i32* @EC_POINT_new(%struct.TYPE_7__* %71)
  store i32* %72, i32** %17, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINTS_MUL, align 4
  %76 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %77 = call i32 @ECerr(i32 %75, i32 %76)
  store i32 0, i32* %8, align 4
  br label %111

78:                                               ; preds = %70
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @ec_scalar_mul_ladder(%struct.TYPE_7__* %79, i32* %80, i32* %81, i32* null, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32**, i32*** %14, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32**, i32*** %13, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @ec_scalar_mul_ladder(%struct.TYPE_7__* %86, i32* %87, i32* %90, i32* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %85
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @EC_POINT_add(%struct.TYPE_7__* %98, i32* %99, i32* %100, i32* %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97, %85, %78
  br label %107

106:                                              ; preds = %97
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %105
  %108 = load i32*, i32** %17, align 8
  %109 = call i32 @EC_POINT_free(i32* %108)
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %107, %74, %59, %47, %32
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i64 @BN_is_zero(i32) #1

declare dso_local i32 @ec_wNAF_mul(%struct.TYPE_7__*, i32*, i32*, i64, i32**, i32**, i32*) #1

declare dso_local i32 @ec_scalar_mul_ladder(%struct.TYPE_7__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_7__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_POINT_add(%struct.TYPE_7__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
