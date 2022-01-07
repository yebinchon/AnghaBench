; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_close_stream.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_close_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32, %struct.TYPE_22__*, i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__*, i32 }

@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"live: not joined\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"live: leave '%s'\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"NetStream.Unpublish.Success\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Stop publishing\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"live: no publisher\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"live: delete empty stream '%s'\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"NetStream.Play.Stop\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Stop live\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*)* @ngx_rtmp_live_close_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_live_close_stream(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__**, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = load i32, i32* @ngx_rtmp_live_module, align 4
  %13 = call %struct.TYPE_23__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_20__* %11, i32 %12)
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %10, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %15 = icmp eq %struct.TYPE_23__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %222

17:                                               ; preds = %2
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = load i32, i32* @ngx_rtmp_live_module, align 4
  %20 = call %struct.TYPE_22__* @ngx_rtmp_get_module_ctx(%struct.TYPE_20__* %18, i32 %19)
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %6, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = icmp eq %struct.TYPE_22__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %222

24:                                               ; preds = %17
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = icmp eq %struct.TYPE_19__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ngx_log_debug0(i32 %30, i32 %35, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %222

37:                                               ; preds = %24
  %38 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ngx_log_debug1(i32 %38, i32 %43, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %37
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %56, %37
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  store %struct.TYPE_22__** %70, %struct.TYPE_22__*** %7, align 8
  br label %71

71:                                               ; preds = %86, %66
  %72 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = icmp ne %struct.TYPE_22__* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = icmp eq %struct.TYPE_22__* %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %84, align 8
  br label %90

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 4
  store %struct.TYPE_22__** %89, %struct.TYPE_22__*** %7, align 8
  br label %71

90:                                               ; preds = %80, %71
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95, %90
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = call i32 @ngx_rtmp_live_stop(%struct.TYPE_20__* %103)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %151

110:                                              ; preds = %105
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = call i32 @ngx_rtmp_send_status(%struct.TYPE_20__* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %150, label %117

117:                                              ; preds = %110
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  store %struct.TYPE_22__* %122, %struct.TYPE_22__** %8, align 8
  br label %123

123:                                              ; preds = %145, %117
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %125 = icmp ne %struct.TYPE_22__* %124, null
  br i1 %125, label %126, label %149

126:                                              ; preds = %123
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %126
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  store %struct.TYPE_20__* %134, %struct.TYPE_20__** %5, align 8
  %135 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ngx_log_debug0(i32 %135, i32 %140, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %143 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_20__* %142)
  br label %144

144:                                              ; preds = %131, %126
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  store %struct.TYPE_22__* %148, %struct.TYPE_22__** %8, align 8
  br label %123

149:                                              ; preds = %123
  br label %150

150:                                              ; preds = %149, %110
  br label %151

151:                                              ; preds = %150, %105
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %155, align 8
  %157 = icmp ne %struct.TYPE_22__* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %160, align 8
  br label %222

161:                                              ; preds = %151
  %162 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ngx_log_debug1(i32 %162, i32 %167, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call %struct.TYPE_21__** @ngx_rtmp_live_get_stream(%struct.TYPE_20__* %174, i32 %179, i32 0)
  store %struct.TYPE_21__** %180, %struct.TYPE_21__*** %9, align 8
  %181 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %182 = icmp eq %struct.TYPE_21__** %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %161
  br label %222

184:                                              ; preds = %161
  %185 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  store %struct.TYPE_21__* %188, %struct.TYPE_21__** %189, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  store %struct.TYPE_19__* %192, %struct.TYPE_19__** %196, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 1
  store %struct.TYPE_19__* %199, %struct.TYPE_19__** %201, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %203, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %221, label %208

208:                                              ; preds = %184
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %208
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %213
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %220 = call i32 @ngx_rtmp_send_status(%struct.TYPE_20__* %219, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %213, %208, %184
  br label %222

222:                                              ; preds = %221, %183, %158, %29, %23, %16
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %224 = load i32*, i32** %4, align 8
  %225 = call i32 @next_close_stream(%struct.TYPE_20__* %223, i32* %224)
  ret i32 %225
}

declare dso_local %struct.TYPE_23__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_rtmp_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_rtmp_live_stop(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_rtmp_send_status(%struct.TYPE_20__*, i8*, i8*, i8*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__** @ngx_rtmp_live_get_stream(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @next_close_stream(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
