; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_set_recorder_sink.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_set_recorder_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { i32, %struct.mp_recorder_sink* }
%struct.mp_recorder_sink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sub_set_recorder_sink(%struct.dec_sub* %0, %struct.mp_recorder_sink* %1) #0 {
  %3 = alloca %struct.dec_sub*, align 8
  %4 = alloca %struct.mp_recorder_sink*, align 8
  store %struct.dec_sub* %0, %struct.dec_sub** %3, align 8
  store %struct.mp_recorder_sink* %1, %struct.mp_recorder_sink** %4, align 8
  %5 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %6 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %5, i32 0, i32 0
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %4, align 8
  %9 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %10 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %9, i32 0, i32 1
  store %struct.mp_recorder_sink* %8, %struct.mp_recorder_sink** %10, align 8
  %11 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %12 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %11, i32 0, i32 0
  %13 = call i32 @pthread_mutex_unlock(i32* %12)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
