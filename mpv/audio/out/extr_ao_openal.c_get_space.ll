; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_openal.c_get_space.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_openal.c_get_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32 }

@source = common dso_local global i32 0, align 4
@AL_BUFFERS_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @get_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_space(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %6 = load %struct.ao*, %struct.ao** %3, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.ao*, %struct.ao** %3, align 8
  %10 = call i32 @unqueue_buffers(%struct.ao* %9)
  %11 = load i32, i32* @source, align 4
  %12 = load i32, i32* @AL_BUFFERS_QUEUED, align 4
  %13 = call i32 @alGetSourcei(i32 %11, i32 %12, i32* %5)
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.priv*, %struct.priv** %4, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @unqueue_buffers(%struct.ao*) #1

declare dso_local i32 @alGetSourcei(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
