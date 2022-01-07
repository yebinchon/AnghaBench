; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_run_playloop.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_run_playloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32, i64, i32, i64, i32 }

@PT_QUIT = common dso_local global i64 0, align 8
@AT_END_OF_FILE = common dso_local global i64 0, align 8
@STATUS_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_playloop(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %3 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %4 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @encode_lavc_didfail(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @PT_QUIT, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 2
  store i64 %9, i64* %11, align 8
  br label %101

12:                                               ; preds = %1
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = call i32 @update_demuxer_properties(%struct.MPContext* %13)
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = call i32 @handle_cursor_autohide(%struct.MPContext* %15)
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = call i32 @handle_vo_events(%struct.MPContext* %17)
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = call i32 @handle_command_updates(%struct.MPContext* %19)
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %12
  %26 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @mp_filter_has_failed(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @AT_END_OF_FILE, align 8
  %33 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %34 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %25, %12
  %36 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %37 = call i32 @fill_audio_out_buffers(%struct.MPContext* %36)
  %38 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %39 = call i32 @write_video(%struct.MPContext* %38)
  %40 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %41 = call i32 @handle_delayed_audio_seek(%struct.MPContext* %40)
  %42 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %43 = call i32 @handle_playback_restart(%struct.MPContext* %42)
  %44 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %45 = call i32 @handle_playback_time(%struct.MPContext* %44)
  %46 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %47 = call i32 @handle_dummy_ticks(%struct.MPContext* %46)
  %48 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %49 = call i32 @update_osd_msg(%struct.MPContext* %48)
  %50 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %51 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @STATUS_EOF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %35
  %56 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %57 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %58 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @update_subtitles(%struct.MPContext* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %35
  %62 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %63 = call i32 @handle_eof(%struct.MPContext* %62)
  %64 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %65 = call i32 @handle_loop_file(%struct.MPContext* %64)
  %66 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %67 = call i32 @handle_keep_open(%struct.MPContext* %66)
  %68 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %69 = call i32 @handle_sstep(%struct.MPContext* %68)
  %70 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %71 = call i32 @update_core_idle_state(%struct.MPContext* %70)
  %72 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %73 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %101

77:                                               ; preds = %61
  %78 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %79 = call i32 @handle_osd_redraw(%struct.MPContext* %78)
  %80 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %81 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @mp_filter_run(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %87 = call i32 @mp_wakeup_core(%struct.MPContext* %86)
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %90 = call i32 @mp_wait_events(%struct.MPContext* %89)
  %91 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %92 = call i32 @handle_update_cache(%struct.MPContext* %91)
  %93 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %94 = call i32 @mp_process_input(%struct.MPContext* %93)
  %95 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %96 = call i32 @handle_chapter_change(%struct.MPContext* %95)
  %97 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %98 = call i32 @handle_force_window(%struct.MPContext* %97, i32 0)
  %99 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %100 = call i32 @execute_queued_seek(%struct.MPContext* %99)
  br label %101

101:                                              ; preds = %88, %76, %8
  ret void
}

declare dso_local i64 @encode_lavc_didfail(i32) #1

declare dso_local i32 @update_demuxer_properties(%struct.MPContext*) #1

declare dso_local i32 @handle_cursor_autohide(%struct.MPContext*) #1

declare dso_local i32 @handle_vo_events(%struct.MPContext*) #1

declare dso_local i32 @handle_command_updates(%struct.MPContext*) #1

declare dso_local i64 @mp_filter_has_failed(i64) #1

declare dso_local i32 @fill_audio_out_buffers(%struct.MPContext*) #1

declare dso_local i32 @write_video(%struct.MPContext*) #1

declare dso_local i32 @handle_delayed_audio_seek(%struct.MPContext*) #1

declare dso_local i32 @handle_playback_restart(%struct.MPContext*) #1

declare dso_local i32 @handle_playback_time(%struct.MPContext*) #1

declare dso_local i32 @handle_dummy_ticks(%struct.MPContext*) #1

declare dso_local i32 @update_osd_msg(%struct.MPContext*) #1

declare dso_local i32 @update_subtitles(%struct.MPContext*, i32) #1

declare dso_local i32 @handle_eof(%struct.MPContext*) #1

declare dso_local i32 @handle_loop_file(%struct.MPContext*) #1

declare dso_local i32 @handle_keep_open(%struct.MPContext*) #1

declare dso_local i32 @handle_sstep(%struct.MPContext*) #1

declare dso_local i32 @update_core_idle_state(%struct.MPContext*) #1

declare dso_local i32 @handle_osd_redraw(%struct.MPContext*) #1

declare dso_local i64 @mp_filter_run(i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @mp_wait_events(%struct.MPContext*) #1

declare dso_local i32 @handle_update_cache(%struct.MPContext*) #1

declare dso_local i32 @mp_process_input(%struct.MPContext*) #1

declare dso_local i32 @handle_chapter_change(%struct.MPContext*) #1

declare dso_local i32 @handle_force_window(%struct.MPContext*, i32) #1

declare dso_local i32 @execute_queued_seek(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
