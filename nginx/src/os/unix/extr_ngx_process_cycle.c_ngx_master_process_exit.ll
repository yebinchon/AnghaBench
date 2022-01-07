; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_master_process_exit.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_master_process_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__**, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*)* }

@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@ngx_exit_log = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ngx_cycle = common dso_local global %struct.TYPE_17__* null, align 8
@ngx_exit_log_file = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@ngx_exit_cycle = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @ngx_master_process_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_master_process_exit(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = call i32 @ngx_delete_pidfile(%struct.TYPE_14__* %4)
  %6 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ngx_log_error(i32 %6, i32 %9, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %41, %1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %14, i64 %15
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %11
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %22, i64 %23
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_14__*)* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %32, i64 %33
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %39 = call i32 %37(%struct.TYPE_14__* %38)
  br label %40

40:                                               ; preds = %29, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %11

44:                                               ; preds = %11
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = call i32 @ngx_close_listening_sockets(%struct.TYPE_14__* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_cycle, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = call %struct.TYPE_15__* @ngx_log_get_file_log(%struct.TYPE_15__* %49)
  %51 = bitcast %struct.TYPE_15__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_15__* @ngx_exit_log to i8*), i8* align 8 %51, i64 24, i1 false)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_exit_log, i32 0, i32 2), align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ngx_exit_log_file, i32 0, i32 0), align 4
  store %struct.TYPE_16__* @ngx_exit_log_file, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_exit_log, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_exit_log, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_exit_log, i32 0, i32 0), align 8
  store %struct.TYPE_15__* @ngx_exit_log, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ngx_exit_cycle, i32 0, i32 2), align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_cycle, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ngx_exit_cycle, i32 0, i32 1), align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_cycle, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ngx_exit_cycle, i32 0, i32 0), align 8
  store %struct.TYPE_17__* @ngx_exit_cycle, %struct.TYPE_17__** @ngx_cycle, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ngx_destroy_pool(i32 %63)
  %65 = call i32 @exit(i32 0) #4
  unreachable
}

declare dso_local i32 @ngx_delete_pidfile(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_close_listening_sockets(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @ngx_log_get_file_log(%struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_destroy_pool(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
