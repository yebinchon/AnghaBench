; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_openal.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_openal.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32 }

@source = common dso_local global i32 0, align 4
@AL_BUFFER = common dso_local global i32 0, align 4
@buffers = common dso_local global i32 0, align 4
@ao_data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %6 = load %struct.ao*, %struct.ao** %2, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load i32, i32* @source, align 4
  %10 = call i32 @alSourceStop(i32 %9)
  %11 = load i32, i32* @source, align 4
  %12 = load i32, i32* @AL_BUFFER, align 4
  %13 = call i32 @alSourcei(i32 %11, i32 %12, i32 0)
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @buffers, align 4
  %18 = call i32 @alDeleteBuffers(i32 %16, i32 %17)
  %19 = call i32 @alDeleteSources(i32 1, i32* @source)
  %20 = call i32* (...) @alcGetCurrentContext()
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @alcGetContextsDevice(i32* %21)
  store i32* %22, i32** %5, align 8
  %23 = call i32 @alcMakeContextCurrent(i32* null)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @alcDestroyContext(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @alcCloseDevice(i32* %26)
  store i32* null, i32** @ao_data, align 8
  ret void
}

declare dso_local i32 @alSourceStop(i32) #1

declare dso_local i32 @alSourcei(i32, i32, i32) #1

declare dso_local i32 @alDeleteBuffers(i32, i32) #1

declare dso_local i32 @alDeleteSources(i32, i32*) #1

declare dso_local i32* @alcGetCurrentContext(...) #1

declare dso_local i32* @alcGetContextsDevice(i32*) #1

declare dso_local i32 @alcMakeContextCurrent(i32*) #1

declare dso_local i32 @alcDestroyContext(i32*) #1

declare dso_local i32 @alcCloseDevice(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
