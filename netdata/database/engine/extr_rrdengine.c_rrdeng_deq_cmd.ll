; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_rrdeng_deq_cmd.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_rrdeng_deq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_worker_config = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.rrdeng_cmd* }
%struct.rrdeng_cmd = type { i32 }

@RRDENG_NOOP = common dso_local global i32 0, align 4
@RRDENG_CMD_Q_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdeng_deq_cmd(%struct.rrdengine_worker_config* %0) #0 {
  %2 = alloca %struct.rrdeng_cmd, align 4
  %3 = alloca %struct.rrdengine_worker_config*, align 8
  %4 = alloca i32, align 4
  store %struct.rrdengine_worker_config* %0, %struct.rrdengine_worker_config** %3, align 8
  %5 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %6 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %5, i32 0, i32 1
  %7 = call i32 @uv_mutex_lock(i32* %6)
  %8 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %9 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @RRDENG_NOOP, align 4
  %15 = getelementptr inbounds %struct.rrdeng_cmd, %struct.rrdeng_cmd* %2, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %18 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.rrdeng_cmd*, %struct.rrdeng_cmd** %19, align 8
  %21 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %22 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.rrdeng_cmd, %struct.rrdeng_cmd* %20, i64 %24
  %26 = bitcast %struct.rrdeng_cmd* %2 to i8*
  %27 = bitcast %struct.rrdeng_cmd* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  %31 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %32 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %35 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %58

37:                                               ; preds = %16
  %38 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %39 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @RRDENG_CMD_Q_MAX_SIZE, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %48 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  br label %53

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i64 [ %51, %46 ], [ 0, %52 ]
  %55 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %56 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %30
  %59 = load i32, i32* %4, align 4
  %60 = sub i32 %59, 1
  %61 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %62 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %64 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %63, i32 0, i32 2
  %65 = call i32 @uv_cond_signal(i32* %64)
  br label %66

66:                                               ; preds = %58, %13
  %67 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %68 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %67, i32 0, i32 1
  %69 = call i32 @uv_mutex_unlock(i32* %68)
  %70 = getelementptr inbounds %struct.rrdeng_cmd, %struct.rrdeng_cmd* %2, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  ret i32 %71
}

declare dso_local i32 @uv_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uv_cond_signal(i32*) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
