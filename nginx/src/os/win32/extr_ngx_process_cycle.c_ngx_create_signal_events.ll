; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_create_signal_events.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_create_signal_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ngx_stop_event_name = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Global\\ngx_stop_%s%Z\00", align 1
@ngx_unique = common dso_local global i32 0, align 4
@ngx_stop_event = common dso_local global i32* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"CreateEvent(\22%s\22) failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_quit_event_name = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Global\\ngx_quit_%s%Z\00", align 1
@ngx_quit_event = common dso_local global i32* null, align 8
@ngx_reopen_event_name = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Global\\ngx_reopen_%s%Z\00", align 1
@ngx_reopen_event = common dso_local global i32* null, align 8
@ngx_reload_event_name = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Global\\ngx_reload_%s%Z\00", align 1
@ngx_reload_event = common dso_local global i32* null, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ngx_create_signal_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_create_signal_events(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load i64, i64* @ngx_stop_event_name, align 8
  %5 = inttoptr i64 %4 to i32*
  %6 = load i32, i32* @ngx_unique, align 4
  %7 = call i32 @ngx_sprintf(i32* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i64, i64* @ngx_stop_event_name, align 8
  %9 = call i8* @CreateEvent(i32* null, i32 1, i32 0, i64 %8)
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** @ngx_stop_event, align 8
  %11 = load i32*, i32** @ngx_stop_event, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @NGX_LOG_ALERT, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ngx_errno, align 4
  %19 = load i64, i64* @ngx_stop_event_name, align 8
  %20 = call i32 @ngx_log_error(i32 %14, i32 %17, i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @NGX_ERROR, align 4
  store i32 %21, i32* %2, align 4
  br label %81

22:                                               ; preds = %1
  %23 = load i64, i64* @ngx_quit_event_name, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* @ngx_unique, align 4
  %26 = call i32 @ngx_sprintf(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* @ngx_quit_event_name, align 8
  %28 = call i8* @CreateEvent(i32* null, i32 1, i32 0, i64 %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** @ngx_quit_event, align 8
  %30 = load i32*, i32** @ngx_quit_event, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load i32, i32* @NGX_LOG_ALERT, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ngx_errno, align 4
  %38 = load i64, i64* @ngx_quit_event_name, align 8
  %39 = call i32 @ngx_log_error(i32 %33, i32 %36, i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @NGX_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %81

41:                                               ; preds = %22
  %42 = load i64, i64* @ngx_reopen_event_name, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* @ngx_unique, align 4
  %45 = call i32 @ngx_sprintf(i32* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* @ngx_reopen_event_name, align 8
  %47 = call i8* @CreateEvent(i32* null, i32 1, i32 0, i64 %46)
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** @ngx_reopen_event, align 8
  %49 = load i32*, i32** @ngx_reopen_event, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load i32, i32* @NGX_LOG_ALERT, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ngx_errno, align 4
  %57 = load i64, i64* @ngx_reopen_event_name, align 8
  %58 = call i32 @ngx_log_error(i32 %52, i32 %55, i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @NGX_ERROR, align 4
  store i32 %59, i32* %2, align 4
  br label %81

60:                                               ; preds = %41
  %61 = load i64, i64* @ngx_reload_event_name, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* @ngx_unique, align 4
  %64 = call i32 @ngx_sprintf(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* @ngx_reload_event_name, align 8
  %66 = call i8* @CreateEvent(i32* null, i32 1, i32 0, i64 %65)
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** @ngx_reload_event, align 8
  %68 = load i32*, i32** @ngx_reload_event, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load i32, i32* @NGX_LOG_ALERT, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ngx_errno, align 4
  %76 = load i64, i64* @ngx_reload_event_name, align 8
  %77 = call i32 @ngx_log_error(i32 %71, i32 %74, i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @NGX_ERROR, align 4
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %60
  %80 = load i32, i32* @NGX_OK, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %70, %51, %32, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ngx_sprintf(i32*, i8*, i32) #1

declare dso_local i8* @CreateEvent(i32*, i32, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
