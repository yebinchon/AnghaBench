; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_opensles.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_opensles.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32*, i32, i32*, i32*, i32* }

@player = common dso_local global i32 0, align 4
@output_mix = common dso_local global i32 0, align 4
@sl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %4 = load %struct.ao*, %struct.ao** %2, align 8
  %5 = getelementptr inbounds %struct.ao, %struct.ao* %4, i32 0, i32 0
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load i32, i32* @player, align 4
  %8 = call i32 @DESTROY(i32 %7)
  %9 = load i32, i32* @output_mix, align 4
  %10 = call i32 @DESTROY(i32 %9)
  %11 = load i32, i32* @sl, align 4
  %12 = call i32 @DESTROY(i32 %11)
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  %21 = call i32 @pthread_mutex_destroy(i32* %20)
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local i32 @DESTROY(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
