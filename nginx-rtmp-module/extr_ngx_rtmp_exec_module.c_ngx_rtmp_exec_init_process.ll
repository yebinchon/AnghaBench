; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_init_process.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_init_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { i64 }

@ngx_rtmp_core_main_conf = common dso_local global %struct.TYPE_17__* null, align 8
@NGX_OK = common dso_local global i32 0, align 4
@ngx_process_slot = common dso_local global i64 0, align 8
@ngx_rtmp_exec_module = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ngx_rtmp_exec_respawn = common dso_local global i32 0, align 4
@ngx_rtmp_init_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_rtmp_exec_init_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_exec_init_process(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__**, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_rtmp_core_main_conf, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = icmp eq %struct.TYPE_17__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @NGX_OK, align 4
  store i32 %20, i32* %2, align 4
  br label %77

21:                                               ; preds = %13
  %22 = load i64, i64* @ngx_process_slot, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @NGX_OK, align 4
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %21
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %29, align 8
  store %struct.TYPE_16__** %30, %struct.TYPE_16__*** %5, align 8
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %6, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %36, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ngx_rtmp_exec_module, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %37, i64 %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %7, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %70, %26
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @ngx_rtmp_exec_respawn, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call i32 @ngx_post_event(%struct.TYPE_11__* %68, i32* @ngx_rtmp_init_queue)
  br label %70

70:                                               ; preds = %52
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %9, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 1
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %8, align 8
  br label %45

75:                                               ; preds = %45
  %76 = load i32, i32* @NGX_OK, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %24, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ngx_post_event(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
