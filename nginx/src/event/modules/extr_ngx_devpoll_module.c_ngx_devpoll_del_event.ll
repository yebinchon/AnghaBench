; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_devpoll_module.c_ngx_devpoll_del_event.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_devpoll_module.c_ngx_devpoll_del_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"devpoll del event: fd:%d ev:%04Xi\00", align 1
@POLLREMOVE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @ngx_devpoll_del_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_devpoll_del_event(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %9, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ngx_log_debug2(i32 %13, i32 %16, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i32, i32* @POLLREMOVE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ngx_devpoll_set_event(%struct.TYPE_5__* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @NGX_ERROR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @NGX_ERROR, align 4
  store i32 %29, i32* %4, align 4
  br label %86

30:                                               ; preds = %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @POLLIN, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi %struct.TYPE_5__* [ %44, %41 ], [ %48, %45 ]
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %8, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* @NGX_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %86

58:                                               ; preds = %30
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @POLLIN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %8, align 8
  %66 = load i32, i32* @POLLOUT, align 4
  store i32 %66, i32* %6, align 4
  br label %72

67:                                               ; preds = %58
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %8, align 8
  %71 = load i32, i32* @POLLIN, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ngx_devpoll_set_event(%struct.TYPE_5__* %81, i32 %82, i32 0)
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %75, %72
  %85 = load i32, i32* @NGX_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %80, %56, %28
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_devpoll_set_event(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
