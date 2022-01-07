; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_start_cache_manager_processes.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_start_cache_manager_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i8* }

@ngx_cycle = common dso_local global %struct.TYPE_12__* null, align 8
@ngx_cache_manager_process_cycle = common dso_local global i32 0, align 4
@ngx_cache_manager_ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cache manager process\00", align 1
@NGX_PROCESS_JUST_RESPAWN = common dso_local global i32 0, align 4
@NGX_PROCESS_RESPAWN = common dso_local global i32 0, align 4
@NGX_CMD_OPEN_CHANNEL = common dso_local global i8* null, align 8
@ngx_processes = common dso_local global %struct.TYPE_11__* null, align 8
@ngx_process_slot = common dso_local global i64 0, align 8
@ngx_cache_loader_ctx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cache loader process\00", align 1
@NGX_PROCESS_JUST_SPAWN = common dso_local global i32 0, align 4
@NGX_PROCESS_NORESPAWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @ngx_start_cache_manager_processes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_start_cache_manager_processes(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_cycle, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__** %13, %struct.TYPE_9__*** %8, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_cycle, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %22, i64 %23
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i64 1, i64* %6, align 8
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %31, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i64 1, i64* %7, align 8
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %14

43:                                               ; preds = %14
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %115

47:                                               ; preds = %43
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @ngx_cache_manager_process_cycle, align 4
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @NGX_PROCESS_JUST_RESPAWN, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @NGX_PROCESS_RESPAWN, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @ngx_spawn_process(i32* %48, i32 %49, i32* @ngx_cache_manager_ctx, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = call i32 @ngx_memzero(%struct.TYPE_10__* %9, i32 24)
  %60 = load i8*, i8** @NGX_CMD_OPEN_CHANNEL, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  store i8* %60, i8** %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_processes, align 8
  %63 = load i64, i64* @ngx_process_slot, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load i64, i64* @ngx_process_slot, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_processes, align 8
  %71 = load i64, i64* @ngx_process_slot, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @ngx_pass_open_channel(i32* %78, %struct.TYPE_10__* %9)
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %56
  br label %115

83:                                               ; preds = %56
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @ngx_cache_manager_process_cycle, align 4
  %86 = load i64, i64* %4, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @NGX_PROCESS_JUST_SPAWN, align 4
  br label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @NGX_PROCESS_NORESPAWN, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @ngx_spawn_process(i32* %84, i32 %85, i32* @ngx_cache_loader_ctx, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** @NGX_CMD_OPEN_CHANNEL, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  store i8* %95, i8** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_processes, align 8
  %98 = load i64, i64* @ngx_process_slot, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32 %101, i32* %102, align 4
  %103 = load i64, i64* @ngx_process_slot, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_processes, align 8
  %106 = load i64, i64* @ngx_process_slot, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 %111, i32* %112, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @ngx_pass_open_channel(i32* %113, %struct.TYPE_10__* %9)
  br label %115

115:                                              ; preds = %92, %82, %46
  ret void
}

declare dso_local i32 @ngx_spawn_process(i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ngx_pass_open_channel(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
