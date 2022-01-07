; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_worker_process_exit.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_worker_process_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_16__** }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*)* }

@ngx_exiting = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"*%uA open socket #%d left in connection %ui\00", align 1
@ngx_debug_quit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"aborting\00", align 1
@ngx_exit_log = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@ngx_cycle = common dso_local global %struct.TYPE_15__* null, align 8
@ngx_exit_log_file = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@ngx_exit_cycle = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @ngx_worker_process_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_worker_process_exit(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %8, i64 %9
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = icmp ne %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %5
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %16, i64 %17
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %20, align 8
  %22 = icmp ne i32 (%struct.TYPE_18__*)* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %26, i64 %27
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %30, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %33 = call i32 %31(%struct.TYPE_18__* %32)
  br label %34

34:                                               ; preds = %23, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %5

38:                                               ; preds = %5
  %39 = load i64, i64* @ngx_exiting, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %124

41:                                               ; preds = %38
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %4, align 8
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %110, %41
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %113

51:                                               ; preds = %45
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %109

58:                                               ; preds = %51
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = icmp ne %struct.TYPE_17__* %63, null
  br i1 %64, label %65, label %109

65:                                               ; preds = %58
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %109, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %74
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* @NGX_LOG_ALERT, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = load i64, i64* %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %3, align 8
  %108 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ngx_log_error(i32 %93, %struct.TYPE_20__* %96, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %106, i64 %107)
  store i32 1, i32* @ngx_debug_quit, align 4
  br label %109

109:                                              ; preds = %92, %83, %74, %65, %58, %51
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %3, align 8
  br label %45

113:                                              ; preds = %45
  %114 = load i32, i32* @ngx_debug_quit, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* @NGX_LOG_ALERT, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ngx_log_error(i32 %117, %struct.TYPE_20__* %120, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %122 = call i32 (...) @ngx_debug_point()
  br label %123

123:                                              ; preds = %116, %113
  br label %124

124:                                              ; preds = %123, %38
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = call %struct.TYPE_20__* @ngx_log_get_file_log(%struct.TYPE_20__* %127)
  %129 = bitcast %struct.TYPE_20__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_20__* @ngx_exit_log to i8*), i8* align 8 %129, i64 24, i1 false)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_exit_log, i32 0, i32 2), align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ngx_exit_log_file, i32 0, i32 0), align 4
  store %struct.TYPE_14__* @ngx_exit_log_file, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_exit_log, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_exit_log, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_exit_log, i32 0, i32 0), align 8
  store %struct.TYPE_20__* @ngx_exit_log, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_exit_cycle, i32 0, i32 0), align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_exit_cycle, i32 0, i32 2), align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_exit_cycle, i32 0, i32 1), align 8
  store %struct.TYPE_15__* @ngx_exit_cycle, %struct.TYPE_15__** @ngx_cycle, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ngx_destroy_pool(i32 %141)
  %143 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ngx_log_error(i32 %143, %struct.TYPE_20__* %146, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %148 = call i32 @exit(i32 0) #4
  unreachable
}

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_debug_point(...) #1

declare dso_local %struct.TYPE_20__* @ngx_log_get_file_log(%struct.TYPE_20__*) #1

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
