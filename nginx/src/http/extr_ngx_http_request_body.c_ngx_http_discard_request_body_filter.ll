; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_discard_request_body_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_discard_request_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }

@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"client sent invalid chunked body\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_15__*)* @ngx_http_discard_request_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_discard_request_body_filter(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %133

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %8, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = icmp eq %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @ngx_pcalloc(i32 %23, i32 8)
  %25 = bitcast i8* %24 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %8, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %29, i64* %3, align 8
  br label %174

30:                                               ; preds = %20
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @ngx_pcalloc(i32 %33, i32 4)
  %35 = bitcast i8* %34 to %struct.TYPE_16__*
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = icmp eq %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %43, i64* %3, align 8
  br label %174

44:                                               ; preds = %30
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %47, align 8
  br label %48

48:                                               ; preds = %44, %14
  br label %49

49:                                               ; preds = %101, %48
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = call i64 @ngx_http_parse_chunked(%struct.TYPE_13__* %50, %struct.TYPE_15__* %51, %struct.TYPE_16__* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @NGX_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %102

59:                                               ; preds = %49
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %67, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %59
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %101

88:                                               ; preds = %59
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %94, %89
  store i64 %95, i64* %93, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %88, %74
  br label %49

102:                                              ; preds = %49
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @NGX_DONE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %132

110:                                              ; preds = %102
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @NGX_AGAIN, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  br label %132

123:                                              ; preds = %110
  %124 = load i32, i32* @NGX_LOG_ERR, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ngx_log_error(i32 %124, i32 %129, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %131 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %131, i64* %3, align 8
  br label %174

132:                                              ; preds = %114, %106
  br label %172

133:                                              ; preds = %2
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = sub i64 %136, %139
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %141, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %133
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, %151
  store i64 %155, i64* %153, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  br label %171

159:                                              ; preds = %133
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 %169, %165
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %159, %147
  br label %172

172:                                              ; preds = %171, %132
  %173 = load i64, i64* @NGX_OK, align 8
  store i64 %173, i64* %3, align 8
  br label %174

174:                                              ; preds = %172, %123, %42, %28
  %175 = load i64, i64* %3, align 8
  ret i64 %175
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_http_parse_chunked(%struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
