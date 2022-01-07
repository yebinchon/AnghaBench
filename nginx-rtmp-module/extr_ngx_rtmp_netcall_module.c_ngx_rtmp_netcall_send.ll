; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_send.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32* (%struct.TYPE_13__*, i32*, i32)*, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"netcall: client send timed out\00", align 1
@NGX_CHAIN_ERROR = common dso_local global i32* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @ngx_rtmp_netcall_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_netcall_send(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %84

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i32, i32* @NGX_LOG_INFO, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %28 = call i32 @ngx_log_error(i32 %23, i32 %26, i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_13__* %31)
  br label %84

33:                                               ; preds = %17
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = call i32 @ngx_del_timer(%struct.TYPE_12__* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32* (%struct.TYPE_13__*, i32*, i32)*, i32* (%struct.TYPE_13__*, i32*, i32)** %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* %44(%struct.TYPE_13__* %45, i32* %48, i32 0)
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** @NGX_CHAIN_ERROR, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_13__* %54)
  br label %84

56:                                               ; preds = %41
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ngx_add_timer(%struct.TYPE_12__* %63, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = call i64 @ngx_handle_write_event(%struct.TYPE_12__* %68, i32 0)
  %70 = load i64, i64* @NGX_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = call i32 @ngx_rtmp_netcall_close(%struct.TYPE_13__* %73)
  br label %75

75:                                               ; preds = %72, %62
  br label %84

76:                                               ; preds = %56
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %79 = call i32 @ngx_del_event(%struct.TYPE_12__* %77, i32 %78, i32 0)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ngx_rtmp_netcall_recv(i32 %82)
  br label %84

84:                                               ; preds = %76, %75, %53, %22, %16
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_netcall_close(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_12__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_del_event(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ngx_rtmp_netcall_recv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
