; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdset.c_rrdset_done_push_exclusive.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdset.c_rrdset_done_push_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @rrdset_done_push_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rrdset_done_push_exclusive(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = call i32 @rrdset_init_last_collected_time(%struct.TYPE_10__* %13)
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i32 @rrdset_update_last_collected_time(%struct.TYPE_10__* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = call i32 @rrdset_rdlock(%struct.TYPE_10__* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = call i32 @rrdset_done_push(%struct.TYPE_10__* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = call i32 @rrdset_unlock(%struct.TYPE_10__* %27)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rrdset_init_last_collected_time(%struct.TYPE_10__*) #1

declare dso_local i32 @rrdset_update_last_collected_time(%struct.TYPE_10__*) #1

declare dso_local i32 @rrdset_rdlock(%struct.TYPE_10__*) #1

declare dso_local i32 @rrdset_done_push(%struct.TYPE_10__*) #1

declare dso_local i32 @rrdset_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
