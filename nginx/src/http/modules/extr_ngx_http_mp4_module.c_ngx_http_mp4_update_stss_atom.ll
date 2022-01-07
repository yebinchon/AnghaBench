; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_update_stss_atom.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_update_stss_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64*, i64* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mp4 stss atom update\00", align 1
@NGX_HTTP_MP4_STSS_DATA = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"sync sample entries:%uD\00", align 1
@NGX_HTTP_MP4_STSS_ATOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*)* @ngx_http_mp4_update_stss_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_mp4_update_stss_atom(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %14 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ngx_log_debug0(i32 %14, i32 %18, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load i64, i64* @NGX_HTTP_MP4_STSS_DATA, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %12, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %28 = icmp eq %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @NGX_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %128

31:                                               ; preds = %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = call i32 @ngx_http_mp4_crop_stss_data(%struct.TYPE_15__* %32, %struct.TYPE_13__* %33, i32 1)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = call i32 @ngx_http_mp4_crop_stss_data(%struct.TYPE_15__* %35, %struct.TYPE_13__* %36, i32 0)
  %38 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ngx_log_debug1(i32 %38, i32 %42, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %31
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i64*
  store i64* %56, i64** %9, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i64*
  store i64* %61, i64** %10, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %69, %51
  %66 = load i64*, i64** %9, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = icmp ult i64* %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i64*, i64** %9, align 8
  %71 = call i64 @ngx_mp4_get_32value(i64* %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @ngx_mp4_set_32value(i64* %75, i64 %76)
  %78 = load i64*, i64** %9, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %9, align 8
  br label %65

80:                                               ; preds = %65
  br label %88

81:                                               ; preds = %31
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = load i64, i64* @NGX_HTTP_MP4_STSS_DATA, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %87, align 8
  br label %88

88:                                               ; preds = %81, %80
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = add i64 16, %96
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load i64, i64* @NGX_HTTP_MP4_STSS_ATOM, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %11, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %13, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @ngx_mp4_set_32value(i64* %117, i64 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @ngx_mp4_set_32value(i64* %122, i64 %125)
  %127 = load i32, i32* @NGX_OK, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %88, %29
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_mp4_crop_stss_data(%struct.TYPE_15__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_mp4_get_32value(i64*) #1

declare dso_local i32 @ngx_mp4_set_32value(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
