; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_EC_POINT_set_affine_coordinates.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_EC_POINT_set_affine_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}* }

@EC_F_EC_POINT_SET_AFFINE_COORDINATES = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4
@EC_R_INCOMPATIBLE_OBJECTS = common dso_local global i32 0, align 4
@EC_R_POINT_IS_NOT_ON_CURVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)**
  %17 = load i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)** %16, align 8
  %18 = icmp eq i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @EC_F_EC_POINT_SET_AFFINE_COORDINATES, align 4
  %21 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %22 = call i32 @ECerr(i32 %20, i32 %21)
  store i32 0, i32* %6, align 4
  br label %58

23:                                               ; preds = %5
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = call i32 @ec_point_is_compat(i32* %24, %struct.TYPE_8__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EC_F_EC_POINT_SET_AFFINE_COORDINATES, align 4
  %30 = load i32, i32* @EC_R_INCOMPATIBLE_OBJECTS, align 4
  %31 = call i32 @ECerr(i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %58

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)**
  %38 = load i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 %38(%struct.TYPE_8__* %39, i32* %40, i32* %41, i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %58

47:                                               ; preds = %32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @EC_POINT_is_on_curve(%struct.TYPE_8__* %48, i32* %49, i32* %50)
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @EC_F_EC_POINT_SET_AFFINE_COORDINATES, align 4
  %55 = load i32, i32* @EC_R_POINT_IS_NOT_ON_CURVE, align 4
  %56 = call i32 @ECerr(i32 %54, i32 %55)
  store i32 0, i32* %6, align 4
  br label %58

57:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %53, %46, %28, %19
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @ec_point_is_compat(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @EC_POINT_is_on_curve(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
