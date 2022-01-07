; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_create.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, %struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32*, %struct.TYPE_25__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*)* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_25__*, i32*, %struct.TYPE_28__*, i32*, i32, i32, %struct.TYPE_23__*, i32, i32, i32, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_29__*, %struct.TYPE_25__*, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32* (%struct.TYPE_23__*, i32, i32*)*, i32*, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32, i32, i32 }

@ngx_rtmp_netcall_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_rtmp_netcall_get_peer = common dso_local global i32 0, align 4
@ngx_rtmp_netcall_free_peer = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"netcall: connection failed\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"netcall: creation failed\00", align 1
@ngx_rtmp_netcall_recv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_rtmp_netcall_create(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32* null, i32** %12, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %10, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = load i32, i32* @ngx_rtmp_netcall_module, align 4
  %19 = call %struct.TYPE_24__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_23__* %17, i32 %18)
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %9, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %21 = icmp eq %struct.TYPE_24__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %247

23:                                               ; preds = %2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = load i32, i32* @ngx_rtmp_netcall_module, align 4
  %26 = call %struct.TYPE_27__* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__* %24, i32 %25)
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %6, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %28 = icmp eq %struct.TYPE_27__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i8* @ngx_pcalloc(i32* %32, i32 8)
  %34 = bitcast i8* %33 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %34, %struct.TYPE_27__** %6, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = icmp eq %struct.TYPE_27__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %3, align 8
  br label %255

39:                                               ; preds = %29
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %42 = load i32, i32* @ngx_rtmp_netcall_module, align 4
  %43 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_23__* %40, %struct.TYPE_27__* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %23
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @ngx_create_pool(i32 4096, i32 %47)
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %247

52:                                               ; preds = %44
  %53 = load i32*, i32** %12, align 8
  %54 = call i8* @ngx_pcalloc(i32* %53, i32 32)
  %55 = bitcast i8* %54 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %55, %struct.TYPE_28__** %7, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %57 = icmp eq %struct.TYPE_28__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %247

59:                                               ; preds = %52
  %60 = load i32*, i32** %12, align 8
  %61 = call i8* @ngx_pcalloc(i32* %60, i32 80)
  %62 = bitcast i8* %61 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %62, %struct.TYPE_25__** %8, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %64 = icmp eq %struct.TYPE_25__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %247

66:                                               ; preds = %59
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @ngx_pcalloc(i32* %72, i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 11
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 11
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %247

85:                                               ; preds = %71
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 11
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ngx_memcpy(i32* %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %85, %66
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 7
  store %struct.TYPE_23__* %112, %struct.TYPE_23__** %114, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 4
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %96
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %96
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @ngx_rtmp_netcall_get_peer, align 4
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @ngx_rtmp_netcall_free_peer, align 4
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  store %struct.TYPE_25__* %149, %struct.TYPE_25__** %151, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %153 = call i64 @ngx_event_connect_peer(%struct.TYPE_28__* %152)
  store i64 %153, i64* %13, align 8
  %154 = load i64, i64* %13, align 8
  %155 = load i64, i64* @NGX_OK, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %137
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* @NGX_AGAIN, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ngx_log_debug0(i32 %162, i32 %167, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %247

169:                                              ; preds = %157, %137
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %171, align 8
  store %struct.TYPE_29__* %172, %struct.TYPE_29__** %11, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 5
  store %struct.TYPE_25__* %173, %struct.TYPE_25__** %175, align 8
  %176 = load i32*, i32** %12, align 8
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 4
  store i32* %176, i32** %178, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 3
  store %struct.TYPE_28__* %179, %struct.TYPE_28__** %181, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 2
  %184 = load i32* (%struct.TYPE_23__*, i32, i32*)*, i32* (%struct.TYPE_23__*, i32, i32*)** %183, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %12, align 8
  %190 = call i32* %184(%struct.TYPE_23__* %185, i32 %188, i32* %189)
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %169
  %198 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @ngx_log_debug0(i32 %198, i32 %203, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %206, align 8
  %208 = call i32 @ngx_close_connection(%struct.TYPE_29__* %207)
  br label %247

209:                                              ; preds = %169
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  store i32 (%struct.TYPE_21__*)* @ngx_rtmp_netcall_send, i32 (%struct.TYPE_21__*)** %213, align 8
  %214 = load i32, i32* @ngx_rtmp_netcall_recv, align 4
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  store i32 %214, i32* %218, align 4
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %209
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 1
  store %struct.TYPE_25__* %226, %struct.TYPE_25__** %228, align 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 0
  store %struct.TYPE_25__* %229, %struct.TYPE_25__** %231, align 8
  br label %232

232:                                              ; preds = %223, %209
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = call i32 @ngx_rtmp_netcall_send(%struct.TYPE_21__* %235)
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = load i64, i64* @NGX_ERROR, align 8
  br label %245

243:                                              ; preds = %232
  %244 = load i64, i64* @NGX_OK, align 8
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi i64 [ %242, %241 ], [ %244, %243 ]
  store i64 %246, i64* %3, align 8
  br label %255

247:                                              ; preds = %197, %161, %84, %65, %58, %51, %22
  %248 = load i32*, i32** %12, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32*, i32** %12, align 8
  %252 = call i32 @ngx_destroy_pool(i32* %251)
  br label %253

253:                                              ; preds = %250, %247
  %254 = load i64, i64* @NGX_ERROR, align 8
  store i64 %254, i64* %3, align 8
  br label %255

255:                                              ; preds = %253, %245, %37
  %256 = load i64, i64* %3, align 8
  ret i64 %256
}

declare dso_local %struct.TYPE_24__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_27__* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_23__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i64 @ngx_event_connect_peer(%struct.TYPE_28__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_rtmp_netcall_send(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
