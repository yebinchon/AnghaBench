; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_audio_buffer.c_mp_audio_buffer_skip.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_audio_buffer.c_mp_audio_buffer_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_audio_buffer = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_audio_buffer_skip(%struct.mp_audio_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_audio_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.mp_audio_buffer* %0, %struct.mp_audio_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %8, %11
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %3, align 8
  %18 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @copy_planes(%struct.mp_audio_buffer* %17, i32 %20, i32 0, i32 %23, i32 %24, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @copy_planes(%struct.mp_audio_buffer*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
