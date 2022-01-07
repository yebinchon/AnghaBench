; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_instance.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_6__, %struct.options }
%struct.TYPE_4__ = type { i8*, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.options = type { i64, %struct.TYPE_5__, i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.env_set = type { i32 }

@CM_CHILD_TCP = common dso_local global i64 0, align 8
@CM_CHILD_UDP = common dso_local global i64 0, align 8
@LS_MODE_DEFAULT = common dso_local global i32 0, align 4
@SIG_SOURCE_SOFT = common dso_local global i32 0, align 4
@CM_P2P = common dso_local global i64 0, align 8
@CM_TOP = common dso_local global i64 0, align 8
@PROTO_TCP_SERVER = common dso_local global i64 0, align 8
@LS_MODE_TCP_LISTEN = common dso_local global i32 0, align 4
@LS_MODE_TCP_ACCEPT_FROM = common dso_local global i32 0, align 4
@IVM_LEVEL_2 = common dso_local global i32 0, align 4
@P2P_ERROR_DELAY_MS = common dso_local global i32 0, align 4
@CF_INIT_TLS_AUTH_STANDALONE = common dso_local global i32 0, align 4
@CF_LOAD_PERSISTED_PACKET_ID = common dso_local global i32 0, align 4
@CF_INIT_TLS_MULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"init_instance\00", align 1
@AR_INTERACT = common dso_local global i64 0, align 8
@OPENVPN_PLUGIN_INIT_POST_DAEMON = common dso_local global i32 0, align 4
@OPENVPN_PLUGIN_INIT_POST_UID_CHANGE = common dso_local global i32 0, align 4
@OPENVPN_PLUGIN_INIT_PRE_DAEMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_instance(%struct.context* %0, %struct.env_set* %1, i32 %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.env_set* %1, %struct.env_set** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.context*, %struct.context** %4, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 4
  store %struct.options* %12, %struct.options** %7, align 8
  %13 = load %struct.context*, %struct.context** %4, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CM_CHILD_TCP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.context*, %struct.context** %4, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CM_CHILD_UDP, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i1 [ true, %3 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @LS_MODE_DEFAULT, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.context*, %struct.context** %4, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  %31 = call i32 @gc_init(i32* %30)
  %32 = load %struct.env_set*, %struct.env_set** %5, align 8
  %33 = icmp ne %struct.env_set* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.context*, %struct.context** %4, align 8
  %36 = load %struct.env_set*, %struct.env_set** %5, align 8
  %37 = call i32 @do_inherit_env(%struct.context* %35, %struct.env_set* %36)
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.context*, %struct.context** %4, align 8
  %40 = getelementptr inbounds %struct.context, %struct.context* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.context*, %struct.context** %4, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i8* null, i8** %46, align 8
  %47 = load i32, i32* @SIG_SOURCE_SOFT, align 4
  %48 = load %struct.context*, %struct.context** %4, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 8
  %52 = load %struct.context*, %struct.context** %4, align 8
  %53 = getelementptr inbounds %struct.context, %struct.context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CM_P2P, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load %struct.context*, %struct.context** %4, align 8
  %59 = call i32 @init_management_callback_p2p(%struct.context* %58)
  br label %60

60:                                               ; preds = %57, %38
  %61 = load %struct.context*, %struct.context** %4, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CM_P2P, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.context*, %struct.context** %4, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CM_TOP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66, %60
  %73 = load %struct.context*, %struct.context** %4, align 8
  %74 = call i32 @do_startup_pause(%struct.context* %73)
  %75 = load %struct.context*, %struct.context** %4, align 8
  %76 = call i64 @IS_SIG(%struct.context* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %424

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.context*, %struct.context** %4, align 8
  %82 = getelementptr inbounds %struct.context, %struct.context* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.options, %struct.options* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.context*, %struct.context** %4, align 8
  %88 = call i32 @do_preresolve(%struct.context* %87)
  %89 = load %struct.context*, %struct.context** %4, align 8
  %90 = call i64 @IS_SIG(%struct.context* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %424

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %80
  %95 = load %struct.context*, %struct.context** %4, align 8
  %96 = call i32 @next_connection_entry(%struct.context* %95)
  %97 = load %struct.context*, %struct.context** %4, align 8
  %98 = getelementptr inbounds %struct.context, %struct.context* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.options, %struct.options* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PROTO_TCP_SERVER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %94
  %105 = load %struct.context*, %struct.context** %4, align 8
  %106 = getelementptr inbounds %struct.context, %struct.context* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CM_TOP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @LS_MODE_TCP_LISTEN, align 4
  store i32 %111, i32* %9, align 4
  br label %121

112:                                              ; preds = %104
  %113 = load %struct.context*, %struct.context** %4, align 8
  %114 = getelementptr inbounds %struct.context, %struct.context* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CM_CHILD_TCP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @LS_MODE_TCP_ACCEPT_FROM, align 4
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %118, %112
  br label %121

121:                                              ; preds = %120, %110
  br label %122

122:                                              ; preds = %121, %94
  %123 = load %struct.context*, %struct.context** %4, align 8
  %124 = getelementptr inbounds %struct.context, %struct.context* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.options*, %struct.options** %7, align 8
  %129 = getelementptr inbounds %struct.options, %struct.options* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = call i32 @platform_mlockall(i32 1)
  br label %134

134:                                              ; preds = %132, %127, %122
  %135 = load %struct.context*, %struct.context** %4, align 8
  %136 = load i32, i32* @IVM_LEVEL_2, align 4
  %137 = call i32 @init_verb_mute(%struct.context* %135, i32 %136)
  %138 = load %struct.context*, %struct.context** %4, align 8
  %139 = getelementptr inbounds %struct.context, %struct.context* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CM_P2P, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load i32, i32* @P2P_ERROR_DELAY_MS, align 4
  %145 = call i32 @set_check_status_error_delay(i32 %144)
  br label %146

146:                                              ; preds = %143, %134
  %147 = load %struct.context*, %struct.context** %4, align 8
  %148 = getelementptr inbounds %struct.context, %struct.context* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CM_P2P, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.context*, %struct.context** %4, align 8
  %154 = getelementptr inbounds %struct.context, %struct.context* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CM_TOP, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152, %146
  %159 = load %struct.context*, %struct.context** %4, align 8
  %160 = call i32 @do_option_warnings(%struct.context* %159)
  br label %161

161:                                              ; preds = %158, %152
  %162 = load %struct.context*, %struct.context** %4, align 8
  %163 = getelementptr inbounds %struct.context, %struct.context* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CM_P2P, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  %168 = load %struct.context*, %struct.context** %4, align 8
  %169 = getelementptr inbounds %struct.context, %struct.context* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @CM_TOP, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167, %161
  %174 = load %struct.context*, %struct.context** %4, align 8
  %175 = call i32 @do_setup_fast_io(%struct.context* %174)
  br label %176

176:                                              ; preds = %173, %167
  %177 = load %struct.context*, %struct.context** %4, align 8
  %178 = call i32 @do_signal_on_tls_errors(%struct.context* %177)
  %179 = load %struct.context*, %struct.context** %4, align 8
  %180 = getelementptr inbounds %struct.context, %struct.context* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @CM_P2P, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %176
  %185 = load %struct.context*, %struct.context** %4, align 8
  %186 = getelementptr inbounds %struct.context, %struct.context* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CM_TOP, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %184, %176
  %191 = load %struct.context*, %struct.context** %4, align 8
  %192 = call i32 @do_open_status_output(%struct.context* %191)
  br label %193

193:                                              ; preds = %190, %184
  %194 = load %struct.context*, %struct.context** %4, align 8
  %195 = getelementptr inbounds %struct.context, %struct.context* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @CM_TOP, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.context*, %struct.context** %4, align 8
  %201 = call i32 @do_open_ifconfig_pool_persist(%struct.context* %200)
  br label %202

202:                                              ; preds = %199, %193
  %203 = load %struct.context*, %struct.context** %4, align 8
  %204 = getelementptr inbounds %struct.context, %struct.context* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @CM_P2P, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load %struct.context*, %struct.context** %4, align 8
  %210 = load %struct.context*, %struct.context** %4, align 8
  %211 = getelementptr inbounds %struct.context, %struct.context* %210, i32 0, i32 4
  %212 = call i32 @SHAPER_DEFINED(%struct.options* %211)
  %213 = call i32 @do_event_set_init(%struct.context* %209, i32 %212)
  br label %224

214:                                              ; preds = %202
  %215 = load %struct.context*, %struct.context** %4, align 8
  %216 = getelementptr inbounds %struct.context, %struct.context* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @CM_CHILD_TCP, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load %struct.context*, %struct.context** %4, align 8
  %222 = call i32 @do_event_set_init(%struct.context* %221, i32 0)
  br label %223

223:                                              ; preds = %220, %214
  br label %224

224:                                              ; preds = %223, %208
  %225 = load %struct.context*, %struct.context** %4, align 8
  %226 = call i32 @init_proxy(%struct.context* %225)
  %227 = load %struct.context*, %struct.context** %4, align 8
  %228 = getelementptr inbounds %struct.context, %struct.context* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @CM_P2P, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %244, label %232

232:                                              ; preds = %224
  %233 = load %struct.context*, %struct.context** %4, align 8
  %234 = getelementptr inbounds %struct.context, %struct.context* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @CM_TOP, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load %struct.context*, %struct.context** %4, align 8
  %240 = getelementptr inbounds %struct.context, %struct.context* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @CM_CHILD_TCP, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %238, %232, %224
  %245 = load %struct.context*, %struct.context** %4, align 8
  %246 = call i32 @do_link_socket_new(%struct.context* %245)
  br label %247

247:                                              ; preds = %244, %238
  store i32 0, i32* %10, align 4
  %248 = load %struct.context*, %struct.context** %4, align 8
  %249 = getelementptr inbounds %struct.context, %struct.context* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @CM_TOP, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = load i32, i32* @CF_INIT_TLS_AUTH_STANDALONE, align 4
  store i32 %254, i32* %10, align 4
  br label %272

255:                                              ; preds = %247
  %256 = load %struct.context*, %struct.context** %4, align 8
  %257 = getelementptr inbounds %struct.context, %struct.context* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @CM_P2P, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32, i32* @CF_LOAD_PERSISTED_PACKET_ID, align 4
  %263 = load i32, i32* @CF_INIT_TLS_MULTI, align 4
  %264 = or i32 %262, %263
  store i32 %264, i32* %10, align 4
  br label %271

265:                                              ; preds = %255
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = load i32, i32* @CF_INIT_TLS_MULTI, align 4
  store i32 %269, i32* %10, align 4
  br label %270

270:                                              ; preds = %268, %265
  br label %271

271:                                              ; preds = %270, %261
  br label %272

272:                                              ; preds = %271, %253
  %273 = load %struct.context*, %struct.context** %4, align 8
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @do_init_crypto(%struct.context* %273, i32 %274)
  %276 = load %struct.context*, %struct.context** %4, align 8
  %277 = call i64 @IS_SIG(%struct.context* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %272
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %279
  br label %424

283:                                              ; preds = %279, %272
  %284 = load %struct.context*, %struct.context** %4, align 8
  %285 = call i32 @do_init_frame(%struct.context* %284)
  %286 = load %struct.context*, %struct.context** %4, align 8
  %287 = call i32 @do_init_frame_tls(%struct.context* %286)
  %288 = load %struct.context*, %struct.context** %4, align 8
  %289 = getelementptr inbounds %struct.context, %struct.context* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @CM_P2P, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %299, label %293

293:                                              ; preds = %283
  %294 = load %struct.context*, %struct.context** %4, align 8
  %295 = getelementptr inbounds %struct.context, %struct.context* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @CM_CHILD_TCP, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %293, %283
  %300 = load %struct.context*, %struct.context** %4, align 8
  %301 = call i32 @do_init_buffers(%struct.context* %300)
  br label %302

302:                                              ; preds = %299, %293
  %303 = load %struct.context*, %struct.context** %4, align 8
  %304 = getelementptr inbounds %struct.context, %struct.context* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 1
  %306 = load %struct.context*, %struct.context** %4, align 8
  %307 = getelementptr inbounds %struct.context, %struct.context* %306, i32 0, i32 4
  %308 = call i32 @frame_init_mssfix(i32* %305, %struct.options* %307)
  %309 = load %struct.context*, %struct.context** %4, align 8
  %310 = getelementptr inbounds %struct.context, %struct.context* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @CM_P2P, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %326, label %314

314:                                              ; preds = %302
  %315 = load %struct.context*, %struct.context** %4, align 8
  %316 = getelementptr inbounds %struct.context, %struct.context* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @CM_TOP, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = load %struct.context*, %struct.context** %4, align 8
  %322 = getelementptr inbounds %struct.context, %struct.context* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @CM_CHILD_TCP, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %320, %314, %302
  %327 = load %struct.context*, %struct.context** %4, align 8
  %328 = load i32, i32* %9, align 4
  %329 = call i32 @do_init_socket_1(%struct.context* %327, i32 %328)
  br label %330

330:                                              ; preds = %326, %320
  %331 = load %struct.options*, %struct.options** %7, align 8
  %332 = getelementptr inbounds %struct.options, %struct.options* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %357, label %335

335:                                              ; preds = %330
  %336 = load %struct.options*, %struct.options** %7, align 8
  %337 = call i64 @PULL_DEFINED(%struct.options* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %357, label %339

339:                                              ; preds = %335
  %340 = load %struct.context*, %struct.context** %4, align 8
  %341 = getelementptr inbounds %struct.context, %struct.context* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @CM_P2P, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %351, label %345

345:                                              ; preds = %339
  %346 = load %struct.context*, %struct.context** %4, align 8
  %347 = getelementptr inbounds %struct.context, %struct.context* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @CM_TOP, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %357

351:                                              ; preds = %345, %339
  %352 = load %struct.context*, %struct.context** %4, align 8
  %353 = call i32 @do_open_tun(%struct.context* %352)
  %354 = load %struct.context*, %struct.context** %4, align 8
  %355 = getelementptr inbounds %struct.context, %struct.context* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  store i32 %353, i32* %356, align 8
  br label %357

357:                                              ; preds = %351, %345, %335, %330
  %358 = load %struct.context*, %struct.context** %4, align 8
  %359 = getelementptr inbounds %struct.context, %struct.context* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.context*, %struct.context** %4, align 8
  %363 = getelementptr inbounds %struct.context, %struct.context* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 2
  store i32 %361, i32* %364, align 8
  %365 = load %struct.context*, %struct.context** %4, align 8
  %366 = call i32 @do_print_data_channel_mtu_parms(%struct.context* %365)
  %367 = load %struct.context*, %struct.context** %4, align 8
  %368 = getelementptr inbounds %struct.context, %struct.context* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @CM_P2P, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %375

372:                                              ; preds = %357
  %373 = load %struct.context*, %struct.context** %4, align 8
  %374 = call i32 @do_init_traffic_shaper(%struct.context* %373)
  br label %375

375:                                              ; preds = %372, %357
  %376 = load %struct.context*, %struct.context** %4, align 8
  %377 = call i32 @do_init_first_time(%struct.context* %376)
  %378 = load %struct.context*, %struct.context** %4, align 8
  %379 = call i32 @do_init_server_poll_timeout(%struct.context* %378)
  %380 = load %struct.context*, %struct.context** %4, align 8
  %381 = getelementptr inbounds %struct.context, %struct.context* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @CM_P2P, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %397, label %385

385:                                              ; preds = %375
  %386 = load %struct.context*, %struct.context** %4, align 8
  %387 = getelementptr inbounds %struct.context, %struct.context* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @CM_TOP, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %397, label %391

391:                                              ; preds = %385
  %392 = load %struct.context*, %struct.context** %4, align 8
  %393 = getelementptr inbounds %struct.context, %struct.context* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @CM_CHILD_TCP, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %391, %385, %375
  %398 = load %struct.context*, %struct.context** %4, align 8
  %399 = call i32 @do_init_socket_2(%struct.context* %398)
  br label %400

400:                                              ; preds = %397, %391
  %401 = load %struct.context*, %struct.context** %4, align 8
  %402 = load %struct.context*, %struct.context** %4, align 8
  %403 = getelementptr inbounds %struct.context, %struct.context* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @do_uid_gid_chroot(%struct.context* %401, i32 %405)
  %407 = load %struct.context*, %struct.context** %4, align 8
  %408 = getelementptr inbounds %struct.context, %struct.context* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @CM_P2P, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %415, label %412

412:                                              ; preds = %400
  %413 = load i32, i32* %8, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %412, %400
  %416 = load %struct.context*, %struct.context** %4, align 8
  %417 = call i32 @do_init_timers(%struct.context* %416, i32 0)
  br label %418

418:                                              ; preds = %415, %412
  %419 = load %struct.context*, %struct.context** %4, align 8
  %420 = call i64 @IS_SIG(%struct.context* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %418
  br label %424

423:                                              ; preds = %418
  br label %440

424:                                              ; preds = %422, %282, %92, %78
  %425 = load %struct.context*, %struct.context** %4, align 8
  %426 = getelementptr inbounds %struct.context, %struct.context* %425, i32 0, i32 1
  %427 = load %struct.TYPE_4__*, %struct.TYPE_4__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 0
  %429 = load i8*, i8** %428, align 8
  %430 = icmp ne i8* %429, null
  br i1 %430, label %436, label %431

431:                                              ; preds = %424
  %432 = load %struct.context*, %struct.context** %4, align 8
  %433 = getelementptr inbounds %struct.context, %struct.context* %432, i32 0, i32 1
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %435, align 8
  br label %436

436:                                              ; preds = %431, %424
  %437 = load %struct.context*, %struct.context** %4, align 8
  %438 = load i32, i32* %6, align 4
  %439 = call i32 @close_context(%struct.context* %437, i32 -1, i32 %438)
  br label %440

440:                                              ; preds = %436, %423
  ret void
}

declare dso_local i32 @gc_init(i32*) #1

declare dso_local i32 @do_inherit_env(%struct.context*, %struct.env_set*) #1

declare dso_local i32 @init_management_callback_p2p(%struct.context*) #1

declare dso_local i32 @do_startup_pause(%struct.context*) #1

declare dso_local i64 @IS_SIG(%struct.context*) #1

declare dso_local i32 @do_preresolve(%struct.context*) #1

declare dso_local i32 @next_connection_entry(%struct.context*) #1

declare dso_local i32 @platform_mlockall(i32) #1

declare dso_local i32 @init_verb_mute(%struct.context*, i32) #1

declare dso_local i32 @set_check_status_error_delay(i32) #1

declare dso_local i32 @do_option_warnings(%struct.context*) #1

declare dso_local i32 @do_setup_fast_io(%struct.context*) #1

declare dso_local i32 @do_signal_on_tls_errors(%struct.context*) #1

declare dso_local i32 @do_open_status_output(%struct.context*) #1

declare dso_local i32 @do_open_ifconfig_pool_persist(%struct.context*) #1

declare dso_local i32 @do_event_set_init(%struct.context*, i32) #1

declare dso_local i32 @SHAPER_DEFINED(%struct.options*) #1

declare dso_local i32 @init_proxy(%struct.context*) #1

declare dso_local i32 @do_link_socket_new(%struct.context*) #1

declare dso_local i32 @do_init_crypto(%struct.context*, i32) #1

declare dso_local i32 @do_init_frame(%struct.context*) #1

declare dso_local i32 @do_init_frame_tls(%struct.context*) #1

declare dso_local i32 @do_init_buffers(%struct.context*) #1

declare dso_local i32 @frame_init_mssfix(i32*, %struct.options*) #1

declare dso_local i32 @do_init_socket_1(%struct.context*, i32) #1

declare dso_local i64 @PULL_DEFINED(%struct.options*) #1

declare dso_local i32 @do_open_tun(%struct.context*) #1

declare dso_local i32 @do_print_data_channel_mtu_parms(%struct.context*) #1

declare dso_local i32 @do_init_traffic_shaper(%struct.context*) #1

declare dso_local i32 @do_init_first_time(%struct.context*) #1

declare dso_local i32 @do_init_server_poll_timeout(%struct.context*) #1

declare dso_local i32 @do_init_socket_2(%struct.context*) #1

declare dso_local i32 @do_uid_gid_chroot(%struct.context*, i32) #1

declare dso_local i32 @do_init_timers(%struct.context*, i32) #1

declare dso_local i32 @close_context(%struct.context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
