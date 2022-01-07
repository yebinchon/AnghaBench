; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_add_muxer_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_add_muxer_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8*, i32 }
%struct.ffmpeg_muxer = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"muxer_settings\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\22%s\22 \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, %struct.ffmpeg_muxer*)* @add_muxer_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_muxer_params(%struct.dstr* %0, %struct.ffmpeg_muxer* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca %struct.ffmpeg_muxer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dstr, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store %struct.ffmpeg_muxer* %1, %struct.ffmpeg_muxer** %4, align 8
  %7 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %8 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @obs_output_get_settings(i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = bitcast %struct.dstr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @obs_data_get_string(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @dstr_copy(%struct.dstr* %6, i32 %13)
  %15 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %16 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @log_muxer_params(%struct.ffmpeg_muxer* %15, i8* %17)
  %19 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @obs_data_release(i32* %20)
  %22 = load %struct.dstr*, %struct.dstr** %3, align 8
  %23 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i8* [ %28, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %29 ]
  %32 = call i32 @dstr_catf(%struct.dstr* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = call i32 @dstr_free(%struct.dstr* %6)
  ret void
}

declare dso_local i32* @obs_output_get_settings(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i32) #1

declare dso_local i32 @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @log_muxer_params(%struct.ffmpeg_muxer*, i8*) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
