; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_run_dump_cmd.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_run_dump_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.MPContext* }
%struct.MPContext = type { i32, %struct.command_ctx* }
%struct.command_ctx = type { %struct.mp_cmd_ctx* }

@MSGL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"No demuxer open.\00", align 1
@MSGL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cache dumping started.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cache dumping stopped.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_cmd_ctx*, double, double, i8*)* @run_dump_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_dump_cmd(%struct.mp_cmd_ctx* %0, double %1, double %2, i8* %3) #0 {
  %5 = alloca %struct.mp_cmd_ctx*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.MPContext*, align 8
  %10 = alloca %struct.command_ctx*, align 8
  store %struct.mp_cmd_ctx* %0, %struct.mp_cmd_ctx** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %11, i32 0, i32 1
  %13 = load %struct.MPContext*, %struct.MPContext** %12, align 8
  store %struct.MPContext* %13, %struct.MPContext** %9, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 1
  %16 = load %struct.command_ctx*, %struct.command_ctx** %15, align 8
  store %struct.command_ctx* %16, %struct.command_ctx** %10, align 8
  %17 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %18 = call i32 @mp_abort_cache_dumping(%struct.MPContext* %17)
  %19 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %4
  %24 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %25 = load i32, i32* @MSGL_ERR, align 4
  %26 = call i32 @mp_cmd_msg(%struct.mp_cmd_ctx* %24, i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %30 = call i32 @mp_cmd_ctx_complete(%struct.mp_cmd_ctx* %29)
  br label %55

31:                                               ; preds = %4
  %32 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %33 = load i32, i32* @MSGL_INFO, align 4
  %34 = call i32 @mp_cmd_msg(%struct.mp_cmd_ctx* %32, i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load double, double* %6, align 8
  %39 = load double, double* %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @demux_cache_dump_set(i32 %37, double %38, double %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  %44 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %45 = load i32, i32* @MSGL_INFO, align 4
  %46 = call i32 @mp_cmd_msg(%struct.mp_cmd_ctx* %44, i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %48 = call i32 @mp_cmd_ctx_complete(%struct.mp_cmd_ctx* %47)
  br label %55

49:                                               ; preds = %31
  %50 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %51 = load %struct.command_ctx*, %struct.command_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %51, i32 0, i32 0
  store %struct.mp_cmd_ctx* %50, %struct.mp_cmd_ctx** %52, align 8
  %53 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %54 = call i32 @cache_dump_poll(%struct.MPContext* %53)
  br label %55

55:                                               ; preds = %49, %43, %23
  ret void
}

declare dso_local i32 @mp_abort_cache_dumping(%struct.MPContext*) #1

declare dso_local i32 @mp_cmd_msg(%struct.mp_cmd_ctx*, i32, i8*) #1

declare dso_local i32 @mp_cmd_ctx_complete(%struct.mp_cmd_ctx*) #1

declare dso_local i32 @demux_cache_dump_set(i32, double, double, i8*) #1

declare dso_local i32 @cache_dump_poll(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
