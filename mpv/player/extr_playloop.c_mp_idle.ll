; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_mp_idle.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_mp_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_idle(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %3 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %4 = call i32 @handle_dummy_ticks(%struct.MPContext* %3)
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = call i32 @mp_wait_events(%struct.MPContext* %5)
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = call i32 @mp_process_input(%struct.MPContext* %7)
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = call i32 @handle_command_updates(%struct.MPContext* %9)
  %11 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %12 = call i32 @handle_update_cache(%struct.MPContext* %11)
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = call i32 @handle_cursor_autohide(%struct.MPContext* %13)
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = call i32 @handle_vo_events(%struct.MPContext* %15)
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = call i32 @update_osd_msg(%struct.MPContext* %17)
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = call i32 @handle_osd_redraw(%struct.MPContext* %19)
  ret void
}

declare dso_local i32 @handle_dummy_ticks(%struct.MPContext*) #1

declare dso_local i32 @mp_wait_events(%struct.MPContext*) #1

declare dso_local i32 @mp_process_input(%struct.MPContext*) #1

declare dso_local i32 @handle_command_updates(%struct.MPContext*) #1

declare dso_local i32 @handle_update_cache(%struct.MPContext*) #1

declare dso_local i32 @handle_cursor_autohide(%struct.MPContext*) #1

declare dso_local i32 @handle_vo_events(%struct.MPContext*) #1

declare dso_local i32 @update_osd_msg(%struct.MPContext*) #1

declare dso_local i32 @handle_osd_redraw(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
