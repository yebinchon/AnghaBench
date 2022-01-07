; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_audio_out_params.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_audio_out_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mp_aframe = type { i32 }
%struct.mp_chmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_audio_out_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_audio_out_params(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.m_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.mp_aframe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mp_chmap, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.m_property* %1, %struct.m_property** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %9, align 8
  store %struct.mp_aframe* null, %struct.mp_aframe** %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %4
  %22 = call %struct.mp_aframe* (...) @mp_aframe_create()
  store %struct.mp_aframe* %22, %struct.mp_aframe** %10, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ao_get_format(i64 %25, i32* %11, i32* %12, %struct.mp_chmap* %13)
  %27 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @mp_aframe_set_rate(%struct.mp_aframe* %27, i32 %28)
  %30 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @mp_aframe_set_format(%struct.mp_aframe* %30, i32 %31)
  %33 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %34 = call i32 @mp_aframe_set_chmap(%struct.mp_aframe* %33, %struct.mp_chmap* %13)
  br label %35

35:                                               ; preds = %21, %4
  %36 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @property_audiofmt(%struct.mp_aframe* %36, i32 %37, i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %41 = call i32 @talloc_free(%struct.mp_aframe* %40)
  %42 = load i32, i32* %14, align 4
  ret i32 %42
}

declare dso_local %struct.mp_aframe* @mp_aframe_create(...) #1

declare dso_local i32 @ao_get_format(i64, i32*, i32*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_aframe_set_rate(%struct.mp_aframe*, i32) #1

declare dso_local i32 @mp_aframe_set_format(%struct.mp_aframe*, i32) #1

declare dso_local i32 @mp_aframe_set_chmap(%struct.mp_aframe*, %struct.mp_chmap*) #1

declare dso_local i32 @property_audiofmt(%struct.mp_aframe*, i32, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_aframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
