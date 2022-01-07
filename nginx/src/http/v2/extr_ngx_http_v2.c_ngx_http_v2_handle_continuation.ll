; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_handle_continuation.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_handle_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@NGX_HTTP_V2_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@NGX_HTTP_V2_CONTINUATION_FRAME = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"client sent inappropriate frame while CONTINUATION was expected\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"client sent CONTINUATION frame with incorrect identifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i32*, i32*, i32)* @ngx_http_v2_handle_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_handle_continuation(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = load i64, i64* %11, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = load i64, i64* %11, align 8
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i64 @ngx_min(i64 %36, i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %51, %47
  store i64 %52, i64* %50, align 8
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 %54
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @ngx_memmove(i32* %57, i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %32, %23, %4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @NGX_HTTP_V2_FRAME_HEADER_SIZE, align 8
  %70 = add i64 %68, %69
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32* @ngx_http_v2_state_headers_save(%struct.TYPE_13__* %73, i32* %74, i32* %75, i32 %76)
  store i32* %77, i32** %5, align 8
  br label %166

78:                                               ; preds = %61
  %79 = load i32*, i32** %7, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @ngx_http_v2_parse_uint32(i32* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i64 @ngx_http_v2_parse_type(i32 %84)
  %86 = load i64, i64* @NGX_HTTP_V2_CONTINUATION_FRAME, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %78
  %89 = load i32, i32* @NGX_LOG_INFO, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ngx_log_error(i32 %89, i32 %94, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %98 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_13__* %96, i32 %97)
  store i32* %98, i32** %5, align 8
  br label %166

99:                                               ; preds = %78
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  %114 = call i64 @ngx_http_v2_parse_sid(i32* %113)
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %99
  %117 = load i32, i32* @NGX_LOG_INFO, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ngx_log_error(i32 %117, i32 %122, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %126 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_13__* %124, i32 %125)
  store i32* %126, i32** %5, align 8
  br label %166

127:                                              ; preds = %99
  %128 = load i32*, i32** %7, align 8
  store i32* %128, i32** %10, align 8
  %129 = load i64, i64* @NGX_HTTP_V2_FRAME_HEADER_SIZE, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 %129
  store i32* %131, i32** %7, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @ngx_memcpy(i32* %132, i32* %133, i64 %134)
  %136 = load i32, i32* %13, align 4
  %137 = call i64 @ngx_http_v2_parse_length(i32 %136)
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, %138
  store i64 %143, i64* %141, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = icmp ne %struct.TYPE_11__* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %127
  %150 = load i64, i64* %11, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, %150
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %149, %127
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load i32*, i32** %7, align 8
  store i32* %165, i32** %5, align 8
  br label %166

166:                                              ; preds = %160, %116, %88, %72
  %167 = load i32*, i32** %5, align 8
  ret i32* %167
}

declare dso_local i64 @ngx_min(i64, i32) #1

declare dso_local i32 @ngx_memmove(i32*, i32*, i64) #1

declare dso_local i32* @ngx_http_v2_state_headers_save(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_v2_parse_uint32(i32*) #1

declare dso_local i64 @ngx_http_v2_parse_type(i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ngx_http_v2_parse_sid(i32*) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i64 @ngx_http_v2_parse_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
