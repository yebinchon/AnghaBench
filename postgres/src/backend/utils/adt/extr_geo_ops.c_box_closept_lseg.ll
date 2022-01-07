; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_box_closept_lseg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_box_closept_lseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_10__*, %struct.TYPE_11__*, i32*)* @box_closept_lseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @box_closept_lseg(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @box_interpt_lseg(%struct.TYPE_10__* %13, %struct.TYPE_11__* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store double 0.000000e+00, double* %4, align 8
  br label %104

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = call i32 @statlseg_construct(i32* %12, %struct.TYPE_12__* %31, %struct.TYPE_10__* %10)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call double @lseg_closept_lseg(%struct.TYPE_10__* %33, i32* %12, i32* %34)
  store double %35, double* %8, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @statlseg_construct(i32* %12, %struct.TYPE_12__* %37, %struct.TYPE_10__* %10)
  %39 = load i32*, i32** %7, align 8
  %40 = call double @lseg_closept_lseg(%struct.TYPE_10__* %11, i32* %12, i32* %39)
  store double %40, double* %9, align 8
  %41 = load double, double* %9, align 8
  %42 = load double, double* %8, align 8
  %43 = call i64 @float8_lt(double %41, double %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %19
  %46 = load double, double* %9, align 8
  store double %46, double* %8, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = bitcast %struct.TYPE_10__* %50 to i8*
  %52 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 8, i1 false)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %19
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = call i32 @statlseg_construct(i32* %12, %struct.TYPE_12__* %66, %struct.TYPE_10__* %10)
  %68 = load i32*, i32** %7, align 8
  %69 = call double @lseg_closept_lseg(%struct.TYPE_10__* %11, i32* %12, i32* %68)
  store double %69, double* %9, align 8
  %70 = load double, double* %9, align 8
  %71 = load double, double* %8, align 8
  %72 = call i64 @float8_lt(double %70, double %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %54
  %75 = load double, double* %9, align 8
  store double %75, double* %8, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = bitcast %struct.TYPE_10__* %79 to i8*
  %81 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 8, i1 false)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %54
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = call i32 @statlseg_construct(i32* %12, %struct.TYPE_12__* %85, %struct.TYPE_10__* %10)
  %87 = load i32*, i32** %7, align 8
  %88 = call double @lseg_closept_lseg(%struct.TYPE_10__* %11, i32* %12, i32* %87)
  store double %88, double* %9, align 8
  %89 = load double, double* %9, align 8
  %90 = load double, double* %8, align 8
  %91 = call i64 @float8_lt(double %89, double %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %83
  %94 = load double, double* %9, align 8
  store double %94, double* %8, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = icmp ne %struct.TYPE_10__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = bitcast %struct.TYPE_10__* %98 to i8*
  %100 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 8, i1 false)
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %83
  %103 = load double, double* %8, align 8
  store double %103, double* %4, align 8
  br label %104

104:                                              ; preds = %102, %18
  %105 = load double, double* %4, align 8
  ret double %105
}

declare dso_local i64 @box_interpt_lseg(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @statlseg_construct(i32*, %struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local double @lseg_closept_lseg(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i64 @float8_lt(double, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
