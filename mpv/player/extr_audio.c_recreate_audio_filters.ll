; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_recreate_audio_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_recreate_audio_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__*, %struct.ao_chain* }
%struct.TYPE_2__ = type { i32 }
%struct.ao_chain = type { i32 }

@MPV_EVENT_AUDIO_RECONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Audio filter initialized failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*)* @recreate_audio_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recreate_audio_filters(%struct.MPContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.ao_chain*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 1
  %7 = load %struct.ao_chain*, %struct.ao_chain** %6, align 8
  store %struct.ao_chain* %7, %struct.ao_chain** %4, align 8
  %8 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %9 = call i32 @assert(%struct.ao_chain* %8)
  %10 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %11 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mp_output_chain_update_filters(i32 %12, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = call i32 @update_speed_filters(%struct.MPContext* %22)
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = load i32, i32* @MPV_EVENT_AUDIO_RECONFIG, align 4
  %26 = call i32 @mp_notify(%struct.MPContext* %24, i32 %25, i32* null)
  store i32 0, i32* %2, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %29 = call i32 @MP_ERR(%struct.MPContext* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @assert(%struct.ao_chain*) #1

declare dso_local i32 @mp_output_chain_update_filters(i32, i32) #1

declare dso_local i32 @update_speed_filters(%struct.MPContext*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
