; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_main.c_mp_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_main.c_mp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.MPContext*, i32, i32, i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_destroy(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %3 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %4 = call i32 @mp_shutdown_clients(%struct.MPContext* %3)
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 7
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @mp_uninit_ipc(i32* %7)
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 7
  store i32* null, i32** %10, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %12 = call i32 @uninit_audio_out(%struct.MPContext* %11)
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = call i32 @uninit_video_out(%struct.MPContext* %13)
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @encode_lavc_free(i32* %17)
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 6
  store i32* null, i32** %20, align 8
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = call i32 @command_uninit(%struct.MPContext* %21)
  %23 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %24 = call i32 @mp_clients_destroy(%struct.MPContext* %23)
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @osd_free(i32 %27)
  %29 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %30 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %31 = call i64 @cas_terminal_owner(%struct.MPContext* %29, %struct.MPContext* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = call i32 (...) @terminal_uninit()
  %35 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %36 = call i64 @cas_terminal_owner(%struct.MPContext* %35, %struct.MPContext* null)
  br label %37

37:                                               ; preds = %33, %1
  %38 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %39 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mp_input_uninit(i32 %40)
  %42 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %43 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uninit_libav(i32 %44)
  %46 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mp_msg_uninit(i32 %48)
  %50 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %51 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %58 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %57, i32 0, i32 1
  %59 = load %struct.MPContext*, %struct.MPContext** %58, align 8
  %60 = call i32 @talloc_free(%struct.MPContext* %59)
  %61 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %62 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %61, i32 0, i32 0
  %63 = call i32 @pthread_mutex_destroy(i32* %62)
  %64 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %65 = call i32 @talloc_free(%struct.MPContext* %64)
  ret void
}

declare dso_local i32 @mp_shutdown_clients(%struct.MPContext*) #1

declare dso_local i32 @mp_uninit_ipc(i32*) #1

declare dso_local i32 @uninit_audio_out(%struct.MPContext*) #1

declare dso_local i32 @uninit_video_out(%struct.MPContext*) #1

declare dso_local i32 @encode_lavc_free(i32*) #1

declare dso_local i32 @command_uninit(%struct.MPContext*) #1

declare dso_local i32 @mp_clients_destroy(%struct.MPContext*) #1

declare dso_local i32 @osd_free(i32) #1

declare dso_local i64 @cas_terminal_owner(%struct.MPContext*, %struct.MPContext*) #1

declare dso_local i32 @terminal_uninit(...) #1

declare dso_local i32 @mp_input_uninit(i32) #1

declare dso_local i32 @uninit_libav(i32) #1

declare dso_local i32 @mp_msg_uninit(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @talloc_free(%struct.MPContext*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
