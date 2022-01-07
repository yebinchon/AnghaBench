; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_add_event.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@NGX_READ_EVENT = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"eventport add event: fd:%d ev:%04Xi\00", align 1
@ep = common dso_local global i32 0, align 4
@PORT_SOURCE_FD = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"port_associate() failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i32)* @ngx_eventport_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_eventport_add_event(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %11, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @NGX_READ_EVENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %10, align 8
  %23 = load i64, i64* @POLLOUT, align 8
  store i64 %23, i64* %9, align 8
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %10, align 8
  %28 = load i64, i64* @POLLIN, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ngx_log_debug2(i32 %39, i32 %42, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %46)
  %48 = load i32, i32* @ep, align 4
  %49 = load i32, i32* @PORT_SOURCE_FD, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = ptrtoint %struct.TYPE_4__* %54 to i64
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %55, %58
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @port_associate(i32 %48, i32 %49, i32 %52, i64 %53, i8* %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %71

63:                                               ; preds = %38
  %64 = load i32, i32* @NGX_LOG_ALERT, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ngx_errno, align 4
  %69 = call i32 @ngx_log_error(i32 %64, i32 %67, i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* @NGX_ERROR, align 8
  store i64 %70, i64* %4, align 8
  br label %77

71:                                               ; preds = %38
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i64, i64* @NGX_OK, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %71, %63
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @port_associate(i32, i32, i32, i64, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
