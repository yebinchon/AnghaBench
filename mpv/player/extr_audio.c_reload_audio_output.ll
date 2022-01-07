; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_reload_audio_output.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_reload_audio_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.ao_chain*, i32 }
%struct.ao_chain = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mp_decoder_wrapper* }
%struct.mp_decoder_wrapper = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Error reinitializing audio.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reload_audio_output(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.ao_chain*, align 8
  %4 = alloca %struct.mp_decoder_wrapper*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ao_reset(i32 %13)
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = call i32 @uninit_audio_out(%struct.MPContext* %15)
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = call i32 @reinit_audio_filters(%struct.MPContext* %17)
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 0
  %21 = load %struct.ao_chain*, %struct.ao_chain** %20, align 8
  store %struct.ao_chain* %21, %struct.ao_chain** %3, align 8
  %22 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %23 = icmp ne %struct.ao_chain* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %10
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = call i32 @reset_audio_state(%struct.MPContext* %25)
  %27 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %28 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mp_output_chain_reset_harder(i32 %29)
  br label %31

31:                                               ; preds = %24, %10
  %32 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %33 = icmp ne %struct.ao_chain* %32, null
  br i1 %33, label %34, label %72

34:                                               ; preds = %31
  %35 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %36 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %72

39:                                               ; preds = %34
  %40 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %41 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %43, align 8
  store %struct.mp_decoder_wrapper* %44, %struct.mp_decoder_wrapper** %4, align 8
  %45 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %4, align 8
  %46 = icmp ne %struct.mp_decoder_wrapper* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %39
  %48 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %49 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %54 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %56 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %4, align 8
  %58 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %4, align 8
  %60 = call i32 @mp_decoder_wrapper_reinit(%struct.mp_decoder_wrapper* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %52
  %63 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %64 = call i32 @MP_ERR(%struct.MPContext* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %66 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %67 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = call i32 @error_on_track(%struct.MPContext* %65, %struct.TYPE_2__* %68)
  br label %70

70:                                               ; preds = %62, %52
  br label %71

71:                                               ; preds = %70, %47, %39
  br label %72

72:                                               ; preds = %71, %34, %31
  %73 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %74 = call i32 @mp_wakeup_core(%struct.MPContext* %73)
  br label %75

75:                                               ; preds = %72, %9
  ret void
}

declare dso_local i32 @ao_reset(i32) #1

declare dso_local i32 @uninit_audio_out(%struct.MPContext*) #1

declare dso_local i32 @reinit_audio_filters(%struct.MPContext*) #1

declare dso_local i32 @reset_audio_state(%struct.MPContext*) #1

declare dso_local i32 @mp_output_chain_reset_harder(i32) #1

declare dso_local i32 @mp_decoder_wrapper_reinit(%struct.mp_decoder_wrapper*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*) #1

declare dso_local i32 @error_on_track(%struct.MPContext*, %struct.TYPE_2__*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
