; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_export_replaygain.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_export_replaygain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_stream = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.replaygain_data* }
%struct.replaygain_data = type { float, float, float, float }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { float, double, float, double }

@AV_PKT_DATA_REPLAYGAIN = common dso_local global i64 0, align 8
@INT32_MIN = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sh_stream*, %struct.TYPE_7__*)* @export_replaygain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_replaygain(i32* %0, %struct.sh_stream* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sh_stream*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.replaygain_data*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sh_stream* %1, %struct.sh_stream** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %111, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %114

17:                                               ; preds = %11
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %22
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_PKT_DATA_REPLAYGAIN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %111

30:                                               ; preds = %17
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %8, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %37 = call %struct.replaygain_data* @talloc_ptrtype(i32* %35, %struct.replaygain_data* %36)
  store %struct.replaygain_data* %37, %struct.replaygain_data** %9, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load float, float* %39, align 8
  %41 = load float, float* @INT32_MIN, align 4
  %42 = fcmp une float %40, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %30
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = fcmp une double %46, 0.000000e+00
  br i1 %47, label %48, label %98

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 8
  %52 = fdiv float %51, 1.000000e+05
  %53 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %54 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %53, i32 0, i32 0
  store float %52, float* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = fdiv double %57, 1.000000e+05
  %59 = fptrunc double %58 to float
  %60 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %61 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %60, i32 0, i32 1
  store float %59, float* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load float, float* %63, align 8
  %65 = load float, float* @INT32_MIN, align 4
  %66 = fcmp une float %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %48
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load double, double* %69, align 8
  %71 = fcmp une double %70, 0.000000e+00
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load float, float* %74, align 8
  %76 = fdiv float %75, 1.000000e+05
  %77 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %78 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %77, i32 0, i32 2
  store float %76, float* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load double, double* %80, align 8
  %82 = fdiv double %81, 1.000000e+05
  %83 = fptrunc double %82 to float
  %84 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %85 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %84, i32 0, i32 3
  store float %83, float* %85, align 4
  br label %97

86:                                               ; preds = %67, %48
  %87 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %88 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %87, i32 0, i32 0
  %89 = load float, float* %88, align 4
  %90 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %91 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %90, i32 0, i32 2
  store float %89, float* %91, align 4
  %92 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %93 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %96 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %95, i32 0, i32 3
  store float %94, float* %96, align 4
  br label %97

97:                                               ; preds = %86, %72
  br label %98

98:                                               ; preds = %97, %43, %30
  %99 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %100 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.replaygain_data*, %struct.replaygain_data** %9, align 8
  %107 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %108 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store %struct.replaygain_data* %106, %struct.replaygain_data** %110, align 8
  br label %111

111:                                              ; preds = %98, %29
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %11

114:                                              ; preds = %11
  ret void
}

declare dso_local %struct.replaygain_data* @talloc_ptrtype(i32*, %struct.replaygain_data*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
