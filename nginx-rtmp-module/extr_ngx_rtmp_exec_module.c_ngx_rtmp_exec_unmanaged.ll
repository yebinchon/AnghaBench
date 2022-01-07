; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_unmanaged.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_unmanaged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, i32* }

@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"exec: %s %uz unmanaged command(s)\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_rtmp_exec_event_eval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_13__*, i8*)* @ngx_rtmp_exec_unmanaged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_exec_unmanaged(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %63

15:                                               ; preds = %3
  %16 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ngx_log_debug2(i32 %16, i32 %21, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %22, i64 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %58, %15
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @ngx_rtmp_exec_filter(%struct.TYPE_11__* %37, i32* %38)
  %40 = load i64, i64* @NGX_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %58

43:                                               ; preds = %36
  %44 = call i32 @ngx_memzero(%struct.TYPE_12__* %8, i32 32)
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  store i32* %45, i32** %46, align 8
  %47 = load i32, i32* @ngx_rtmp_exec_event_eval, align 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = call i32 @ngx_rtmp_exec_run(%struct.TYPE_12__* %8)
  br label %58

58:                                               ; preds = %43, %42
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %7, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %9, align 8
  br label %30

63:                                               ; preds = %14, %30
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8*, i64) #1

declare dso_local i64 @ngx_rtmp_exec_filter(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_rtmp_exec_run(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
