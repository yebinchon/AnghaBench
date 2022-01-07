; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_output.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sub out: %p %p\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"the same buf was used in sub\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_SUB_BUFFERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @ngx_http_sub_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_sub_output(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %8, align 8
  br label %12

12:                                               ; preds = %50, %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %14 = icmp ne %struct.TYPE_18__* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ngx_log_debug2(i32 %16, i32 %21, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %24, i32 %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = icmp eq %struct.TYPE_19__* %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %15
  %37 = load i32, i32* @NGX_LOG_ALERT, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ngx_log_error(i32 %37, i32 %42, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 (...) @ngx_debug_point()
  %45 = load i32, i32* @NGX_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %177

46:                                               ; preds = %15
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %7, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %8, align 8
  br label %12

54:                                               ; preds = %12
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = call i32 @ngx_http_next_body_filter(%struct.TYPE_17__* %55, %struct.TYPE_18__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = icmp eq %struct.TYPE_18__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %69, align 8
  br label %90

70:                                               ; preds = %54
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %8, align 8
  br label %74

74:                                               ; preds = %80, %70
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = icmp ne %struct.TYPE_18__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %8, align 8
  br label %74

84:                                               ; preds = %74
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %89, align 8
  br label %90

90:                                               ; preds = %84, %64
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 5
  store %struct.TYPE_18__** %94, %struct.TYPE_18__*** %96, align 8
  br label %97

97:                                               ; preds = %151, %90
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = icmp ne %struct.TYPE_18__* %100, null
  br i1 %101, label %102, label %152

102:                                              ; preds = %97
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %8, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  store %struct.TYPE_19__* %108, %struct.TYPE_19__** %7, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = call i64 @ngx_buf_size(%struct.TYPE_19__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %152

113:                                              ; preds = %102
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = icmp ne %struct.TYPE_15__* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %118, %113
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  store %struct.TYPE_18__* %131, %struct.TYPE_18__** %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %135 = call i64 @ngx_buf_in_memory(%struct.TYPE_19__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %128
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137, %128
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %147, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  store %struct.TYPE_18__* %148, %struct.TYPE_18__** %150, align 8
  br label %151

151:                                              ; preds = %142, %137
  br label %97

152:                                              ; preds = %112, %97
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157, %152
  %163 = load i32, i32* @NGX_HTTP_SUB_BUFFERED, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %175

168:                                              ; preds = %157
  %169 = load i32, i32* @NGX_HTTP_SUB_BUFFERED, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %168, %162
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %36
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_debug_point(...) #1

declare dso_local i32 @ngx_http_next_body_filter(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_buf_in_memory(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
