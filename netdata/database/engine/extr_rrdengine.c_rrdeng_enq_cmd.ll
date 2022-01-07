; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_rrdeng_enq_cmd.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_rrdeng_enq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_worker_config = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.rrdeng_cmd* }
%struct.rrdeng_cmd = type { i32 }

@RRDENG_CMD_Q_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_enq_cmd(%struct.rrdengine_worker_config* %0, %struct.rrdeng_cmd* %1) #0 {
  %3 = alloca %struct.rrdengine_worker_config*, align 8
  %4 = alloca %struct.rrdeng_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.rrdengine_worker_config* %0, %struct.rrdengine_worker_config** %3, align 8
  store %struct.rrdeng_cmd* %1, %struct.rrdeng_cmd** %4, align 8
  %6 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %7 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %6, i32 0, i32 2
  %8 = call i32 @uv_mutex_lock(i32* %7)
  br label %9

9:                                                ; preds = %15, %2
  %10 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %11 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @RRDENG_CMD_Q_MAX_SIZE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %17 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %16, i32 0, i32 4
  %18 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %19 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %18, i32 0, i32 2
  %20 = call i32 @uv_cond_wait(i32* %17, i32* %19)
  br label %9

21:                                               ; preds = %9
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @RRDENG_CMD_Q_MAX_SIZE, align 4
  %24 = icmp ult i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %28 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.rrdeng_cmd*, %struct.rrdeng_cmd** %29, align 8
  %31 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %32 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.rrdeng_cmd, %struct.rrdeng_cmd* %30, i64 %34
  %36 = load %struct.rrdeng_cmd*, %struct.rrdeng_cmd** %4, align 8
  %37 = bitcast %struct.rrdeng_cmd* %35 to i8*
  %38 = bitcast %struct.rrdeng_cmd* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %40 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @RRDENG_CMD_Q_MAX_SIZE, align 4
  %44 = sub i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %21
  %48 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %49 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  br label %54

53:                                               ; preds = %21
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i64 [ %52, %47 ], [ 0, %53 ]
  %56 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %57 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  %61 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %62 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %64 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %63, i32 0, i32 2
  %65 = call i32 @uv_mutex_unlock(i32* %64)
  %66 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %67 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %66, i32 0, i32 1
  %68 = call i64 @uv_async_send(i32* %67)
  %69 = icmp eq i64 0, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  ret void
}

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @uv_cond_wait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uv_mutex_unlock(i32*) #1

declare dso_local i64 @uv_async_send(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
