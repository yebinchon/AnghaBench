; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_EC_KEY_set_public_key_affine_coordinates.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_EC_KEY_set_public_key_affine_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_COORDINATES_OUT_OF_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_KEY_set_public_key_affine_coordinates(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %20, %15, %3
  %27 = load i32, i32* @EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES, align 4
  %28 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %29 = call i32 @ECerr(i32 %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %112

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @BN_CTX_new_ex(i32 %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %112

38:                                               ; preds = %30
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @BN_CTX_start(i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32* @EC_POINT_new(i32* %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %104

48:                                               ; preds = %38
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @BN_CTX_get(i32* %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @BN_CTX_get(i32* %51)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %104

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @EC_POINT_set_affine_coordinates(i32* %59, i32* %60, i32* %61, i32* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %104

67:                                               ; preds = %56
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @EC_POINT_get_affine_coordinates(i32* %70, i32* %71, i32* %72, i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  br label %104

78:                                               ; preds = %67
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @BN_cmp(i32* %79, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i64 @BN_cmp(i32* %84, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES, align 4
  %90 = load i32, i32* @EC_R_COORDINATES_OUT_OF_RANGE, align 4
  %91 = call i32 @ECerr(i32 %89, i32 %90)
  br label %104

92:                                               ; preds = %83
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @EC_KEY_set_public_key(%struct.TYPE_5__* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %104

98:                                               ; preds = %92
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = call i64 @EC_KEY_check_key(%struct.TYPE_5__* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %104

103:                                              ; preds = %98
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %103, %102, %97, %88, %77, %66, %55, %47
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @BN_CTX_end(i32* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @BN_CTX_free(i32* %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @EC_POINT_free(i32* %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %104, %37, %26
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @EC_KEY_set_public_key(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @EC_KEY_check_key(%struct.TYPE_5__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
