; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_close.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__**, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_20__*, %struct.TYPE_16__, %struct.TYPE_20__*, %struct.TYPE_15__*, i32, %struct.TYPE_20__*, %struct.TYPE_17__, i32*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@ngx_rtmp_relay_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"relay: play disconnect app='%V' name='%V'\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"relay: publish disconnect empty app='%V' name='%V'\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"relay: publish disconnect app='%V' name='%V'\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"relay: play disconnect orphan app='%V' name='%V'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_rtmp_relay_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_relay_close(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__**, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %9 = call %struct.TYPE_21__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_19__* %7, i32 %8)
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %3, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %12 = call %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_19__* %10, i32 %11)
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %4, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = icmp eq %struct.TYPE_20__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %251

16:                                               ; preds = %1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ngx_add_timer(%struct.TYPE_17__* %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = icmp eq %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %251

35:                                               ; preds = %29
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = icmp ne %struct.TYPE_20__* %38, %39
  br i1 %40, label %41, label %146

41:                                               ; preds = %35
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 5
  store %struct.TYPE_20__** %45, %struct.TYPE_20__*** %5, align 8
  br label %46

46:                                               ; preds = %61, %41
  %47 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = icmp ne %struct.TYPE_20__* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = icmp eq %struct.TYPE_20__* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %59, align 8
  br label %65

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  store %struct.TYPE_20__** %64, %struct.TYPE_20__*** %5, align 8
  br label %46

65:                                               ; preds = %55, %46
  %66 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = call i32 @ngx_log_debug2(i32 %66, i32 %73, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %75, %struct.TYPE_16__* %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %65
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, @ngx_rtmp_relay_module
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ngx_add_timer(%struct.TYPE_17__* %100, i32 %103)
  br label %105

105:                                              ; preds = %96, %88, %83, %65
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = icmp eq %struct.TYPE_20__* %110, null
  br i1 %111, label %112, label %143

112:                                              ; preds = %105
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %112
  %122 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = call i32 @ngx_log_debug2(i32 %122, i32 %131, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32* %133, %struct.TYPE_16__* %135)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_15__* %141)
  br label %143

143:                                              ; preds = %121, %112, %105
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %145, align 8
  br label %251

146:                                              ; preds = %35
  %147 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = call i32 @ngx_log_debug2(i32 %147, i32 %154, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32* %156, %struct.TYPE_16__* %158)
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %146
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 6
  %168 = call i32 @ngx_del_timer(%struct.TYPE_17__* %167)
  br label %169

169:                                              ; preds = %165, %146
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 5
  store %struct.TYPE_20__** %171, %struct.TYPE_20__*** %5, align 8
  br label %172

172:                                              ; preds = %201, %169
  %173 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = icmp ne %struct.TYPE_20__* %174, null
  br i1 %175, label %176, label %205

176:                                              ; preds = %172
  %177 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %179, align 8
  %180 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %181 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = call i32 @ngx_log_debug2(i32 %180, i32 %188, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32* %191, %struct.TYPE_16__* %194)
  %196 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_15__* %199)
  br label %201

201:                                              ; preds = %176
  %202 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  store %struct.TYPE_20__** %204, %struct.TYPE_20__*** %5, align 8
  br label %172

205:                                              ; preds = %172
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %207, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i64 @ngx_hash_key(i32 %211, i32 %215)
  store i64 %216, i64* %6, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %218, align 8
  %220 = load i64, i64* %6, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = urem i64 %220, %223
  %225 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %219, i64 %224
  store %struct.TYPE_20__** %225, %struct.TYPE_20__*** %5, align 8
  br label %226

226:                                              ; preds = %238, %205
  %227 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = icmp ne %struct.TYPE_20__* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %231, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %234 = icmp ne %struct.TYPE_20__* %232, %233
  br label %235

235:                                              ; preds = %230, %226
  %236 = phi i1 [ false, %226 ], [ %234, %230 ]
  br i1 %236, label %237, label %242

237:                                              ; preds = %235
  br label %238

238:                                              ; preds = %237
  %239 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  store %struct.TYPE_20__** %241, %struct.TYPE_20__*** %5, align 8
  br label %226

242:                                              ; preds = %235
  %243 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  %245 = icmp ne %struct.TYPE_20__* %244, null
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %248, align 8
  %250 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_20__* %249, %struct.TYPE_20__** %250, align 8
  br label %251

251:                                              ; preds = %15, %34, %143, %246, %242
  ret void
}

declare dso_local %struct.TYPE_21__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_17__*) #1

declare dso_local i64 @ngx_hash_key(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
