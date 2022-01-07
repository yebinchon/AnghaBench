; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_recorder.c_flush_packets.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_recorder.c_flush_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder = type { i32, %struct.mp_recorder_sink** }
%struct.mp_recorder_sink = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_recorder*)* @flush_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_packets(%struct.mp_recorder* %0) #0 {
  %2 = alloca %struct.mp_recorder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_recorder_sink*, align 8
  %5 = alloca i32, align 4
  store %struct.mp_recorder* %0, %struct.mp_recorder** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %9 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %6
  %13 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %14 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %13, i32 0, i32 1
  %15 = load %struct.mp_recorder_sink**, %struct.mp_recorder_sink*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %15, i64 %17
  %19 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %18, align 8
  store %struct.mp_recorder_sink* %19, %struct.mp_recorder_sink** %4, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %35, %12
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %4, align 8
  %23 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %4, align 8
  %28 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @talloc_free(i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %4, align 8
  %40 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %6

44:                                               ; preds = %6
  ret void
}

declare dso_local i32 @talloc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
