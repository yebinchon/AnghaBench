; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_push.c_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_push.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.TYPE_2__*, %struct.ao_push_state* }
%struct.TYPE_2__ = type { i32 (%struct.ao*)* }
%struct.ao_push_state = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_push_state*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %4 = load %struct.ao*, %struct.ao** %2, align 8
  %5 = getelementptr inbounds %struct.ao, %struct.ao* %4, i32 0, i32 1
  %6 = load %struct.ao_push_state*, %struct.ao_push_state** %5, align 8
  store %struct.ao_push_state* %6, %struct.ao_push_state** %3, align 8
  %7 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %8 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %7, i32 0, i32 2
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.ao*, %struct.ao** %2, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %13, align 8
  %15 = icmp ne i32 (%struct.ao*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.ao*, %struct.ao** %2, align 8
  %18 = getelementptr inbounds %struct.ao, %struct.ao* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %20, align 8
  %22 = load %struct.ao*, %struct.ao** %2, align 8
  %23 = call i32 %21(%struct.ao* %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %26 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mp_audio_buffer_clear(i32 %27)
  %29 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %30 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %32 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.ao*, %struct.ao** %2, align 8
  %37 = call i32 @wakeup_playthread(%struct.ao* %36)
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %40 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %42 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %41, i32 0, i32 2
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mp_audio_buffer_clear(i32) #1

declare dso_local i32 @wakeup_playthread(%struct.ao*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
