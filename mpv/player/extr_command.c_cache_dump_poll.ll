; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cache_dump_poll.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cache_dump_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.command_ctx* }
%struct.command_ctx = type { %struct.mp_cmd_ctx* }
%struct.mp_cmd_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSGL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cache dumping stopped due to error.\00", align 1
@MSGL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cache dumping successfully ended.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @cache_dump_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_dump_poll(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.command_ctx*, align 8
  %4 = alloca %struct.mp_cmd_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 1
  %8 = load %struct.command_ctx*, %struct.command_ctx** %7, align 8
  store %struct.command_ctx* %8, %struct.command_ctx** %3, align 8
  %9 = load %struct.command_ctx*, %struct.command_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %9, i32 0, i32 0
  %11 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %10, align 8
  store %struct.mp_cmd_ctx* %11, %struct.mp_cmd_ctx** %4, align 8
  %12 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %13 = icmp ne %struct.mp_cmd_ctx* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @mp_cancel_test(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %29 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @demux_cache_dump_set(i32 %30, i32 0, i32 0, i32* null)
  %32 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @demux_cache_dump_get_status(i32 %34)
  %36 = icmp sle i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %27, %15
  %40 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @demux_cache_dump_get_status(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %51 = load i32, i32* @MSGL_ERR, align 4
  %52 = call i32 @mp_cmd_msg(%struct.mp_cmd_ctx* %50, i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %57 = load i32, i32* @MSGL_INFO, align 4
  %58 = call i32 @mp_cmd_msg(%struct.mp_cmd_ctx* %56, i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.command_ctx*, %struct.command_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %62, i32 0, i32 0
  store %struct.mp_cmd_ctx* null, %struct.mp_cmd_ctx** %63, align 8
  %64 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %65 = call i32 @mp_cmd_ctx_complete(%struct.mp_cmd_ctx* %64)
  br label %66

66:                                               ; preds = %14, %61, %39
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mp_cancel_test(i32) #1

declare dso_local i32 @demux_cache_dump_set(i32, i32, i32, i32*) #1

declare dso_local i32 @demux_cache_dump_get_status(i32) #1

declare dso_local i32 @mp_cmd_msg(%struct.mp_cmd_ctx*, i32, i8*) #1

declare dso_local i32 @mp_cmd_ctx_complete(%struct.mp_cmd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
