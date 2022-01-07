; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_reinit_from_options.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_reinit_from_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, %struct.gl_video_opts, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.gl_video_opts = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"video-sync\00", align 1
@m_option_type_choice = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"Interpolation now requires enabling display-sync mode.\0AE.g.: --video-sync=display-resample\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*)* @reinit_from_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinit_from_options(%struct.gl_video* %0) #0 {
  %2 = alloca %struct.gl_video*, align 8
  %3 = alloca i32, align 4
  store %struct.gl_video* %0, %struct.gl_video** %2, align 8
  %4 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %5 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %4, i32 0, i32 8
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @gl_lcms_has_profile(i32 %6)
  %8 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %9 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 4
  %10 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %11 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %10, i32 0, i32 1
  %12 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %13 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %12, i32 0, i32 7
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.gl_video_opts*
  %18 = bitcast %struct.gl_video_opts* %11 to i8*
  %19 = bitcast %struct.gl_video_opts* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %21 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %26 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %30 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %33 = call i32 @check_gl_features(%struct.gl_video* %32)
  %34 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %35 = call i32 @uninit_rendering(%struct.gl_video* %34)
  %36 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %37 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %40 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gl_sc_set_cache_dir(i32 %38, i32 %42)
  %44 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %45 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %49 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %53 = call i32 @gl_video_setup_hooks(%struct.gl_video* %52)
  %54 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %55 = call i32 @reinit_osd(%struct.gl_video* %54)
  %56 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %57 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mp_read_option_raw(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @m_option_type_choice, i32* %3)
  %60 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %61 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %31
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %70 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %75 = call i32 @MP_WARN(%struct.gl_video* %74, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %77 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %68, %65, %31
  ret void
}

declare dso_local i32 @gl_lcms_has_profile(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @check_gl_features(%struct.gl_video*) #1

declare dso_local i32 @uninit_rendering(%struct.gl_video*) #1

declare dso_local i32 @gl_sc_set_cache_dir(i32, i32) #1

declare dso_local i32 @gl_video_setup_hooks(%struct.gl_video*) #1

declare dso_local i32 @reinit_osd(%struct.gl_video*) #1

declare dso_local i32 @mp_read_option_raw(i32, i8*, i32*, i32*) #1

declare dso_local i32 @MP_WARN(%struct.gl_video*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
