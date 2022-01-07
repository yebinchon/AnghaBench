; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_cws.c_nn_cws_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_cws.c_nn_cws_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.nn_cws = type { i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.nn_ep* }

@.str = private unnamed_addr constant [4 x i8] c"cws\00", align 1
@nn_cws_ep_ops = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_IPV4ONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@nn_cws_handler = common dso_local global i32 0, align 4
@nn_cws_shutdown = common dso_local global i32 0, align 4
@NN_CWS_STATE_IDLE = common dso_local global i32 0, align 4
@NN_CWS_SRC_USOCK = common dso_local global i32 0, align 4
@NN_WS = common dso_local global i32 0, align 4
@NN_WS_MSG_TYPE = common dso_local global i32 0, align 4
@NN_RECONNECT_IVL = common dso_local global i32 0, align 4
@NN_RECONNECT_IVL_MAX = common dso_local global i32 0, align 4
@NN_CWS_SRC_RECONNECT_TIMER = common dso_local global i32 0, align 4
@NN_CWS_SRC_SWS = common dso_local global i32 0, align 4
@NN_CWS_SRC_DNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_cws_create(%struct.nn_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.nn_cws*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.nn_ep* %0, %struct.nn_ep** %3, align 8
  %23 = call %struct.nn_cws* @nn_alloc(i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_cws* %23, %struct.nn_cws** %18, align 8
  %24 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %25 = call i32 @alloc_assert(%struct.nn_cws* %24)
  %26 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %27 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %28 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %27, i32 0, i32 13
  store %struct.nn_ep* %26, %struct.nn_ep** %28, align 8
  %29 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %30 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %29, i32 0, i32 12
  store i64 0, i64* %30, align 8
  %31 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %32 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %33 = call i32 @nn_ep_tran_setup(%struct.nn_ep* %31, i32* @nn_cws_ep_ops, %struct.nn_cws* %32)
  store i64 4, i64* %17, align 8
  %34 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %35 = load i32, i32* @NN_SOL_SOCKET, align 4
  %36 = load i32, i32* @NN_IPV4ONLY, align 4
  %37 = call i32 @nn_ep_getopt(%struct.nn_ep* %34, i32 %35, i32 %36, i32* %16, i64* %17)
  %38 = load i64, i64* %17, align 8
  %39 = icmp eq i64 %38, 4
  %40 = zext i1 %39 to i32
  %41 = call i32 @nn_assert(i32 %40)
  %42 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %43 = call i8* @nn_ep_getaddr(%struct.nn_ep* %42)
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strlen(i8* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 59)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  br label %55

53:                                               ; preds = %1
  %54 = load i8*, i8** %5, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i8* [ %52, %50 ], [ %54, %53 ]
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @strrchr(i8* %57, i8 signext 58)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 47)
  br label %67

64:                                               ; preds = %55
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 47)
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i8* [ %63, %61 ], [ %66, %64 ]
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i8*, i8** %11, align 8
  br label %77

73:                                               ; preds = %67
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  br label %77

77:                                               ; preds = %73, %71
  %78 = phi i8* [ %72, %71 ], [ %76, %73 ]
  store i8* %78, i8** %12, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  br label %93

87:                                               ; preds = %77
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  br label %93

93:                                               ; preds = %87, %81
  %94 = phi i64 [ %86, %81 ], [ %92, %87 ]
  %95 = trunc i64 %94 to i32
  %96 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %97 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  store i64 %102, i64* %9, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %93
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sub nsw i64 %112, 1
  %114 = trunc i64 %113 to i32
  %115 = call i32 @nn_port_resolve(i8* %107, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %105
  %119 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %120 = call i32 @nn_free(%struct.nn_cws* %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %324

123:                                              ; preds = %105
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %126 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %130

127:                                              ; preds = %93
  %128 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %129 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %128, i32 0, i32 1
  store i32 80, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %133 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @nn_dns_check_hostname(i8* %131, i32 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %130
  %138 = load i8*, i8** %8, align 8
  %139 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %140 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %16, align 4
  %143 = call i64 @nn_literal_resolve(i8* %138, i32 %141, i32 %142, %struct.sockaddr_storage* %14, i64* %15)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %147 = call i32 @nn_free(%struct.nn_cws* %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %324

150:                                              ; preds = %137, %130
  %151 = load i8*, i8** %7, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %171

153:                                              ; preds = %150
  %154 = load i8*, i8** %5, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @nn_iface_resolve(i8* %154, i32 %160, i32 %161, %struct.sockaddr_storage* %14, i64* %15)
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %153
  %166 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %167 = call i32 @nn_free(%struct.nn_cws* %166)
  %168 = load i32, i32* @ENODEV, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %324

170:                                              ; preds = %153
  br label %171

171:                                              ; preds = %170, %150
  %172 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %173 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %172, i32 0, i32 11
  %174 = load i64, i64* %9, align 8
  %175 = add i64 %174, 1
  %176 = trunc i64 %175 to i32
  %177 = call i32 @nn_chunkref_init(i32* %173, i32 %176)
  %178 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %179 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %178, i32 0, i32 11
  %180 = call i64 @nn_chunkref_data(i32* %179)
  %181 = load i8*, i8** %8, align 8
  %182 = load i64, i64* %9, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 @memcpy(i64 %180, i8* %181, i32 %183)
  %185 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %186 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %185, i32 0, i32 11
  %187 = call i64 @nn_chunkref_data(i32* %186)
  %188 = inttoptr i64 %187 to i8*
  %189 = load i64, i64* %9, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8 0, i8* %190, align 1
  %191 = load i8*, i8** %7, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %214

193:                                              ; preds = %171
  %194 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %195 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %194, i32 0, i32 10
  %196 = load i8*, i8** %7, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = trunc i64 %200 to i32
  %202 = call i32 @nn_chunkref_init(i32* %195, i32 %201)
  %203 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %204 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %203, i32 0, i32 10
  %205 = call i64 @nn_chunkref_data(i32* %204)
  %206 = load i8*, i8** %5, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = trunc i64 %211 to i32
  %213 = call i32 @memcpy(i64 %205, i8* %206, i32 %212)
  br label %222

214:                                              ; preds = %171
  %215 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %216 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %215, i32 0, i32 10
  %217 = call i32 @nn_chunkref_init(i32* %216, i32 1)
  %218 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %219 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %218, i32 0, i32 10
  %220 = call i64 @nn_chunkref_data(i32* %219)
  %221 = call i32 @memcpy(i64 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %222

222:                                              ; preds = %214, %193
  %223 = load i8*, i8** %12, align 8
  %224 = call i64 @strlen(i8* %223)
  store i64 %224, i64* %13, align 8
  %225 = load i64, i64* %13, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %222
  %228 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %229 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %228, i32 0, i32 9
  %230 = load i64, i64* %13, align 8
  %231 = add i64 %230, 1
  %232 = trunc i64 %231 to i32
  %233 = call i32 @nn_chunkref_init(i32* %229, i32 %232)
  %234 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %235 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %234, i32 0, i32 9
  %236 = call i64 @nn_chunkref_data(i32* %235)
  %237 = load i8*, i8** %12, align 8
  %238 = load i64, i64* %13, align 8
  %239 = add i64 %238, 1
  %240 = trunc i64 %239 to i32
  %241 = call i32 @strncpy(i64 %236, i8* %237, i32 %240)
  br label %250

242:                                              ; preds = %222
  %243 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %244 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %243, i32 0, i32 9
  %245 = call i32 @nn_chunkref_init(i32* %244, i32 2)
  %246 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %247 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %246, i32 0, i32 9
  %248 = call i64 @nn_chunkref_data(i32* %247)
  %249 = call i32 @strncpy(i64 %248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %250

250:                                              ; preds = %242, %227
  %251 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %252 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %251, i32 0, i32 3
  %253 = load i32, i32* @nn_cws_handler, align 4
  %254 = load i32, i32* @nn_cws_shutdown, align 4
  %255 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %256 = call i32 @nn_ep_getctx(%struct.nn_ep* %255)
  %257 = call i32 @nn_fsm_init_root(i32* %252, i32 %253, i32 %254, i32 %256)
  %258 = load i32, i32* @NN_CWS_STATE_IDLE, align 4
  %259 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %260 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %259, i32 0, i32 8
  store i32 %258, i32* %260, align 8
  %261 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %262 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %261, i32 0, i32 7
  %263 = load i32, i32* @NN_CWS_SRC_USOCK, align 4
  %264 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %265 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %264, i32 0, i32 3
  %266 = call i32 @nn_usock_init(i32* %262, i32 %263, i32* %265)
  store i64 4, i64* %22, align 8
  %267 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %268 = load i32, i32* @NN_WS, align 4
  %269 = load i32, i32* @NN_WS_MSG_TYPE, align 4
  %270 = call i32 @nn_ep_getopt(%struct.nn_ep* %267, i32 %268, i32 %269, i32* %21, i64* %22)
  %271 = load i64, i64* %22, align 8
  %272 = icmp eq i64 %271, 4
  %273 = zext i1 %272 to i32
  %274 = call i32 @nn_assert(i32 %273)
  %275 = load i32, i32* %21, align 4
  %276 = trunc i32 %275 to i8
  %277 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %278 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %277, i32 0, i32 2
  store i8 %276, i8* %278, align 8
  store i64 4, i64* %22, align 8
  %279 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %280 = load i32, i32* @NN_SOL_SOCKET, align 4
  %281 = load i32, i32* @NN_RECONNECT_IVL, align 4
  %282 = call i32 @nn_ep_getopt(%struct.nn_ep* %279, i32 %280, i32 %281, i32* %19, i64* %22)
  %283 = load i64, i64* %22, align 8
  %284 = icmp eq i64 %283, 4
  %285 = zext i1 %284 to i32
  %286 = call i32 @nn_assert(i32 %285)
  store i64 4, i64* %22, align 8
  %287 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %288 = load i32, i32* @NN_SOL_SOCKET, align 4
  %289 = load i32, i32* @NN_RECONNECT_IVL_MAX, align 4
  %290 = call i32 @nn_ep_getopt(%struct.nn_ep* %287, i32 %288, i32 %289, i32* %20, i64* %22)
  %291 = load i64, i64* %22, align 8
  %292 = icmp eq i64 %291, 4
  %293 = zext i1 %292 to i32
  %294 = call i32 @nn_assert(i32 %293)
  %295 = load i32, i32* %20, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %250
  %298 = load i32, i32* %19, align 4
  store i32 %298, i32* %20, align 4
  br label %299

299:                                              ; preds = %297, %250
  %300 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %301 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %300, i32 0, i32 6
  %302 = load i32, i32* @NN_CWS_SRC_RECONNECT_TIMER, align 4
  %303 = load i32, i32* %19, align 4
  %304 = load i32, i32* %20, align 4
  %305 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %306 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %305, i32 0, i32 3
  %307 = call i32 @nn_backoff_init(i32* %301, i32 %302, i32 %303, i32 %304, i32* %306)
  %308 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %309 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %308, i32 0, i32 5
  %310 = load i32, i32* @NN_CWS_SRC_SWS, align 4
  %311 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %312 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %313 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %312, i32 0, i32 3
  %314 = call i32 @nn_sws_init(i32* %309, i32 %310, %struct.nn_ep* %311, i32* %313)
  %315 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %316 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %315, i32 0, i32 4
  %317 = load i32, i32* @NN_CWS_SRC_DNS, align 4
  %318 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %319 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %318, i32 0, i32 3
  %320 = call i32 @nn_dns_init(i32* %316, i32 %317, i32* %319)
  %321 = load %struct.nn_cws*, %struct.nn_cws** %18, align 8
  %322 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %321, i32 0, i32 3
  %323 = call i32 @nn_fsm_start(i32* %322)
  store i32 0, i32* %2, align 4
  br label %324

324:                                              ; preds = %299, %165, %145, %118
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local %struct.nn_cws* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_cws*) #1

declare dso_local i32 @nn_ep_tran_setup(%struct.nn_ep*, i32*, %struct.nn_cws*) #1

declare dso_local i32 @nn_ep_getopt(%struct.nn_ep*, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i8* @nn_ep_getaddr(%struct.nn_ep*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @nn_port_resolve(i8*, i32) #1

declare dso_local i32 @nn_free(%struct.nn_cws*) #1

declare dso_local i64 @nn_dns_check_hostname(i8*, i32) #1

declare dso_local i64 @nn_literal_resolve(i8*, i32, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @nn_iface_resolve(i8*, i32, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @nn_chunkref_init(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @nn_chunkref_data(i32*) #1

declare dso_local i32 @strncpy(i64, i8*, i32) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_ep_getctx(%struct.nn_ep*) #1

declare dso_local i32 @nn_usock_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_backoff_init(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nn_sws_init(i32*, i32, %struct.nn_ep*, i32*) #1

declare dso_local i32 @nn_dns_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
