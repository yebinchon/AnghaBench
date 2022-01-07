; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_set_status.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_19__*, i32, %struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_18__*, %struct.TYPE_23__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i64, i32, i32, %struct.TYPE_17__* }

@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"live: set active=%ui\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"live: unchanged active=%ui\00", align 1
@ngx_rtmp_live_idle = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32*, i32**, i64, i32)* @ngx_rtmp_live_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_live_set_status(%struct.TYPE_20__* %0, i32* %1, i32** %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = load i32, i32* @ngx_rtmp_live_module, align 4
  %19 = call %struct.TYPE_22__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_20__* %17, i32 %18)
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %11, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = load i32, i32* @ngx_rtmp_live_module, align 4
  %22 = call %struct.TYPE_21__* @ngx_rtmp_get_module_ctx(%struct.TYPE_20__* %20, i32 %21)
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %12, align 8
  %23 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ngx_log_debug1(i32 %23, i32 %28, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %5
  %37 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @ngx_log_debug1(i32 %37, i32 %42, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %202

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %137

53:                                               ; preds = %45
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %53
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 7
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %15, align 8
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %58
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 3
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %74, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @ngx_rtmp_live_idle, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ngx_add_timer(%struct.TYPE_23__* %85, i64 %88)
  br label %103

90:                                               ; preds = %63, %58
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %101 = call i32 @ngx_del_timer(%struct.TYPE_23__* %100)
  br label %102

102:                                              ; preds = %99, %93, %90
  br label %103

103:                                              ; preds = %102, %69
  br label %104

104:                                              ; preds = %103, %53
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %13, align 8
  br label %115

115:                                              ; preds = %132, %104
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %117 = icmp ne %struct.TYPE_21__* %116, null
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = load i32**, i32*** %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i32, i32* %10, align 4
  call void @ngx_rtmp_live_set_status(%struct.TYPE_20__* %126, i32* %127, i32** %128, i64 %129, i32 %130)
  br label %131

131:                                              ; preds = %123, %118
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  store %struct.TYPE_21__* %135, %struct.TYPE_21__** %13, align 8
  br label %115

136:                                              ; preds = %115
  br label %202

137:                                              ; preds = %45
  %138 = load i32*, i32** %7, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = call i64 @ngx_rtmp_send_message(%struct.TYPE_20__* %141, i32* %142, i32 0)
  %144 = load i64, i64* @NGX_OK, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_20__* %147)
  br label %202

149:                                              ; preds = %140, %137
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %181, label %154

154:                                              ; preds = %149
  %155 = load i32**, i32*** %8, align 8
  store i32** %155, i32*** %14, align 8
  store i64 0, i64* %16, align 8
  br label %156

156:                                              ; preds = %175, %154
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* %9, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %180

160:                                              ; preds = %156
  %161 = load i32**, i32*** %14, align 8
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %166 = load i32**, i32*** %14, align 8
  %167 = load i32*, i32** %166, align 8
  %168 = call i64 @ngx_rtmp_send_message(%struct.TYPE_20__* %165, i32* %167, i32 0)
  %169 = load i64, i64* @NGX_OK, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %173 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_20__* %172)
  br label %202

174:                                              ; preds = %164, %160
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %16, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %16, align 8
  %178 = load i32**, i32*** %14, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i32 1
  store i32** %179, i32*** %14, align 8
  br label %156

180:                                              ; preds = %156
  br label %181

181:                                              ; preds = %180, %149
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i64 1
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %181, %171, %146, %136, %36
  ret void
}

declare dso_local %struct.TYPE_22__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_rtmp_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_23__*) #1

declare dso_local i64 @ngx_rtmp_send_message(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
