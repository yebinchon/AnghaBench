; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_command_event.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_command_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.command_ctx* }
%struct.command_ctx = type { i32, i8*, i8* }

@MPV_EVENT_START_FILE = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global i8* null, align 8
@MPV_EVENT_IDLE = common dso_local global i32 0, align 4
@MPV_EVENT_END_FILE = common dso_local global i32 0, align 4
@MPV_EVENT_FILE_LOADED = common dso_local global i32 0, align 4
@OSD_BAR_SEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i32, i8*)* @command_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event(%struct.MPContext* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.command_ctx*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 0
  %10 = load %struct.command_ctx*, %struct.command_ctx** %9, align 8
  store %struct.command_ctx* %10, %struct.command_ctx** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MPV_EVENT_START_FILE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %16 = load %struct.command_ctx*, %struct.command_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %19 = load %struct.command_ctx*, %struct.command_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %14, %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MPV_EVENT_IDLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.command_ctx*, %struct.command_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MPV_EVENT_START_FILE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.command_ctx*, %struct.command_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MPV_EVENT_END_FILE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MPV_EVENT_FILE_LOADED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %35
  %44 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %45 = load i32, i32* @OSD_BAR_SEEK, align 4
  %46 = call i32 @set_osd_bar_chapters(%struct.MPContext* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  ret void
}

declare dso_local i32 @set_osd_bar_chapters(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
