; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_add_streams.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_add_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i32, %struct.sh_stream**, i32 }
%struct.sh_stream = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.mp_image_params = type { i32, i32, i32, i32 }

@STREAM_SUB = common dso_local global i64 0, align 8
@STREAM_VIDEO = common dso_local global i64 0, align 8
@STREAM_CTRL_GET_ASPECT_RATIO = common dso_local global i32 0, align 4
@STREAM_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @add_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_streams(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_stream*, align 8
  %6 = alloca %struct.sh_stream*, align 8
  %7 = alloca %struct.sh_stream*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.mp_image_params, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %3, align 8
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %167, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @demux_get_num_stream(i32 %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %170

23:                                               ; preds = %16
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.sh_stream* @demux_get_stream(i32 %26, i32 %27)
  store %struct.sh_stream* %28, %struct.sh_stream** %5, align 8
  %29 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %30 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STREAM_SUB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %23
  store %struct.sh_stream* null, %struct.sh_stream** %6, align 8
  %35 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %36 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 32
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %41 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %42, 63
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.priv*, %struct.priv** %3, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 3
  %47 = load %struct.sh_stream**, %struct.sh_stream*** %46, align 8
  %48 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %49 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %47, i64 %52
  %54 = load %struct.sh_stream*, %struct.sh_stream** %53, align 8
  store %struct.sh_stream* %54, %struct.sh_stream** %6, align 8
  br label %55

55:                                               ; preds = %44, %39, %34
  %56 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %57 = icmp ne %struct.sh_stream* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.priv*, %struct.priv** %3, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.priv*, %struct.priv** %3, align 8
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.priv*, %struct.priv** %3, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %74 = call i32 @MP_TARRAY_APPEND(%struct.priv* %66, i32 %69, i32 %72, %struct.sh_stream* %73)
  br label %167

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75, %23
  %77 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %78 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call %struct.sh_stream* @demux_alloc_sh_stream(i64 %79)
  store %struct.sh_stream* %80, %struct.sh_stream** %7, align 8
  %81 = load %struct.priv*, %struct.priv** %3, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.priv*, %struct.priv** %3, align 8
  %89 = load %struct.priv*, %struct.priv** %3, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.priv*, %struct.priv** %3, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %96 = call i32 @MP_TARRAY_APPEND(%struct.priv* %88, i32 %91, i32 %94, %struct.sh_stream* %95)
  %97 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %98 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %101 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = bitcast %struct.TYPE_6__* %99 to i8*
  %104 = bitcast %struct.TYPE_6__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 16, i1 false)
  %105 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %106 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %109 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %111 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @STREAM_VIDEO, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %155

115:                                              ; preds = %76
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @STREAM_CTRL_GET_ASPECT_RATIO, align 4
  %120 = call i64 @stream_control(i32 %118, i32 %119, double* %8)
  %121 = load i64, i64* @STREAM_OK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %154

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %9, i32 0, i32 0
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %9, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %9, i32 0, i32 2
  %127 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %128 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %127, i32 0, i32 2
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %126, align 4
  %132 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %9, i32 0, i32 3
  %133 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %134 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %133, i32 0, i32 2
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %132, align 4
  %138 = load double, double* %8, align 8
  %139 = fmul double 1.728000e+03, %138
  %140 = fptosi double %139 to i32
  %141 = call i32 @mp_image_params_set_dsize(%struct.mp_image_params* %9, i32 %140, i32 1728)
  %142 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %9, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %145 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %144, i32 0, i32 2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 4
  %148 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %9, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %151 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 4
  br label %154

154:                                              ; preds = %123, %115
  br label %155

155:                                              ; preds = %154, %76
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %160 = load %struct.priv*, %struct.priv** %3, align 8
  %161 = getelementptr inbounds %struct.priv, %struct.priv* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @get_disc_lang(i32 %158, %struct.sh_stream* %159, i32 %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %166 = call i32 @demux_add_sh_stream(%struct.TYPE_7__* %164, %struct.sh_stream* %165)
  br label %167

167:                                              ; preds = %155, %58
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %4, align 4
  br label %16

170:                                              ; preds = %16
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = call i32 @reselect_streams(%struct.TYPE_7__* %171)
  ret void
}

declare dso_local i32 @demux_get_num_stream(i32) #1

declare dso_local %struct.sh_stream* @demux_get_stream(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.priv*, i32, i32, %struct.sh_stream*) #1

declare dso_local %struct.sh_stream* @demux_alloc_sh_stream(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @stream_control(i32, i32, double*) #1

declare dso_local i32 @mp_image_params_set_dsize(%struct.mp_image_params*, i32, i32) #1

declare dso_local i32 @get_disc_lang(i32, %struct.sh_stream*, i32) #1

declare dso_local i32 @demux_add_sh_stream(%struct.TYPE_7__*, %struct.sh_stream*) #1

declare dso_local i32 @reselect_streams(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
