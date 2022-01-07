; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_log.c_init_libav.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_log.c_init_libav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32* }

@log_lock = common dso_local global i32 0, align 4
@log_mpv_instance = common dso_local global %struct.mpv_global* null, align 8
@LIB_PREFIX = common dso_local global i8* null, align 8
@log_root = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@log_decaudio = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@log_decvideo = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"demuxer\00", align 1
@log_demuxer = common dso_local global i8* null, align 8
@mp_msg_av_log_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_libav(%struct.mpv_global* %0) #0 {
  %2 = alloca %struct.mpv_global*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %2, align 8
  %3 = call i32 @pthread_mutex_lock(i32* @log_lock)
  %4 = load %struct.mpv_global*, %struct.mpv_global** @log_mpv_instance, align 8
  %5 = icmp ne %struct.mpv_global* %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = load %struct.mpv_global*, %struct.mpv_global** %2, align 8
  store %struct.mpv_global* %7, %struct.mpv_global** @log_mpv_instance, align 8
  %8 = load %struct.mpv_global*, %struct.mpv_global** %2, align 8
  %9 = getelementptr inbounds %struct.mpv_global, %struct.mpv_global* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i8*, i8** @LIB_PREFIX, align 8
  %12 = call i8* @mp_log_new(i32* null, i32* %10, i8* %11)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** @log_root, align 8
  %14 = load i32*, i32** @log_root, align 8
  %15 = load i32*, i32** @log_root, align 8
  %16 = call i8* @mp_log_new(i32* %14, i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** @log_decaudio, align 8
  %17 = load i32*, i32** @log_root, align 8
  %18 = load i32*, i32** @log_root, align 8
  %19 = call i8* @mp_log_new(i32* %17, i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** @log_decvideo, align 8
  %20 = load i32*, i32** @log_root, align 8
  %21 = load i32*, i32** @log_root, align 8
  %22 = call i8* @mp_log_new(i32* %20, i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %22, i8** @log_demuxer, align 8
  %23 = load i32, i32* @mp_msg_av_log_callback, align 4
  %24 = call i32 @av_log_set_callback(i32 %23)
  br label %25

25:                                               ; preds = %6, %1
  %26 = call i32 @pthread_mutex_unlock(i32* @log_lock)
  %27 = call i32 (...) @avformat_network_init()
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i8* @mp_log_new(i32*, i32*, i8*) #1

declare dso_local i32 @av_log_set_callback(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @avformat_network_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
