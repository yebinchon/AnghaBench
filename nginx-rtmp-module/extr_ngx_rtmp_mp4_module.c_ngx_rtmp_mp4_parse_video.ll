; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_parse_video.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_parse_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i8*, i8* }
%struct.TYPE_10__ = type { i64, i64 }

@ngx_rtmp_mp4_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"mp4: video settings codec=%i, width=%ui, height=%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i64*, i64*, i64)* @ngx_rtmp_mp4_parse_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_mp4_parse_video(%struct.TYPE_11__* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = load i32, i32* @ngx_rtmp_mp4_module, align 4
  %13 = call %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(%struct.TYPE_11__* %11, i32 %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @NGX_OK, align 8
  store i64 %19, i64* %5, align 8
  br label %84

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 78
  %28 = load i64*, i64** %8, align 8
  %29 = icmp ugt i64* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* @NGX_ERROR, align 8
  store i64 %31, i64* %5, align 8
  br label %84

32:                                               ; preds = %20
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 24
  store i64* %34, i64** %7, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = bitcast i64* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @ngx_rtmp_r16(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  store i64* %42, i64** %7, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = bitcast i64* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @ngx_rtmp_r16(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 52
  store i64* %50, i64** %7, align 8
  %51 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @ngx_log_debug3(i32 %51, i32 %56, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %57, i8* %60, i8* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = call i64 @ngx_rtmp_mp4_parse(%struct.TYPE_11__* %65, i64* %66, i64* %67)
  %69 = load i64, i64* @NGX_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %32
  %72 = load i64, i64* @NGX_ERROR, align 8
  store i64 %72, i64* %5, align 8
  br label %84

73:                                               ; preds = %32
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i64 %78, i64* %82, align 8
  %83 = load i64, i64* @NGX_OK, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %73, %71, %30, %18
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @ngx_rtmp_r16(i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i8*, i8*) #1

declare dso_local i64 @ngx_rtmp_mp4_parse(%struct.TYPE_11__*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
