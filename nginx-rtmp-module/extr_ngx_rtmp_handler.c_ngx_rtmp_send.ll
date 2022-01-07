; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_send.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 (%struct.TYPE_15__*, i64, i64)*, i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, i32, %struct.TYPE_16__*, %struct.TYPE_16__**, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i64, i64 }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_rtmp_bw_out = common dso_local global i32 0, align 4
@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @ngx_rtmp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_send(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %241

18:                                               ; preds = %1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @NGX_LOG_INFO, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %29 = call i32 @ngx_log_error(i32 %24, i32 %27, i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_13__* %32)
  br label %241

34:                                               ; preds = %18
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = call i32 @ngx_del_timer(%struct.TYPE_14__* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = icmp eq %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 7
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %58, i64 %61
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 6
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %55, %47, %42
  br label %76

76:                                               ; preds = %225, %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = icmp ne %struct.TYPE_16__* %79, null
  br i1 %80, label %81, label %226

81:                                               ; preds = %76
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i64 (%struct.TYPE_15__*, i64, i64)*, i64 (%struct.TYPE_15__*, i64, i64)** %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = call i64 %84(%struct.TYPE_15__* %85, i64 %88, i64 %99)
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @NGX_AGAIN, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %81
  %105 = load i64, i64* %5, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %104, %81
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ngx_add_timer(i32 %110, i32 %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @ngx_handle_write_event(i32 %117, i32 0)
  %119 = load i64, i64* @NGX_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %107
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_13__* %122)
  br label %124

124:                                              ; preds = %121, %107
  br label %241

125:                                              ; preds = %104
  %126 = load i64, i64* %5, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_13__* %129)
  br label %241

131:                                              ; preds = %125
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %132
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  store i32 1, i32* %140, align 8
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @ngx_rtmp_update_bandwidth(i32* @ngx_rtmp_bw_out, i64 %141)
  %143 = load i64, i64* %5, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %150, %157
  br i1 %158, label %159, label %225

159:                                              ; preds = %131
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 6
  store %struct.TYPE_16__* %164, %struct.TYPE_16__** %166, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 6
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = icmp eq %struct.TYPE_16__* %169, null
  br i1 %170, label %171, label %215

171:                                              ; preds = %159
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %173 = load i32, i32* @ngx_rtmp_core_module, align 4
  %174 = call i32* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_13__* %172, i32 %173)
  store i32* %174, i32** %6, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 7
  %178 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %177, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %178, i64 %181
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = call i32 @ngx_rtmp_free_shared_chain(i32* %175, %struct.TYPE_16__* %183)
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %186, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = urem i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %198, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %171
  br label %226

204:                                              ; preds = %171
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %206, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %207, i64 %210
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 6
  store %struct.TYPE_16__* %212, %struct.TYPE_16__** %214, align 8
  br label %215

215:                                              ; preds = %204, %159
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 6
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 2
  store i64 %222, i64* %224, align 8
  br label %225

225:                                              ; preds = %215, %131
  br label %76

226:                                              ; preds = %203, %76
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %233 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %234 = call i32 @ngx_del_event(%struct.TYPE_14__* %232, i32 %233, i32 0)
  br label %235

235:                                              ; preds = %231, %226
  %236 = load i64, i64* @ngx_cycle, align 8
  %237 = inttoptr i64 %236 to i32*
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 5
  %240 = call i32 @ngx_event_process_posted(i32* %237, i32* %239)
  br label %241

241:                                              ; preds = %235, %128, %124, %23, %17
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_add_timer(i32, i32) #1

declare dso_local i64 @ngx_handle_write_event(i32, i32) #1

declare dso_local i32 @ngx_rtmp_update_bandwidth(i32*, i64) #1

declare dso_local i32* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_rtmp_free_shared_chain(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_del_event(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ngx_event_process_posted(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
