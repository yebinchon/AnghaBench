; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_wait_audio.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_wait_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32*)* @wait_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_audio(%struct.ao* %0, i32* %1) #0 {
  %3 = alloca %struct.ao*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ao*, %struct.ao** %3, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @pthread_mutex_unlock(i32* %9)
  %11 = load %struct.priv*, %struct.priv** %5, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  br label %14

14:                                               ; preds = %20, %2
  %15 = load %struct.priv*, %struct.priv** %5, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.priv*, %struct.priv** %5, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 2
  %23 = load %struct.priv*, %struct.priv** %5, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = call i32 @pthread_cond_wait(i32* %22, i32* %24)
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.priv*, %struct.priv** %5, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.priv*, %struct.priv** %5, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @pthread_mutex_lock(i32* %32)
  ret i32 0
}

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
