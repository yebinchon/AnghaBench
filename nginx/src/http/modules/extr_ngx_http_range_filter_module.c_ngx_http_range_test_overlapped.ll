; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_test_overlapped.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_test_overlapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"range in overlapped buffers\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_17__*)* @ngx_http_range_test_overlapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_range_test_overlapped(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %10, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %34 = call i64 @ngx_buf_size(%struct.TYPE_18__* %33)
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* %9, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %12, align 8
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %65, %26
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %48, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55, %47
  br label %75

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %40

68:                                               ; preds = %40
  br label %69

69:                                               ; preds = %68, %18
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %71 = call i64 @ngx_buf_size(%struct.TYPE_18__* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @NGX_OK, align 4
  store i32 %74, i32* %4, align 4
  br label %84

75:                                               ; preds = %63, %17
  %76 = load i32, i32* @NGX_LOG_ALERT, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ngx_log_error(i32 %76, i32 %81, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @NGX_ERROR, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %75, %69
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @ngx_buf_size(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
