; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_priority.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32* }

@NGX_HTTP_V2_PRIORITY_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"client sent PRIORITY frame with incorrect length %uz\00", align 1
@NGX_HTTP_V2_SIZE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"client sent too many PRIORITY frames\00", align 1
@NGX_HTTP_V2_ENHANCE_YOUR_CALM = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"http2 PRIORITY frame sid:%ui depends on %ui excl:%ui weight:%ui\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"client sent PRIORITY frame with incorrect identifier\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"client sent PRIORITY frame for stream %ui with incorrect dependency\00", align 1
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32*, i32*)* @ngx_http_v2_state_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_priority(%struct.TYPE_17__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NGX_HTTP_V2_PRIORITY_SIZE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load i32, i32* @NGX_LOG_INFO, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %20, i32 %25, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %33 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_17__* %31, i32 %32)
  store i32* %33, i32** %4, align 8
  br label %184

34:                                               ; preds = %3
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32, i32* @NGX_LOG_INFO, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %41, i32 %46, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = load i32, i32* @NGX_HTTP_V2_ENHANCE_YOUR_CALM, align 4
  %50 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_17__* %48, i32 %49)
  store i32* %50, i32** %4, align 8
  br label %184

51:                                               ; preds = %34
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = ptrtoint i32* %52 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = load i32, i32* @NGX_HTTP_V2_PRIORITY_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32* @ngx_http_v2_state_save(%struct.TYPE_17__* %62, i32* %63, i32* %64, i32* (%struct.TYPE_17__*, i32*, i32*)* @ngx_http_v2_state_priority)
  store i32* %65, i32** %4, align 8
  br label %184

66:                                               ; preds = %51
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @ngx_http_v2_parse_uint32(i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 2147483647
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 31
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* @NGX_HTTP_V2_PRIORITY_SIZE, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ngx_log_debug4(i32 %81, i32 %86, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %66
  %101 = load i32, i32* @NGX_LOG_INFO, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %101, i32 %106, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %110 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_17__* %108, i32 %109)
  store i32* %110, i32** %4, align 8
  br label %184

111:                                              ; preds = %66
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %112, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %111
  %119 = load i32, i32* @NGX_LOG_INFO, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %119, i32 %124, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %132 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_17__* %130, i32 %131)
  store i32* %132, i32** %4, align 8
  br label %184

133:                                              ; preds = %111
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.TYPE_16__* @ngx_http_v2_get_node_by_id(%struct.TYPE_17__* %134, i32 %138, i32 1)
  store %struct.TYPE_16__* %139, %struct.TYPE_16__** %12, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %141 = icmp eq %struct.TYPE_16__* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %144 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %145 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_17__* %143, i32 %144)
  store i32* %145, i32** %4, align 8
  br label %184

146:                                              ; preds = %133
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %174

154:                                              ; preds = %146
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %168

164:                                              ; preds = %154
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = call i32 @ngx_queue_remove(i32* %166)
  br label %168

168:                                              ; preds = %164, %159
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = call i32 @ngx_queue_insert_tail(i32* %170, i32* %172)
  br label %174

174:                                              ; preds = %168, %146
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @ngx_http_v2_set_dependency(%struct.TYPE_17__* %175, %struct.TYPE_16__* %176, i32 %177, i32 %178)
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_17__* %180, i32* %181, i32* %182)
  store i32* %183, i32** %4, align 8
  br label %184

184:                                              ; preds = %174, %142, %118, %100, %61, %40, %19
  %185 = load i32*, i32** %4, align 8
  ret i32* %185
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_17__*, i32*, i32*, i32* (%struct.TYPE_17__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_http_v2_parse_uint32(i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_http_v2_get_node_by_id(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_queue_insert_tail(i32*, i32*) #1

declare dso_local i32 @ngx_http_v2_set_dependency(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32* @ngx_http_v2_state_complete(%struct.TYPE_17__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
