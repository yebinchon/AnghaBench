; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_set_chunk_size.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_set_chunk_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i64, %struct.TYPE_11__*, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"setting chunk_size=%ui\00", align 1
@NGX_RTMP_MAX_CHUNK_SIZE = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"too big RTMP chunk size:%ui\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_rtmp_set_chunk_size(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @ngx_log_debug1(i32 %14, i32 %19, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @NGX_RTMP_MAX_CHUNK_SIZE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i32, i32* @NGX_LOG_ALERT, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ngx_log_error(i32 %26, i32 %31, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* @NGX_ERROR, align 8
  store i64 %34, i64* %3, align 8
  br label %209

35:                                               ; preds = %2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = load i32, i32* @ngx_rtmp_core_module, align 4
  %38 = call %struct.TYPE_14__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_13__* %36, i32 %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ngx_create_pool(i32 4096, i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %207

59:                                               ; preds = %35
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %66, align 8
  store i64 1, i64* %13, align 8
  br label %67

67:                                               ; preds = %203, %59
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %206

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %7, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = icmp eq %struct.TYPE_15__* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %73
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = icmp eq %struct.TYPE_15__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83, %73
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %94, align 8
  br label %203

95:                                               ; preds = %83
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %7, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %8, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = call i8* @ngx_rtmp_alloc_in_buf(%struct.TYPE_13__* %100)
  %102 = bitcast i8* %101 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %9, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = icmp eq %struct.TYPE_15__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i64, i64* @NGX_ERROR, align 8
  store i64 %106, i64* %3, align 8
  br label %209

107:                                              ; preds = %95
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %10, align 8
  br label %109

109:                                              ; preds = %201, %165, %107
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  store %struct.TYPE_16__* %112, %struct.TYPE_16__** %11, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %12, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = icmp sge i64 %122, %129
  br i1 %130, label %131, label %166

131:                                              ; preds = %109
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  %145 = call i64 @ngx_cpymem(i64 %134, i64 %137, i64 %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %7, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = icmp eq %struct.TYPE_15__* %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %131
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store %struct.TYPE_15__* %155, %struct.TYPE_15__** %157, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = load i64, i64* %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store %struct.TYPE_15__* %158, %struct.TYPE_15__** %164, align 8
  br label %202

165:                                              ; preds = %131
  br label %109

166:                                              ; preds = %109
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %175, %178
  %180 = call i64 @ngx_cpymem(i64 %169, i64 %172, i64 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, %184
  store i64 %188, i64* %186, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %190 = call i8* @ngx_rtmp_alloc_in_buf(%struct.TYPE_13__* %189)
  %191 = bitcast i8* %190 to %struct.TYPE_15__*
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  store %struct.TYPE_15__* %191, %struct.TYPE_15__** %193, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  store %struct.TYPE_15__* %196, %struct.TYPE_15__** %9, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %198 = icmp eq %struct.TYPE_15__* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %166
  %200 = load i64, i64* @NGX_ERROR, align 8
  store i64 %200, i64* %3, align 8
  br label %209

201:                                              ; preds = %166
  br label %109

202:                                              ; preds = %154
  br label %203

203:                                              ; preds = %202, %88
  %204 = load i64, i64* %13, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %13, align 8
  br label %67

206:                                              ; preds = %67
  br label %207

207:                                              ; preds = %206, %35
  %208 = load i64, i64* @NGX_OK, align 8
  store i64 %208, i64* %3, align 8
  br label %209

209:                                              ; preds = %207, %199, %105, %25
  %210 = load i64, i64* %3, align 8
  ret i64 %210
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

declare dso_local %struct.TYPE_14__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ngx_create_pool(i32, i32) #1

declare dso_local i8* @ngx_rtmp_alloc_in_buf(%struct.TYPE_13__*) #1

declare dso_local i64 @ngx_cpymem(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
