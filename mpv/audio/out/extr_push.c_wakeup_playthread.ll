; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_push.c_wakeup_playthread.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_push.c_wakeup_playthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.TYPE_2__*, %struct.ao_push_state* }
%struct.TYPE_2__ = type { i32 (%struct.ao*)* }
%struct.ao_push_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @wakeup_playthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_playthread(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_push_state*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %4 = load %struct.ao*, %struct.ao** %2, align 8
  %5 = getelementptr inbounds %struct.ao, %struct.ao* %4, i32 0, i32 1
  %6 = load %struct.ao_push_state*, %struct.ao_push_state** %5, align 8
  store %struct.ao_push_state* %6, %struct.ao_push_state** %3, align 8
  %7 = load %struct.ao*, %struct.ao** %2, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %10, align 8
  %12 = icmp ne i32 (%struct.ao*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.ao*, %struct.ao** %2, align 8
  %15 = getelementptr inbounds %struct.ao, %struct.ao* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %17, align 8
  %19 = load %struct.ao*, %struct.ao** %2, align 8
  %20 = call i32 %18(%struct.ao* %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %23 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %25 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %24, i32 0, i32 1
  %26 = call i32 @pthread_cond_signal(i32* %25)
  ret void
}

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
