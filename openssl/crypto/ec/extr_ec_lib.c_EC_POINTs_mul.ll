; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_EC_POINTs_mul.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_EC_POINTs_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }

@EC_F_EC_POINTS_MUL = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EC_R_INCOMPATIBLE_OBJECTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_POINTs_mul(%struct.TYPE_9__* %0, i32* %1, i32* %2, i64 %3, i32** %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = call i32* (...) @BN_CTX_secure_new()
  store i32* %22, i32** %18, align 8
  store i32* %22, i32** %15, align 8
  br label %23

23:                                               ; preds = %21, %7
  %24 = load i32*, i32** %15, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @EC_F_EC_POINTS_MUL, align 4
  %28 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %29 = call i32 @ECerr(i32 %27, i32 %28)
  store i32 0, i32* %8, align 4
  br label %106

30:                                               ; preds = %23
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_9__* %37, i32* %38)
  store i32 %39, i32* %8, align 4
  br label %106

40:                                               ; preds = %33, %30
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = call i32 @ec_point_is_compat(i32* %41, %struct.TYPE_9__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EC_F_EC_POINTS_MUL, align 4
  %47 = load i32, i32* @EC_R_INCOMPATIBLE_OBJECTS, align 4
  %48 = call i32 @ECerr(i32 %46, i32 %47)
  store i32 0, i32* %8, align 4
  br label %106

49:                                               ; preds = %40
  store i64 0, i64* %17, align 8
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32**, i32*** %13, align 8
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = call i32 @ec_point_is_compat(i32* %58, %struct.TYPE_9__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @EC_F_EC_POINTS_MUL, align 4
  %64 = load i32, i32* @EC_R_INCOMPATIBLE_OBJECTS, align 4
  %65 = call i32 @ECerr(i32 %63, i32 %64)
  store i32 0, i32* %8, align 4
  br label %106

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %17, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %17, align 8
  br label %50

70:                                               ; preds = %50
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = bitcast {}** %74 to i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)**
  %76 = load i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)** %75, align 8
  %77 = icmp ne i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = bitcast {}** %82 to i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)**
  %84 = load i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)** %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i32**, i32*** %13, align 8
  %90 = load i32**, i32*** %14, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = call i32 %84(%struct.TYPE_9__* %85, i32* %86, i32* %87, i64 %88, i32** %89, i32** %90, i32* %91)
  store i32 %92, i32* %16, align 4
  br label %102

93:                                               ; preds = %70
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i32**, i32*** %13, align 8
  %99 = load i32**, i32*** %14, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @ec_wNAF_mul(%struct.TYPE_9__* %94, i32* %95, i32* %96, i64 %97, i32** %98, i32** %99, i32* %100)
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %93, %78
  %103 = load i32*, i32** %18, align 8
  %104 = call i32 @BN_CTX_free(i32* %103)
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %102, %62, %45, %36, %26
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i32* @BN_CTX_secure_new(...) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ec_point_is_compat(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ec_wNAF_mul(%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
