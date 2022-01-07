; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_recorder.c_mp_recorder_mark_discontinuity.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_recorder.c_mp_recorder_mark_discontinuity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder = type { i32, i32, i32, %struct.mp_recorder_sink** }
%struct.mp_recorder_sink = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_recorder_mark_discontinuity(%struct.mp_recorder* %0) #0 {
  %2 = alloca %struct.mp_recorder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_recorder_sink*, align 8
  store %struct.mp_recorder* %0, %struct.mp_recorder** %2, align 8
  %5 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %6 = call i32 @flush_packets(%struct.mp_recorder* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %10 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %15 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %14, i32 0, i32 3
  %16 = load %struct.mp_recorder_sink**, %struct.mp_recorder_sink*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %16, i64 %18
  %20 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %19, align 8
  store %struct.mp_recorder_sink* %20, %struct.mp_recorder_sink** %4, align 8
  %21 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %4, align 8
  %22 = call i32 @mux_packets(%struct.mp_recorder_sink* %21, i32 1)
  %23 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %4, align 8
  %24 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %4, align 8
  %26 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %7

30:                                               ; preds = %7
  %31 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %32 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %34 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  ret void
}

declare dso_local i32 @flush_packets(%struct.mp_recorder*) #1

declare dso_local i32 @mux_packets(%struct.mp_recorder_sink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
