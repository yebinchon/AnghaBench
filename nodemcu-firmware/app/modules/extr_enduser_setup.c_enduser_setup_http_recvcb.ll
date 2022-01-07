; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_recvcb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_recvcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.tcp_pcb*, %struct.TYPE_6__* }
%struct.tcp_pcb = type { i32 }
%struct.pbuf = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"enduser_setup_http_recvcb\00", align 1
@state = common dso_local global %struct.TYPE_7__* null, align 8
@ERR_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ignoring received data while stopped\00", align 1
@ERR_ABRT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"connection closed\00", align 1
@ERR_MEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/ \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"http_recvcb failed. Unable to send HTML.\00", align 1
@ENDUSER_SETUP_ERR_UNKOWN_ERROR = common dso_local global i32 0, align 4
@ENDUSER_SETUP_ERR_NONFATAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"/aplist\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ENDUSER_SETUP_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@on_scan_done = common dso_local global i32 0, align 4
@http_header_500 = common dso_local global i32 0, align 4
@http_header_204 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"/status.json\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"/status\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"/update?\00", align 1
@http_header_302 = common dso_local global i32 0, align 4
@http_header_400 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"http_recvcb failed. Failed to handle wifi credentials.\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"/generate_204\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"serving 404\00", align 1
@http_header_404 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"OPTIONS \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"POST \00", align 1
@http_header_405 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i64)* @enduser_setup_http_recvcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enduser_setup_http_recvcb(i8* %0, %struct.tcp_pcb* %1, %struct.pbuf* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tcp_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @ERR_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19, %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %30 = call i32 @tcp_abort(%struct.tcp_pcb* %29)
  %31 = load i64, i64* @ERR_ABRT, align 8
  store i64 %31, i64* %5, align 8
  br label %261

32:                                               ; preds = %19
  %33 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %34 = icmp ne %struct.pbuf* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %10, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = call i32 @remove_scan_listener(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %46 = call i32 @deferred_close(%struct.tcp_pcb* %45)
  %47 = load i64, i64* @ERR_OK, align 8
  store i64 %47, i64* %5, align 8
  br label %261

48:                                               ; preds = %32
  %49 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i8* @calloc(i32 1, i64 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = load i64, i64* @ERR_MEM, align 8
  store i64 %57, i64* %5, align 8
  br label %261

58:                                               ; preds = %48
  %59 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %62 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @pbuf_copy_partial(%struct.pbuf* %59, i8* %60, i64 %63, i32 0)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %66 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @tcp_recved(%struct.tcp_pcb* %65, i64 %68)
  %70 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %71 = call i32 @pbuf_free(%struct.pbuf* %70)
  %72 = load i64, i64* @ERR_OK, align 8
  store i64 %72, i64* %13, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i64 @strncmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %228

76:                                               ; preds = %58
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  %79 = call i64 @strncmp(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81, %76
  %87 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %88 = call i64 @enduser_setup_http_serve_html(%struct.tcp_pcb* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @ENDUSER_SETUP_ERR_UNKOWN_ERROR, align 4
  %92 = load i32, i32* @ENDUSER_SETUP_ERR_NONFATAL, align 4
  %93 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %92)
  br label %95

94:                                               ; preds = %86
  br label %257

95:                                               ; preds = %90
  br label %227

96:                                               ; preds = %81
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  %99 = call i64 @strncmp(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %162

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %155

106:                                              ; preds = %101
  %107 = call %struct.TYPE_6__* @malloc(i32 16)
  store %struct.TYPE_6__* %107, %struct.TYPE_6__** %14, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %109 = icmp ne %struct.TYPE_6__* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  %112 = load i32, i32* @ENDUSER_SETUP_ERR_NONFATAL, align 4
  %113 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = icmp ne %struct.TYPE_6__* %117, null
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %15, align 4
  %120 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %122 = call i32 @tcp_arg(%struct.tcp_pcb* %120, %struct.TYPE_6__* %121)
  %123 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store %struct.tcp_pcb* %123, %struct.tcp_pcb** %125, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store %struct.TYPE_6__* %128, %struct.TYPE_6__** %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %133, align 8
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %154, label %136

136:                                              ; preds = %114
  %137 = load i32, i32* @on_scan_done, align 4
  %138 = call i32 @wifi_station_scan(i32* null, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %136
  %141 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %142 = load i32, i32* @http_header_500, align 4
  %143 = load i32, i32* @http_header_500, align 4
  %144 = call i32 @LITLEN(i32 %143)
  %145 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %141, i32 %142, i32 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.tcp_pcb*, %struct.tcp_pcb** %147, align 8
  %149 = call i32 @deferred_close(%struct.tcp_pcb* %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %151, align 8
  %152 = call i32 (...) @free_scan_listeners()
  br label %153

153:                                              ; preds = %140, %136
  br label %154

154:                                              ; preds = %153, %114
  br label %257

155:                                              ; preds = %101
  %156 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %157 = load i32, i32* @http_header_204, align 4
  %158 = load i32, i32* @http_header_204, align 4
  %159 = call i32 @LITLEN(i32 %158)
  %160 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %156, i32 %157, i32 %159)
  br label %161

161:                                              ; preds = %155
  br label %226

162:                                              ; preds = %96
  %163 = load i8*, i8** %11, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 4
  %165 = call i64 @strncmp(i8* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 12)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %169 = call i32 @enduser_setup_serve_status_as_json(%struct.tcp_pcb* %168)
  br label %225

170:                                              ; preds = %162
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 4
  %173 = call i64 @strncmp(i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %177 = call i32 @enduser_setup_serve_status(%struct.tcp_pcb* %176)
  br label %224

178:                                              ; preds = %170
  %179 = load i8*, i8** %11, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 4
  %181 = call i64 @strncmp(i8* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %178
  %184 = load i8*, i8** %11, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @enduser_setup_http_handle_credentials(i8* %184, i32 %185)
  switch i32 %186, label %199 [
    i32 0, label %187
    i32 1, label %193
  ]

187:                                              ; preds = %183
  %188 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %189 = load i32, i32* @http_header_302, align 4
  %190 = load i32, i32* @http_header_302, align 4
  %191 = call i32 @LITLEN(i32 %190)
  %192 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %188, i32 %189, i32 %191)
  br label %203

193:                                              ; preds = %183
  %194 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %195 = load i32, i32* @http_header_400, align 4
  %196 = load i32, i32* @http_header_400, align 4
  %197 = call i32 @LITLEN(i32 %196)
  %198 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %194, i32 %195, i32 %197)
  br label %203

199:                                              ; preds = %183
  %200 = load i32, i32* @ENDUSER_SETUP_ERR_UNKOWN_ERROR, align 4
  %201 = load i32, i32* @ENDUSER_SETUP_ERR_NONFATAL, align 4
  %202 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %199, %193, %187
  br label %223

204:                                              ; preds = %178
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 4
  %207 = call i64 @strncmp(i8* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 13)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %211 = load i32, i32* @http_header_204, align 4
  %212 = load i32, i32* @http_header_204, align 4
  %213 = call i32 @LITLEN(i32 %212)
  %214 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %210, i32 %211, i32 %213)
  br label %222

215:                                              ; preds = %204
  %216 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %217 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %218 = load i32, i32* @http_header_404, align 4
  %219 = load i32, i32* @http_header_404, align 4
  %220 = call i32 @LITLEN(i32 %219)
  %221 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %217, i32 %218, i32 %220)
  br label %222

222:                                              ; preds = %215, %209
  br label %223

223:                                              ; preds = %222, %203
  br label %224

224:                                              ; preds = %223, %175
  br label %225

225:                                              ; preds = %224, %167
  br label %226

226:                                              ; preds = %225, %161
  br label %227

227:                                              ; preds = %226, %95
  br label %254

228:                                              ; preds = %58
  %229 = load i8*, i8** %11, align 8
  %230 = call i64 @strncmp(i8* %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 8)
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %234 = load i8*, i8** %11, align 8
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @enduser_setup_handle_OPTIONS(%struct.tcp_pcb* %233, i8* %234, i32 %235)
  br label %253

237:                                              ; preds = %228
  %238 = load i8*, i8** %11, align 8
  %239 = call i64 @strncmp(i8* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 5)
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %237
  %242 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %243 = load i8*, i8** %11, align 8
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @enduser_setup_handle_POST(%struct.tcp_pcb* %242, i8* %243, i32 %244)
  br label %252

246:                                              ; preds = %237
  %247 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %248 = load i32, i32* @http_header_405, align 4
  %249 = load i32, i32* @http_header_405, align 4
  %250 = call i32 @LITLEN(i32 %249)
  %251 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %247, i32 %248, i32 %250)
  br label %252

252:                                              ; preds = %246, %241
  br label %253

253:                                              ; preds = %252, %232
  br label %254

254:                                              ; preds = %253, %227
  %255 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %256 = call i32 @deferred_close(%struct.tcp_pcb* %255)
  br label %257

257:                                              ; preds = %254, %154, %94
  %258 = load i8*, i8** %11, align 8
  %259 = call i32 @free(i8* %258)
  %260 = load i64, i64* %13, align 8
  store i64 %260, i64* %5, align 8
  br label %261

261:                                              ; preds = %257, %56, %44, %28
  %262 = load i64, i64* %5, align 8
  ret i64 %262
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @tcp_abort(%struct.tcp_pcb*) #1

declare dso_local i32 @remove_scan_listener(%struct.TYPE_6__*) #1

declare dso_local i32 @deferred_close(%struct.tcp_pcb*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @pbuf_copy_partial(%struct.pbuf*, i8*, i64, i32) #1

declare dso_local i32 @tcp_recved(%struct.tcp_pcb*, i64) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @enduser_setup_http_serve_html(%struct.tcp_pcb*) #1

declare dso_local i32 @ENDUSER_SETUP_ERROR(i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @tcp_arg(%struct.tcp_pcb*, %struct.TYPE_6__*) #1

declare dso_local i32 @wifi_station_scan(i32*, i32) #1

declare dso_local i32 @enduser_setup_http_serve_header(%struct.tcp_pcb*, i32, i32) #1

declare dso_local i32 @LITLEN(i32) #1

declare dso_local i32 @free_scan_listeners(...) #1

declare dso_local i32 @enduser_setup_serve_status_as_json(%struct.tcp_pcb*) #1

declare dso_local i32 @enduser_setup_serve_status(%struct.tcp_pcb*) #1

declare dso_local i32 @enduser_setup_http_handle_credentials(i8*, i32) #1

declare dso_local i32 @enduser_setup_handle_OPTIONS(%struct.tcp_pcb*, i8*, i32) #1

declare dso_local i32 @enduser_setup_handle_POST(%struct.tcp_pcb*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
