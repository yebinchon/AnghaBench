; ModuleID = '/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_rrdset_push_chart_definition_now.c'
source_filename = "/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_rrdset_push_chart_definition_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdset_push_chart_definition_now(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @should_send_chart_matching(%struct.TYPE_10__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ true, %1 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %33

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = call i32 @rrdset_rdlock(%struct.TYPE_10__* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @rrdpush_buffer_lock(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = call i32 @rrdpush_send_chart_definition_nolock(%struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i32 @rrdpush_buffer_unlock(%struct.TYPE_11__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = call i32 @rrdset_unlock(%struct.TYPE_10__* %31)
  br label %33

33:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @should_send_chart_matching(%struct.TYPE_10__*) #1

declare dso_local i32 @rrdset_rdlock(%struct.TYPE_10__*) #1

declare dso_local i32 @rrdpush_buffer_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @rrdpush_send_chart_definition_nolock(%struct.TYPE_10__*) #1

declare dso_local i32 @rrdpush_buffer_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @rrdset_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
