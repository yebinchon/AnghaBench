; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_obs_output_cleanup_delay.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_obs_output_cleanup_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.delay_data = type { i64, i32 }

@DELAY_MSG_PACKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_output_cleanup_delay(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.delay_data, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = call i32 @circlebuf_pop_front(%struct.TYPE_5__* %12, %struct.delay_data* %3, i32 16)
  %14 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %3, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DELAY_MSG_PACKET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %3, i32 0, i32 1
  %20 = call i32 @obs_encoder_packet_release(i32* %19)
  br label %21

21:                                               ; preds = %18, %10
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @os_atomic_set_long(i32* %26, i32 0)
  ret void
}

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_5__*, %struct.delay_data*, i32) #1

declare dso_local i32 @obs_encoder_packet_release(i32*) #1

declare dso_local i32 @os_atomic_set_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
