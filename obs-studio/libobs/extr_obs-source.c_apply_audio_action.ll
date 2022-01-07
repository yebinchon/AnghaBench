; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_apply_audio_action.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_apply_audio_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.audio_action = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.audio_action*)* @apply_audio_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_audio_action(%struct.TYPE_3__* %0, %struct.audio_action* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.audio_action*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.audio_action* %1, %struct.audio_action** %4, align 8
  %5 = load %struct.audio_action*, %struct.audio_action** %4, align 8
  %6 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %32 [
    i32 128, label %8
    i32 131, label %14
    i32 129, label %20
    i32 130, label %26
  ]

8:                                                ; preds = %2
  %9 = load %struct.audio_action*, %struct.audio_action** %4, align 8
  %10 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.audio_action*, %struct.audio_action** %4, align 8
  %16 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.audio_action*, %struct.audio_action** %4, align 8
  %22 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.audio_action*, %struct.audio_action** %4, align 8
  %28 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %2, %26, %20, %14, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
