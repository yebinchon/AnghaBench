; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_exit.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rrdeng_cmd = type { i32 }

@RRDENG_SHUTDOWN = common dso_local global i32 0, align 4
@default_global_ctx = common dso_local global %struct.rrdengine_instance zeroinitializer, align 4
@rrdeng_reserved_file_descriptors = common dso_local global i32 0, align 4
@RRDENG_FD_BUDGET_PER_INSTANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdeng_exit(%struct.rrdengine_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_cmd, align 4
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  %5 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %6 = icmp eq %struct.rrdengine_instance* null, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i32, i32* @RRDENG_SHUTDOWN, align 4
  %10 = getelementptr inbounds %struct.rrdeng_cmd, %struct.rrdeng_cmd* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %12 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %11, i32 0, i32 0
  %13 = call i32 @rrdeng_enq_cmd(%struct.TYPE_2__* %12, %struct.rrdeng_cmd* %4)
  %14 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %15 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @uv_thread_join(i32* %16)
  %18 = icmp eq i64 0, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %22 = call i32 @finalize_rrd_files(%struct.rrdengine_instance* %21)
  %23 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %24 = call i32 @free_page_cache(%struct.rrdengine_instance* %23)
  %25 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %26 = icmp ne %struct.rrdengine_instance* %25, @default_global_ctx
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %29 = call i32 @freez(%struct.rrdengine_instance* %28)
  br label %30

30:                                               ; preds = %27, %8
  %31 = load i32, i32* @RRDENG_FD_BUDGET_PER_INSTANCE, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @rrd_stat_atomic_add(i32* @rrdeng_reserved_file_descriptors, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @rrdeng_enq_cmd(%struct.TYPE_2__*, %struct.rrdeng_cmd*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uv_thread_join(i32*) #1

declare dso_local i32 @finalize_rrd_files(%struct.rrdengine_instance*) #1

declare dso_local i32 @free_page_cache(%struct.rrdengine_instance*) #1

declare dso_local i32 @freez(%struct.rrdengine_instance*) #1

declare dso_local i32 @rrd_stat_atomic_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
