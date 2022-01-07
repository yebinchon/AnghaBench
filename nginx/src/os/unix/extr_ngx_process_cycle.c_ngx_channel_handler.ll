; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_channel_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_process_cycle.c_ngx_channel_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }

@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"channel handler\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"channel: %i\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_EPOLL_EVENT = common dso_local global i32 0, align 4
@NGX_USE_EVENTPORT_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"channel command: %ui\00", align 1
@ngx_quit = common dso_local global i32 0, align 4
@ngx_terminate = common dso_local global i32 0, align 4
@ngx_reopen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"get channel s:%i pid:%P fd:%d\00", align 1
@ngx_processes = common dso_local global %struct.TYPE_13__* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"close channel s:%i pid:%P our:%P fd:%d\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"close() channel failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @ngx_channel_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_channel_handler(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  br label %159

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ngx_log_debug0(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %158, %13
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ngx_read_channel(i32 %25, %struct.TYPE_12__* %4, i32 24, i32 %28)
  store i64 %29, i64* %3, align 8
  %30 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @ngx_log_debug1(i32 %30, i32 %33, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @NGX_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %22
  %40 = load i32, i32* @ngx_event_flags, align 4
  %41 = load i32, i32* @NGX_USE_EPOLL_EVENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = call i32 @ngx_del_conn(%struct.TYPE_11__* %45, i32 0)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = call i32 @ngx_close_connection(%struct.TYPE_11__* %48)
  br label %159

50:                                               ; preds = %22
  %51 = load i32, i32* @ngx_event_flags, align 4
  %52 = load i32, i32* @NGX_USE_EVENTPORT_EVENT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = load i32, i32* @NGX_READ_EVENT, align 4
  %58 = call i64 @ngx_add_event(%struct.TYPE_10__* %56, i32 %57, i32 0)
  %59 = load i64, i64* @NGX_ERROR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %159

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @NGX_AGAIN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %159

68:                                               ; preds = %63
  %69 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ngx_log_debug1(i32 %69, i32 %72, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  switch i64 %77, label %158 [
    i64 130, label %78
    i64 128, label %79
    i64 129, label %80
    i64 131, label %81
    i64 132, label %109
  ]

78:                                               ; preds = %68
  store i32 1, i32* @ngx_quit, align 4
  br label %158

79:                                               ; preds = %68
  store i32 1, i32* @ngx_terminate, align 4
  br label %158

80:                                               ; preds = %68
  store i32 1, i32* @ngx_reopen, align 4
  br label %158

81:                                               ; preds = %68
  %82 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ngx_log_debug3(i32 %82, i32 %85, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %87, i32 %89, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_processes, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 %94, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_processes, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %101, i32* %108, align 4
  br label %158

109:                                              ; preds = %68
  %110 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_processes, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_processes, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ngx_log_debug4(i32 %110, i32 %113, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %115, i32 %117, i32 %123, i32 %131)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_processes, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @close(i32 %140)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %150

143:                                              ; preds = %109
  %144 = load i32, i32* @NGX_LOG_ALERT, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ngx_errno, align 4
  %149 = call i32 @ngx_log_error(i32 %144, i32 %147, i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %150

150:                                              ; preds = %143, %109
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_processes, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 -1, i32* %157, align 4
  br label %158

158:                                              ; preds = %68, %150, %81, %80, %79, %78
  br label %22

159:                                              ; preds = %67, %61, %47, %10
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_read_channel(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_del_conn(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_11__*) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
