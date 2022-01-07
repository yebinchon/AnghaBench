; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_crop_ctts_data.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_crop_ctts_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mp4 ctts crop start_sample:%uD\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mp4 ctts crop end_sample:%uD\00", align 1
@NGX_HTTP_MP4_CTTS_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"sample:%uD, count:%uD, offset:%uD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @ngx_http_mp4_crop_ctts_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_mp4_crop_ctts_data(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @ngx_log_debug1(i32 %21, i32 %25, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %51

28:                                               ; preds = %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @ngx_log_debug1(i32 %42, i32 %46, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %50

49:                                               ; preds = %28
  br label %151

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %16
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i64, i64* @NGX_HTTP_MP4_CTTS_DATA, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %10, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %12, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %13, align 8
  br label %70

70:                                               ; preds = %97, %51
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = icmp ult %struct.TYPE_11__* %71, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %70
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ngx_mp4_get_32value(i32 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ngx_mp4_get_32value(i32 %88)
  %90 = call i32 @ngx_log_debug3(i32 %79, i32 %83, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %84, i64 %85, i64 %89)
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %74
  %95 = load i64, i64* %8, align 8
  %96 = sub nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %116

97:                                               ; preds = %74
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 1
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %12, align 8
  br label %70

105:                                              ; preds = %70
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %110 = bitcast %struct.TYPE_11__* %109 to i32*
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  store i32* %110, i32** %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %108, %105
  br label %151

116:                                              ; preds = %94
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %9, align 8
  %125 = sub nsw i64 %123, %124
  %126 = call i32 @ngx_mp4_set_32value(i32 %122, i64 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %128 = bitcast %struct.TYPE_11__* %127 to i32*
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %151

134:                                              ; preds = %116
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @ngx_mp4_set_32value(i32 %137, i64 %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 1
  %142 = bitcast %struct.TYPE_11__* %141 to i32*
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  store i32* %142, i32** %144, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %49, %115, %134, %119
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_mp4_get_32value(i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @ngx_mp4_set_32value(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
