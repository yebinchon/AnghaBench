; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_sub.c_update_subtitle.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_sub.c_update_subtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, i32, %struct.track***, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mp_image_params }
%struct.mp_image_params = type { i64 }
%struct.track = type { %struct.TYPE_6__*, %struct.dec_sub* }
%struct.TYPE_6__ = type { i64 }
%struct.dec_sub = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@SD_CTRL_SET_VIDEO_PARAMS = common dso_local global i32 0, align 4
@STREAM_SUB = common dso_local global i64 0, align 8
@STATUS_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, double, %struct.track*)* @update_subtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_subtitle(%struct.MPContext* %0, double %1, %struct.track* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.track*, align 8
  %8 = alloca %struct.dec_sub*, align 8
  %9 = alloca %struct.mp_image_params, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store double %1, double* %6, align 8
  store %struct.track* %2, %struct.track** %7, align 8
  %10 = load %struct.track*, %struct.track** %7, align 8
  %11 = icmp ne %struct.track* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.track*, %struct.track** %7, align 8
  %14 = getelementptr inbounds %struct.track, %struct.track* %13, i32 0, i32 1
  %15 = load %struct.dec_sub*, %struct.dec_sub** %14, align 8
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi %struct.dec_sub* [ %15, %12 ], [ null, %16 ]
  store %struct.dec_sub* %18, %struct.dec_sub** %8, align 8
  %19 = load %struct.dec_sub*, %struct.dec_sub** %8, align 8
  %20 = icmp ne %struct.dec_sub* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load double, double* %6, align 8
  %23 = load double, double* @MP_NOPTS_VALUE, align 8
  %24 = fcmp oeq double %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 1, i32* %4, align 4
  br label %130

26:                                               ; preds = %21
  %27 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = bitcast %struct.mp_image_params* %9 to i8*
  %39 = bitcast %struct.mp_image_params* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load %struct.dec_sub*, %struct.dec_sub** %8, align 8
  %45 = load i32, i32* @SD_CTRL_SET_VIDEO_PARAMS, align 4
  %46 = call i32 @sub_control(%struct.dec_sub* %44, i32 %45, %struct.mp_image_params* %9)
  br label %47

47:                                               ; preds = %43, %31
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.track*, %struct.track** %7, align 8
  %50 = getelementptr inbounds %struct.track, %struct.track* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.dec_sub*, %struct.dec_sub** %8, align 8
  %57 = call i64 @sub_can_preload(%struct.dec_sub* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.track*, %struct.track** %7, align 8
  %61 = getelementptr inbounds %struct.track, %struct.track* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @demux_seek(%struct.TYPE_6__* %62, i32 0, i32 0)
  %64 = load %struct.dec_sub*, %struct.dec_sub** %8, align 8
  %65 = call i32 @sub_preload(%struct.dec_sub* %64)
  br label %66

66:                                               ; preds = %59, %55, %48
  %67 = load %struct.dec_sub*, %struct.dec_sub** %8, align 8
  %68 = load double, double* %6, align 8
  %69 = call i32 @sub_read_packets(%struct.dec_sub* %67, double %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %130

72:                                               ; preds = %66
  %73 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %74 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %73, i32 0, i32 3
  %75 = load %struct.track***, %struct.track**** %74, align 8
  %76 = getelementptr inbounds %struct.track**, %struct.track*** %75, i64 0
  %77 = load %struct.track**, %struct.track*** %76, align 8
  %78 = load i64, i64* @STREAM_SUB, align 8
  %79 = getelementptr inbounds %struct.track*, %struct.track** %77, i64 %78
  %80 = load %struct.track*, %struct.track** %79, align 8
  %81 = load %struct.track*, %struct.track** %7, align 8
  %82 = icmp eq %struct.track* %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %72
  %84 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %85 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %90 = load %struct.dec_sub*, %struct.dec_sub** %8, align 8
  %91 = load double, double* %6, align 8
  %92 = call i32 @sub_get_text(%struct.dec_sub* %90, double %91)
  %93 = call i32 @term_osd_set_subs(%struct.MPContext* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %83, %72
  %95 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %96 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %94
  %100 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %101 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @STATUS_EOF, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %99
  %106 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %107 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call double @osd_get_force_video_pts(i32 %108)
  %110 = load double, double* %6, align 8
  %111 = fcmp une double %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %105
  %113 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %114 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load double, double* %6, align 8
  %117 = call i32 @osd_set_force_video_pts(i32 %115, double %116)
  %118 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %119 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @osd_query_and_reset_want_redraw(i32 %120)
  %122 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %123 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @vo_redraw(i64 %124)
  %126 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %127 = call i32 @mp_set_timeout(%struct.MPContext* %126, double 1.000000e-01)
  br label %128

128:                                              ; preds = %112, %105
  br label %129

129:                                              ; preds = %128, %99, %94
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %71, %25
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sub_control(%struct.dec_sub*, i32, %struct.mp_image_params*) #2

declare dso_local i64 @sub_can_preload(%struct.dec_sub*) #2

declare dso_local i32 @demux_seek(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @sub_preload(%struct.dec_sub*) #2

declare dso_local i32 @sub_read_packets(%struct.dec_sub*, double) #2

declare dso_local i32 @term_osd_set_subs(%struct.MPContext*, i32) #2

declare dso_local i32 @sub_get_text(%struct.dec_sub*, double) #2

declare dso_local double @osd_get_force_video_pts(i32) #2

declare dso_local i32 @osd_set_force_video_pts(i32, double) #2

declare dso_local i32 @osd_query_and_reset_want_redraw(i32) #2

declare dso_local i32 @vo_redraw(i64) #2

declare dso_local i32 @mp_set_timeout(%struct.MPContext*, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
