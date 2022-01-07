; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_crop_stss_data.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_crop_stss_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mp4 stss crop start_sample:%uD\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mp4 stss crop end_sample:%uD\00", align 1
@NGX_HTTP_MP4_STSS_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"sync:%uD\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"sample is out of mp4 stss atom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i64)* @ngx_http_mp4_crop_stss_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_mp4_crop_stss_data(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @ngx_log_debug1(i32 %20, i32 %24, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @ngx_log_debug1(i32 %37, i32 %41, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %45

44:                                               ; preds = %27
  br label %116

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %15
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i64, i64* @NGX_HTTP_MP4_STSS_DATA, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %11, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %12, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to i64*
  store i64* %60, i64** %9, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i64*
  store i64* %64, i64** %10, align 8
  br label %65

65:                                               ; preds = %83, %46
  %66 = load i64*, i64** %9, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = icmp ult i64* %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i64*, i64** %9, align 8
  %71 = call i64 @ngx_mp4_get_32value(i64* %70)
  store i64 %71, i64* %7, align 8
  %72 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @ngx_log_debug1(i32 %72, i32 %76, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %95

83:                                               ; preds = %69
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %12, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = getelementptr inbounds i64, i64* %86, i32 1
  store i64* %87, i64** %9, align 8
  br label %65

88:                                               ; preds = %65
  %89 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ngx_log_debug0(i32 %89, i32 %93, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i64*, i64** %9, align 8
  %100 = bitcast i64* %99 to i32*
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  br label %116

106:                                              ; preds = %95
  %107 = load i64*, i64** %9, align 8
  %108 = bitcast i64* %107 to i32*
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i32* %108, i32** %110, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %44, %106, %98
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_mp4_get_32value(i64*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
