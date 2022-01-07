; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_single_process_cycle.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_single_process_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"worker cycle\00", align 1
@ngx_terminate = common dso_local global i64 0, align 8
@ngx_quit = common dso_local global i64 0, align 8
@ngx_reconfigure = common dso_local global i64 0, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"reconfiguring\00", align 1
@ngx_cycle = common dso_local global %struct.TYPE_14__* null, align 8
@ngx_reopen = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"reopening logs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_single_process_cycle(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = call i32* @ngx_set_environment(%struct.TYPE_14__* %4, i32* null)
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @exit(i32 2) #3
  unreachable

9:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %45, %9
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %13, i64 %14
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %10
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %21, i64 %22
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64 (%struct.TYPE_14__*)*, i64 (%struct.TYPE_14__*)** %25, align 8
  %27 = icmp ne i64 (%struct.TYPE_14__*)* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %18
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %31, i64 %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64 (%struct.TYPE_14__*)*, i64 (%struct.TYPE_14__*)** %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = call i64 %36(%struct.TYPE_14__* %37)
  %39 = load i64, i64* @NGX_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = call i32 @exit(i32 2) #3
  unreachable

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %10

48:                                               ; preds = %10
  br label %49

49:                                               ; preds = %127, %112, %48
  %50 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ngx_log_debug0(i32 %50, i32 %53, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = call i32 @ngx_process_events_and_timers(%struct.TYPE_14__* %55)
  %57 = load i64, i64* @ngx_terminate, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i64, i64* @ngx_quit, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %59, %49
  store i64 0, i64* %3, align 8
  br label %63

63:                                               ; preds = %93, %62
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %66, i64 %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = icmp ne %struct.TYPE_13__* %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %63
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %73, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %74, i64 %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %78, align 8
  %80 = icmp ne i32 (%struct.TYPE_14__*)* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %83, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %84, i64 %85
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = call i32 %89(%struct.TYPE_14__* %90)
  br label %92

92:                                               ; preds = %81, %71
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %3, align 8
  br label %63

96:                                               ; preds = %63
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %98 = call i32 @ngx_master_process_exit(%struct.TYPE_14__* %97)
  br label %99

99:                                               ; preds = %96, %59
  %100 = load i64, i64* @ngx_reconfigure, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  store i64 0, i64* @ngx_reconfigure, align 8
  %103 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ngx_log_error(i32 %103, i32 %106, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = call %struct.TYPE_14__* @ngx_init_cycle(%struct.TYPE_14__* %108)
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %2, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = icmp eq %struct.TYPE_14__* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %2, align 8
  br label %49

114:                                              ; preds = %102
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** @ngx_cycle, align 8
  br label %116

116:                                              ; preds = %114, %99
  %117 = load i64, i64* @ngx_reopen, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  store i64 0, i64* @ngx_reopen, align 8
  %120 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ngx_log_error(i32 %120, i32 %123, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = call i32 @ngx_reopen_files(%struct.TYPE_14__* %125, i32 -1)
  br label %127

127:                                              ; preds = %119, %116
  br label %49
}

declare dso_local i32* @ngx_set_environment(%struct.TYPE_14__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_process_events_and_timers(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_master_process_exit(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @ngx_init_cycle(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_reopen_files(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
