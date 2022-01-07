; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_process_request_body.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_process_request_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, %struct.TYPE_15__, %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_16__*)*, i32, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i64, i32*, i32*, i32*, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"client intended to send body data larger than declared\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@ngx_posted_events = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_block_reading = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i32*, i64, i64)* @ngx_http_v2_process_request_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_v2_process_request_body(%struct.TYPE_16__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %12, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %13, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 4
  store i32* %32, i32** %36, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  store i32* %39, i32** %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %75

46:                                               ; preds = %26
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = ptrtoint i32* %50 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = icmp ugt i64 %47, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load i32, i32* @NGX_LOG_INFO, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ngx_log_error(i32 %60, i32 %63, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %65 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %65, i64* %5, align 8
  br label %179

66:                                               ; preds = %46
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32* @ngx_cpymem(i32* %69, i32* %70, i64 %71)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  br label %75

75:                                               ; preds = %66, %31
  br label %76

76:                                               ; preds = %75, %4
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %143

79:                                               ; preds = %76
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %90, align 8
  %92 = call i32 @ngx_del_timer(%struct.TYPE_21__* %91)
  br label %93

93:                                               ; preds = %88, %79
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  %102 = call i32 @ngx_post_event(%struct.TYPE_21__* %101, i32* @ngx_posted_events)
  %103 = load i64, i64* @NGX_OK, align 8
  store i64 %103, i64* %5, align 8
  br label %179

104:                                              ; preds = %93
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = call i64 @ngx_http_v2_filter_request_body(%struct.TYPE_16__* %105)
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @NGX_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %5, align 8
  br label %179

112:                                              ; preds = %104
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %119, align 8
  br label %120

120:                                              ; preds = %117, %112
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  br label %133

133:                                              ; preds = %126, %120
  %134 = load i32, i32* @ngx_http_block_reading, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %138, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = call i32 %139(%struct.TYPE_16__* %140)
  %142 = load i64, i64* @NGX_OK, align 8
  store i64 %142, i64* %5, align 8
  br label %179

143:                                              ; preds = %76
  %144 = load i64, i64* %8, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i64, i64* @NGX_OK, align 8
  store i64 %147, i64* %5, align 8
  br label %179

148:                                              ; preds = %143
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = load i32, i32* @ngx_http_core_module, align 4
  %151 = call %struct.TYPE_18__* @ngx_http_get_module_loc_conf(%struct.TYPE_16__* %149, i32 %150)
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %14, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %153, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ngx_add_timer(%struct.TYPE_21__* %154, i32 %157)
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %148
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %165, align 8
  %167 = call i32 @ngx_post_event(%struct.TYPE_21__* %166, i32* @ngx_posted_events)
  %168 = load i64, i64* @NGX_OK, align 8
  store i64 %168, i64* %5, align 8
  br label %179

169:                                              ; preds = %148
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = call i64 @ngx_http_v2_filter_request_body(%struct.TYPE_16__* %175)
  store i64 %176, i64* %5, align 8
  br label %179

177:                                              ; preds = %169
  %178 = load i64, i64* @NGX_OK, align 8
  store i64 %178, i64* %5, align 8
  br label %179

179:                                              ; preds = %177, %174, %163, %146, %133, %110, %98, %59
  %180 = load i64, i64* %5, align 8
  ret i64 %180
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_cpymem(i32*, i32*, i64) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @ngx_http_v2_filter_request_body(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_loc_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
