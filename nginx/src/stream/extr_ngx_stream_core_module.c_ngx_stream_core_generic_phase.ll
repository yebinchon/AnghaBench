; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_generic_phase.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_generic_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_9__*)*, i32 }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"generic phase: %ui\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_stream_core_generic_phase(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %7 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ngx_log_debug1(i32 %7, i32 %12, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64 (%struct.TYPE_9__*)*, i64 (%struct.TYPE_9__*)** %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = call i64 %19(%struct.TYPE_9__* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @NGX_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %31, i64* %3, align 8
  br label %63

32:                                               ; preds = %2
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @NGX_DECLINED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %41, i64* %3, align 8
  br label %63

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @NGX_AGAIN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @NGX_DONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %42
  %51 = load i64, i64* @NGX_OK, align 8
  store i64 %51, i64* %3, align 8
  br label %63

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @NGX_ERROR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @ngx_stream_finalize_session(%struct.TYPE_9__* %59, i64 %60)
  %62 = load i64, i64* @NGX_OK, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %58, %50, %36, %25
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_stream_finalize_session(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
