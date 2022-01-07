; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cyw43/extr_cyw43_ctrl.c_cyw43_cb_process_async_event.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cyw43/extr_cyw43_ctrl.c_cyw43_cb_process_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 (i32, i32*)*, i32, i32, i32, i32, i32 }

@CYW43_TRACE_ASYNC_EV = common dso_local global i32 0, align 4
@CYW43_EV_ESCAN_RESULT = common dso_local global i64 0, align 8
@CYW43_EV_DISASSOC = common dso_local global i64 0, align 8
@CYW43_ITF_STA = common dso_local global i32 0, align 4
@CYW43_EV_PRUNE = common dso_local global i64 0, align 8
@PENDSV_DISPATCH_CYW43 = common dso_local global i32 0, align 4
@cyw43_poll_func = common dso_local global i32 0, align 4
@CYW43_EV_SET_SSID = common dso_local global i64 0, align 8
@WIFI_JOIN_STATE_NONET = common dso_local global i32 0, align 4
@WIFI_JOIN_STATE_FAIL = common dso_local global i32 0, align 4
@CYW43_EV_AUTH = common dso_local global i64 0, align 8
@WIFI_JOIN_STATE_AUTH = common dso_local global i32 0, align 4
@WIFI_JOIN_STATE_BADAUTH = common dso_local global i8* null, align 8
@CYW43_EV_DEAUTH_IND = common dso_local global i64 0, align 8
@CYW43_EV_LINK = common dso_local global i64 0, align 8
@WIFI_JOIN_STATE_LINK = common dso_local global i32 0, align 4
@CYW43_EV_PSK_SUP = common dso_local global i64 0, align 8
@WIFI_JOIN_STATE_KEYED = common dso_local global i32 0, align 4
@WIFI_JOIN_STATE_ALL = common dso_local global i32 0, align 4
@WIFI_JOIN_STATE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cyw43_cb_process_async_event(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CYW43_TRACE_ASYNC_EV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32 @cyw43_dump_async_event(%struct.TYPE_10__* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CYW43_EV_ESCAN_RESULT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32 (i32, i32*)*, i32 (i32, i32*)** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 %37(i32 %40, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %34
  br label %58

49:                                               ; preds = %29
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 2, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %48
  br label %282

59:                                               ; preds = %24, %18
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CYW43_EV_DISASSOC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load i32, i32* @CYW43_ITF_STA, align 4
  %68 = call i32 @cyw43_tcpip_set_link_down(%struct.TYPE_9__* %66, i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  store i32 0, i32* %70, align 8
  br label %281

71:                                               ; preds = %59
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CYW43_EV_PRUNE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %71
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  store i32 1, i32* %91, align 8
  %92 = load i32, i32* @PENDSV_DISPATCH_CYW43, align 4
  %93 = load i32, i32* @cyw43_poll_func, align 4
  %94 = call i32 @pendsv_schedule_dispatch(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %82, %77
  br label %280

96:                                               ; preds = %71
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CYW43_EV_SET_SSID, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %96
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %127

108:                                              ; preds = %102
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @WIFI_JOIN_STATE_NONET, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  br label %126

122:                                              ; preds = %113, %108
  %123 = load i32, i32* @WIFI_JOIN_STATE_FAIL, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %107
  br label %279

128:                                              ; preds = %96
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CYW43_EV_AUTH, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %128
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* @WIFI_JOIN_STATE_AUTH, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %157

145:                                              ; preds = %134
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 6
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %156

151:                                              ; preds = %145
  %152 = load i8*, i8** @WIFI_JOIN_STATE_BADAUTH, align 8
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %151, %150
  br label %157

157:                                              ; preds = %156, %139
  br label %278

158:                                              ; preds = %128
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CYW43_EV_DEAUTH_IND, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 6
  store i32 1, i32* %176, align 4
  %177 = load i32, i32* @PENDSV_DISPATCH_CYW43, align 4
  %178 = load i32, i32* @cyw43_poll_func, align 4
  %179 = call i32 @pendsv_schedule_dispatch(i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %169, %164
  br label %277

181:                                              ; preds = %158
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @CYW43_EV_LINK, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %225

187:                                              ; preds = %181
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %224

192:                                              ; preds = %187
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, 1
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %217

198:                                              ; preds = %192
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @CYW43_ITF_STA, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load i32, i32* @WIFI_JOIN_STATE_LINK, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %216

210:                                              ; preds = %198
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @cyw43_tcpip_set_link_up(%struct.TYPE_9__* %211, i32 %214)
  br label %216

216:                                              ; preds = %210, %204
  br label %223

217:                                              ; preds = %192
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @cyw43_tcpip_set_link_down(%struct.TYPE_9__* %218, i32 %221)
  br label %223

223:                                              ; preds = %217, %216
  br label %224

224:                                              ; preds = %223, %187
  br label %276

225:                                              ; preds = %181
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @CYW43_EV_PSK_SUP, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %275

231:                                              ; preds = %225
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, 6
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = load i32, i32* @WIFI_JOIN_STATE_KEYED, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %274

242:                                              ; preds = %231
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 4
  br i1 %246, label %257, label %247

247:                                              ; preds = %242
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 8
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 11
  br i1 %256, label %257, label %268

257:                                              ; preds = %252, %247, %242
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 15
  br i1 %261, label %262, label %268

262:                                              ; preds = %257
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 4
  store i32 1, i32* %264, align 4
  %265 = load i32, i32* @PENDSV_DISPATCH_CYW43, align 4
  %266 = load i32, i32* @cyw43_poll_func, align 4
  %267 = call i32 @pendsv_schedule_dispatch(i32 %265, i32 %266)
  br label %273

268:                                              ; preds = %257, %252
  %269 = load i8*, i8** @WIFI_JOIN_STATE_BADAUTH, align 8
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 3
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %268, %262
  br label %274

274:                                              ; preds = %273, %236
  br label %275

275:                                              ; preds = %274, %225
  br label %276

276:                                              ; preds = %275, %224
  br label %277

277:                                              ; preds = %276, %180
  br label %278

278:                                              ; preds = %277, %157
  br label %279

279:                                              ; preds = %278, %127
  br label %280

280:                                              ; preds = %279, %95
  br label %281

281:                                              ; preds = %280, %65
  br label %282

282:                                              ; preds = %281, %58
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @WIFI_JOIN_STATE_ALL, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %282
  %289 = load i32, i32* @WIFI_JOIN_STATE_ACTIVE, align 4
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 3
  store i32 %289, i32* %291, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %293 = load i32, i32* @CYW43_ITF_STA, align 4
  %294 = call i32 @cyw43_tcpip_set_link_up(%struct.TYPE_9__* %292, i32 %293)
  br label %295

295:                                              ; preds = %288, %282
  ret void
}

declare dso_local i32 @cyw43_dump_async_event(%struct.TYPE_10__*) #1

declare dso_local i32 @cyw43_tcpip_set_link_down(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pendsv_schedule_dispatch(i32, i32) #1

declare dso_local i32 @cyw43_tcpip_set_link_up(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
