; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_rrdeng_init_cmd_queue.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_rrdeng_init_cmd_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_worker_config = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_init_cmd_queue(%struct.rrdengine_worker_config* %0) #0 {
  %2 = alloca %struct.rrdengine_worker_config*, align 8
  store %struct.rrdengine_worker_config* %0, %struct.rrdengine_worker_config** %2, align 8
  %3 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %2, align 8
  %4 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %2, align 8
  %7 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %2, align 8
  %10 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %2, align 8
  %12 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %11, i32 0, i32 1
  %13 = call i64 @uv_cond_init(i32* %12)
  %14 = icmp eq i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %2, align 8
  %18 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %17, i32 0, i32 0
  %19 = call i64 @uv_mutex_init(i32* %18)
  %20 = icmp eq i64 0, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uv_cond_init(i32*) #1

declare dso_local i64 @uv_mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
