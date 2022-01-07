; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_add_dvd_streams.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_add_dvd_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_params = type { i32 }
%struct.TYPE_6__ = type { %struct.stream*, %struct.priv* }
%struct.stream = type { i32 }
%struct.priv = type { %struct.sh_stream**, i32 }
%struct.sh_stream = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i32 }
%struct.stream_dvd_info_req = type { i32*, i32 }
%struct.mp_cmat = type { i32 }

@STREAM_CTRL_GET_DVD_INFO = common dso_local global i32 0, align 4
@STREAM_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dvd_subtitle\00", align 1
@MP_CSP_PARAMS_DEFAULTS = common dso_local global %struct.mp_csp_params zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"palette: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%06x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @add_dvd_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dvd_streams(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct.stream_dvd_info_req, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_stream*, align 8
  %8 = alloca %struct.mp_csp_params, align 4
  %9 = alloca %struct.mp_cmat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i32], align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.priv*, %struct.priv** %16, align 8
  store %struct.priv* %17, %struct.priv** %3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.stream*, %struct.stream** %19, align 8
  store %struct.stream* %20, %struct.stream** %4, align 8
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %132

26:                                               ; preds = %1
  %27 = load %struct.stream*, %struct.stream** %4, align 8
  %28 = load i32, i32* @STREAM_CTRL_GET_DVD_INFO, align 4
  %29 = call i64 @stream_control(%struct.stream* %27, i32 %28, %struct.stream_dvd_info_req* %5)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %132

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %128, %31
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.stream_dvd_info_req, %struct.stream_dvd_info_req* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @MPMIN(i32 32, i32 %35)
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %131

38:                                               ; preds = %32
  %39 = load i32, i32* @STREAM_SUB, align 4
  %40 = call %struct.sh_stream* @demux_alloc_sh_stream(i32 %39)
  store %struct.sh_stream* %40, %struct.sh_stream** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 32
  %43 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %44 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %46 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %48, align 8
  %49 = load %struct.stream*, %struct.stream** %4, align 8
  %50 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %51 = call i32 @get_disc_lang(%struct.stream* %49, %struct.sh_stream* %50, i32 1)
  %52 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  %55 = load %struct.sh_stream**, %struct.sh_stream*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %55, i64 %57
  store %struct.sh_stream* %52, %struct.sh_stream** %58, align 8
  %59 = bitcast %struct.mp_csp_params* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 bitcast (%struct.mp_csp_params* @MP_CSP_PARAMS_DEFAULTS to i8*), i64 4, i1 false)
  %60 = call i32 @mp_get_csp_matrix(%struct.mp_csp_params* %8, %struct.mp_cmat* %9)
  %61 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %62 = call i8* @talloc_strdup(%struct.sh_stream* %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %64, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %108, %38
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 16
  br i1 %67, label %68, label %111

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.stream_dvd_info_req, %struct.stream_dvd_info_req* %5, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %76 = load i32, i32* %12, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 255
  store i32 %78, i32* %75, align 4
  %79 = getelementptr inbounds i32, i32* %75, i64 1
  %80 = load i32, i32* %12, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 255
  store i32 %82, i32* %79, align 4
  %83 = getelementptr inbounds i32, i32* %79, i64 1
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 255
  store i32 %85, i32* %83, align 4
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %88 = call i32 @mp_map_fixp_color(%struct.mp_cmat* %9, i32 8, i32* %86, i32 8, i32* %87)
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %91, %94
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %95, %97
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %68
  %102 = load i8*, i8** %10, align 8
  %103 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %101, %68
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  store i8* %107, i8** %10, align 8
  br label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %65

111:                                              ; preds = %65
  %112 = load i8*, i8** %10, align 8
  %113 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %113, i8** %10, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %116 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i8* %114, i8** %118, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %122 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %126 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %127 = call i32 @demux_add_sh_stream(%struct.TYPE_6__* %125, %struct.sh_stream* %126)
  br label %128

128:                                              ; preds = %111
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %32

131:                                              ; preds = %32
  br label %132

132:                                              ; preds = %25, %131, %26
  ret void
}

declare dso_local i64 @stream_control(%struct.stream*, i32, %struct.stream_dvd_info_req*) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local %struct.sh_stream* @demux_alloc_sh_stream(i32) #1

declare dso_local i32 @get_disc_lang(%struct.stream*, %struct.sh_stream*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_get_csp_matrix(%struct.mp_csp_params*, %struct.mp_cmat*) #1

declare dso_local i8* @talloc_strdup(%struct.sh_stream*, i8*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, ...) #1

declare dso_local i32 @mp_map_fixp_color(%struct.mp_cmat*, i32, i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @demux_add_sh_stream(%struct.TYPE_6__*, %struct.sh_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
