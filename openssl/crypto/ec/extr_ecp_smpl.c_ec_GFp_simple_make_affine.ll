; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_make_affine.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_make_affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@EC_F_EC_GFP_SIMPLE_MAKE_AFFINE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_make_affine(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_12__* %17, %struct.TYPE_11__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  store i32 1, i32* %4, align 4
  br label %78

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @BN_CTX_new_ex(i32 %28)
  store i32* %29, i32** %8, align 8
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %78

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @BN_CTX_start(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @BN_CTX_get(i32* %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32* @BN_CTX_get(i32* %39)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %72

44:                                               ; preds = %34
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_12__* %45, %struct.TYPE_11__* %46, i32* %47, i32* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %72

53:                                               ; preds = %44
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_12__* %54, %struct.TYPE_11__* %55, i32* %56, i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %72

62:                                               ; preds = %53
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @EC_F_EC_GFP_SIMPLE_MAKE_AFFINE, align 4
  %69 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %70 = call i32 @ECerr(i32 %68, i32 %69)
  br label %72

71:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %67, %61, %52, %43
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @BN_CTX_end(i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @BN_CTX_free(i32* %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %32, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
