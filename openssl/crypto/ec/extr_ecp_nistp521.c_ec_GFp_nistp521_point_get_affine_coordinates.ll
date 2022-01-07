; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp521.c_ec_GFp_nistp521_point_get_affine_coordinates.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp521.c_ec_GFp_nistp521_point_get_affine_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@EC_F_EC_GFP_NISTP521_POINT_GET_AFFINE_COORDINATES = common dso_local global i32 0, align 4
@EC_R_POINT_AT_INFINITY = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_nistp521_point_get_affine_coordinates(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = call i64 @EC_POINT_is_at_infinity(i32* %19, %struct.TYPE_4__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @EC_F_EC_GFP_NISTP521_POINT_GET_AFFINE_COORDINATES, align 4
  %25 = load i32, i32* @EC_R_POINT_AT_INFINITY, align 4
  %26 = call i32 @ECerr(i32 %24, i32 %25)
  store i32 0, i32* %6, align 4
  br label %112

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BN_to_felem(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BN_to_felem(i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BN_to_felem(i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41, %34, %27
  store i32 0, i32* %6, align 4
  br label %112

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @felem_inv(i32 %50, i32 %51)
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @felem_square(i32 %53, i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @felem_reduce(i32 %56, i32 %57)
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @felem_mul(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @felem_reduce(i32 %63, i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @felem_contract(i32 %66, i32 %67)
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %49
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @felem_to_BN(i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @EC_F_EC_GFP_NISTP521_POINT_GET_AFFINE_COORDINATES, align 4
  %78 = load i32, i32* @ERR_R_BN_LIB, align 4
  %79 = call i32 @ECerr(i32 %77, i32 %78)
  store i32 0, i32* %6, align 4
  br label %112

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @felem_mul(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @felem_reduce(i32 %86, i32 %87)
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @felem_mul(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @felem_reduce(i32 %93, i32 %94)
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @felem_contract(i32 %96, i32 %97)
  %99 = load i32*, i32** %10, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %81
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @felem_to_BN(i32* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @EC_F_EC_GFP_NISTP521_POINT_GET_AFFINE_COORDINATES, align 4
  %108 = load i32, i32* @ERR_R_BN_LIB, align 4
  %109 = call i32 @ECerr(i32 %107, i32 %108)
  store i32 0, i32* %6, align 4
  br label %112

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %81
  store i32 1, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %106, %76, %48, %23
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i64 @EC_POINT_is_at_infinity(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_to_felem(i32, i32) #1

declare dso_local i32 @felem_inv(i32, i32) #1

declare dso_local i32 @felem_square(i32, i32) #1

declare dso_local i32 @felem_reduce(i32, i32) #1

declare dso_local i32 @felem_mul(i32, i32, i32) #1

declare dso_local i32 @felem_contract(i32, i32) #1

declare dso_local i32 @felem_to_BN(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
