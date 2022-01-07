; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_recorder.c_mp_recorder_get_sink.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_recorder.c_mp_recorder_get_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder_sink = type { %struct.sh_stream* }
%struct.mp_recorder = type { i32, %struct.mp_recorder_sink** }
%struct.sh_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_recorder_sink* @mp_recorder_get_sink(%struct.mp_recorder* %0, %struct.sh_stream* %1) #0 {
  %3 = alloca %struct.mp_recorder_sink*, align 8
  %4 = alloca %struct.mp_recorder*, align 8
  %5 = alloca %struct.sh_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_recorder_sink*, align 8
  store %struct.mp_recorder* %0, %struct.mp_recorder** %4, align 8
  store %struct.sh_stream* %1, %struct.sh_stream** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mp_recorder*, %struct.mp_recorder** %4, align 8
  %11 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.mp_recorder*, %struct.mp_recorder** %4, align 8
  %16 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %15, i32 0, i32 1
  %17 = load %struct.mp_recorder_sink**, %struct.mp_recorder_sink*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %17, i64 %19
  %21 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %20, align 8
  store %struct.mp_recorder_sink* %21, %struct.mp_recorder_sink** %7, align 8
  %22 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %7, align 8
  %23 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %22, i32 0, i32 0
  %24 = load %struct.sh_stream*, %struct.sh_stream** %23, align 8
  %25 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %26 = icmp eq %struct.sh_stream* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %7, align 8
  store %struct.mp_recorder_sink* %28, %struct.mp_recorder_sink** %3, align 8
  br label %34

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %8

33:                                               ; preds = %8
  store %struct.mp_recorder_sink* null, %struct.mp_recorder_sink** %3, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  ret %struct.mp_recorder_sink* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
