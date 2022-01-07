; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_oct.c_EC_POINT_set_compressed_coordinates.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_oct.c_EC_POINT_set_compressed_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}*, i32, i64 }

@EC_FLAGS_DEFAULT_OCT = common dso_local global i32 0, align 4
@EC_F_EC_POINT_SET_COMPRESSED_COORDINATES = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4
@EC_R_INCOMPATIBLE_OBJECTS = common dso_local global i32 0, align 4
@NID_X9_62_prime_field = common dso_local global i64 0, align 8
@EC_R_GF2M_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_POINT_set_compressed_coordinates(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32*)**
  %17 = load i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32*)** %16, align 8
  %18 = icmp eq i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32*)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EC_FLAGS_DEFAULT_OCT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @EC_F_EC_POINT_SET_COMPRESSED_COORDINATES, align 4
  %30 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %31 = call i32 @ECerr(i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %85

32:                                               ; preds = %19, %5
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = call i32 @ec_point_is_compat(i32* %33, %struct.TYPE_9__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EC_F_EC_POINT_SET_COMPRESSED_COORDINATES, align 4
  %39 = load i32, i32* @EC_R_INCOMPATIBLE_OBJECTS, align 4
  %40 = call i32 @ECerr(i32 %38, i32 %39)
  store i32 0, i32* %6, align 4
  br label %85

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EC_FLAGS_DEFAULT_OCT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NID_X9_62_prime_field, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @ec_GFp_simple_set_compressed_coordinates(%struct.TYPE_9__* %59, i32* %60, i32* %61, i32 %62, i32* %63)
  store i32 %64, i32* %6, align 4
  br label %85

65:                                               ; preds = %50
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @ec_GF2m_simple_set_compressed_coordinates(%struct.TYPE_9__* %66, i32* %67, i32* %68, i32 %69, i32* %70)
  store i32 %71, i32* %6, align 4
  br label %85

72:                                               ; preds = %41
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = bitcast {}** %76 to i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32*)**
  %78 = load i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32*)** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 %78(%struct.TYPE_9__* %79, i32* %80, i32* %81, i32 %82, i32* %83)
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %72, %65, %58, %37, %28
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @ec_point_is_compat(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ec_GFp_simple_set_compressed_coordinates(%struct.TYPE_9__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ec_GF2m_simple_set_compressed_coordinates(%struct.TYPE_9__*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
