; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_dispatch_bin_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_dispatch_bin_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64 }

@PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND = common dso_local global i32 0, align 4
@conn_closing = common dso_local global i8* null, align 8
@settings = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@PROTOCOL_BINARY_RESPONSE_AUTH_ERROR = common dso_local global i32 0, align 4
@KEY_MAX_LENGTH = common dso_local global i64 0, align 8
@VERSION = common dso_local global i32* null, align 8
@bin_read_flush_exptime = common dso_local global i32 0, align 4
@bin_reading_set_header = common dso_local global i32 0, align 4
@bin_reading_get_key = common dso_local global i32 0, align 4
@bin_reading_del_header = common dso_local global i32 0, align 4
@bin_reading_incr_header = common dso_local global i32 0, align 4
@bin_reading_stat = common dso_local global i32 0, align 4
@bin_reading_sasl_auth = common dso_local global i32 0, align 4
@bin_reading_touch_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @dispatch_bin_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_bin_command(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25, %1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND, align 4
  %34 = call i32 @write_bin_error(%struct.TYPE_15__* %32, i32 %33, i32* null, i64 0)
  %35 = load i8*, i8** @conn_closing, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %341

38:                                               ; preds = %25
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @settings, i32 0, i32 0), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = call i32 @authenticated(%struct.TYPE_15__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, align 4
  %48 = call i32 @write_bin_error(%struct.TYPE_15__* %46, i32 %47, i32* null, i64 0)
  %49 = load i8*, i8** @conn_closing, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %341

52:                                               ; preds = %41, %38
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @MEMCACHED_PROCESS_COMMAND_START(i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @KEY_MAX_LENGTH, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = call i32 @handle_binary_protocol_error(%struct.TYPE_15__* %69)
  br label %341

71:                                               ; preds = %52
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %117 [
    i32 131, label %75
    i32 161, label %78
    i32 136, label %81
    i32 155, label %84
    i32 143, label %87
    i32 157, label %90
    i32 138, label %93
    i32 153, label %96
    i32 159, label %99
    i32 140, label %102
    i32 145, label %105
    i32 146, label %108
    i32 149, label %111
    i32 150, label %114
  ]

75:                                               ; preds = %71
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  store i32 132, i32* %77, align 4
  br label %120

78:                                               ; preds = %71
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store i32 162, i32* %80, align 4
  br label %120

81:                                               ; preds = %71
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  store i32 137, i32* %83, align 4
  br label %120

84:                                               ; preds = %71
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  store i32 156, i32* %86, align 4
  br label %120

87:                                               ; preds = %71
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  store i32 144, i32* %89, align 4
  br label %120

90:                                               ; preds = %71
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store i32 158, i32* %92, align 4
  br label %120

93:                                               ; preds = %71
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  store i32 139, i32* %95, align 4
  br label %120

96:                                               ; preds = %71
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i32 154, i32* %98, align 4
  br label %120

99:                                               ; preds = %71
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  store i32 160, i32* %101, align 4
  br label %120

102:                                              ; preds = %71
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  store i32 141, i32* %104, align 4
  br label %120

105:                                              ; preds = %71
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  store i32 148, i32* %107, align 4
  br label %120

108:                                              ; preds = %71
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i32 147, i32* %110, align 4
  br label %120

111:                                              ; preds = %71
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  store i32 152, i32* %113, align 4
  br label %120

114:                                              ; preds = %71
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store i32 151, i32* %116, align 4
  br label %120

117:                                              ; preds = %71
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %330 [
    i32 128, label %124
    i32 154, label %141
    i32 142, label %162
    i32 132, label %176
    i32 162, label %176
    i32 137, label %176
    i32 145, label %193
    i32 148, label %193
    i32 146, label %193
    i32 147, label %193
    i32 156, label %209
    i32 144, label %227
    i32 158, label %227
    i32 160, label %245
    i32 141, label %245
    i32 130, label %257
    i32 139, label %266
    i32 134, label %292
    i32 135, label %306
    i32 133, label %306
    i32 129, label %318
    i32 152, label %318
    i32 149, label %318
    i32 151, label %318
    i32 150, label %318
  ]

124:                                              ; preds = %120
  %125 = load i64, i64* %4, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load i64, i64* %5, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i64, i64* %6, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %135 = load i32*, i32** @VERSION, align 8
  %136 = load i32*, i32** @VERSION, align 8
  %137 = call i32 @strlen(i32* %136)
  %138 = call i32 @write_bin_response(%struct.TYPE_15__* %134, i32* %135, i32 0, i32 0, i32 %137)
  br label %140

139:                                              ; preds = %130, %127, %124
  store i32 1, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %133
  br label %335

141:                                              ; preds = %120
  %142 = load i64, i64* %5, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %4, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load i64, i64* %4, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i64, i64* %4, align 8
  %153 = icmp eq i64 %152, 4
  br i1 %153, label %154, label %160

154:                                              ; preds = %151, %148
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %156 = load i32, i32* @bin_read_flush_exptime, align 4
  %157 = load i64, i64* %4, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @bin_read_key(%struct.TYPE_15__* %155, i32 %156, i32 %158)
  br label %161

160:                                              ; preds = %151, %144, %141
  store i32 1, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %154
  br label %335

162:                                              ; preds = %120
  %163 = load i64, i64* %4, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i64, i64* %5, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i64, i64* %6, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %173 = call i32 @write_bin_response(%struct.TYPE_15__* %172, i32* null, i32 0, i32 0, i32 0)
  br label %175

174:                                              ; preds = %168, %165, %162
  store i32 1, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %171
  br label %335

176:                                              ; preds = %120, %120, %120
  %177 = load i64, i64* %4, align 8
  %178 = icmp eq i64 %177, 8
  br i1 %178, label %179, label %191

179:                                              ; preds = %176
  %180 = load i64, i64* %5, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load i64, i64* %6, align 8
  %184 = load i64, i64* %5, align 8
  %185 = add nsw i64 %184, 8
  %186 = icmp sge i64 %183, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %189 = load i32, i32* @bin_reading_set_header, align 4
  %190 = call i32 @bin_read_key(%struct.TYPE_15__* %188, i32 %189, i32 8)
  br label %192

191:                                              ; preds = %182, %179, %176
  store i32 1, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %187
  br label %335

193:                                              ; preds = %120, %120, %120, %120
  %194 = load i64, i64* %4, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %193
  %197 = load i64, i64* %6, align 8
  %198 = load i64, i64* %5, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load i64, i64* %5, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %205 = load i32, i32* @bin_reading_get_key, align 4
  %206 = call i32 @bin_read_key(%struct.TYPE_15__* %204, i32 %205, i32 0)
  br label %208

207:                                              ; preds = %200, %196, %193
  store i32 1, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %203
  br label %335

209:                                              ; preds = %120
  %210 = load i64, i64* %5, align 8
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %209
  %213 = load i64, i64* %4, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* %5, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %221 = load i32, i32* @bin_reading_del_header, align 4
  %222 = load i64, i64* %4, align 8
  %223 = trunc i64 %222 to i32
  %224 = call i32 @bin_read_key(%struct.TYPE_15__* %220, i32 %221, i32 %223)
  br label %226

225:                                              ; preds = %215, %212, %209
  store i32 1, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %219
  br label %335

227:                                              ; preds = %120, %120
  %228 = load i64, i64* %5, align 8
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %227
  %231 = load i64, i64* %4, align 8
  %232 = icmp eq i64 %231, 20
  br i1 %232, label %233, label %243

233:                                              ; preds = %230
  %234 = load i64, i64* %6, align 8
  %235 = load i64, i64* %5, align 8
  %236 = load i64, i64* %4, align 8
  %237 = add nsw i64 %235, %236
  %238 = icmp eq i64 %234, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %241 = load i32, i32* @bin_reading_incr_header, align 4
  %242 = call i32 @bin_read_key(%struct.TYPE_15__* %240, i32 %241, i32 20)
  br label %244

243:                                              ; preds = %233, %230, %227
  store i32 1, i32* %3, align 4
  br label %244

244:                                              ; preds = %243, %239
  br label %335

245:                                              ; preds = %120, %120
  %246 = load i64, i64* %5, align 8
  %247 = icmp sgt i64 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  %249 = load i64, i64* %4, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %253 = load i32, i32* @bin_reading_set_header, align 4
  %254 = call i32 @bin_read_key(%struct.TYPE_15__* %252, i32 %253, i32 0)
  br label %256

255:                                              ; preds = %248, %245
  store i32 1, i32* %3, align 4
  br label %256

256:                                              ; preds = %255, %251
  br label %335

257:                                              ; preds = %120
  %258 = load i64, i64* %4, align 8
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %262 = load i32, i32* @bin_reading_stat, align 4
  %263 = call i32 @bin_read_key(%struct.TYPE_15__* %261, i32 %262, i32 0)
  br label %265

264:                                              ; preds = %257
  store i32 1, i32* %3, align 4
  br label %265

265:                                              ; preds = %264, %260
  br label %335

266:                                              ; preds = %120
  %267 = load i64, i64* %5, align 8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %266
  %270 = load i64, i64* %4, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %290

272:                                              ; preds = %269
  %273 = load i64, i64* %6, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %272
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %277 = call i32 @write_bin_response(%struct.TYPE_15__* %276, i32* null, i32 0, i32 0, i32 0)
  %278 = load i8*, i8** @conn_closing, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 2
  store i8* %278, i8** %280, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %275
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %287 = load i8*, i8** @conn_closing, align 8
  %288 = call i32 @conn_set_state(%struct.TYPE_15__* %286, i8* %287)
  br label %289

289:                                              ; preds = %285, %275
  br label %291

290:                                              ; preds = %272, %269, %266
  store i32 1, i32* %3, align 4
  br label %291

291:                                              ; preds = %290, %289
  br label %335

292:                                              ; preds = %120
  %293 = load i64, i64* %4, align 8
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = load i64, i64* %5, align 8
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = load i64, i64* %6, align 8
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %303 = call i32 @bin_list_sasl_mechs(%struct.TYPE_15__* %302)
  br label %305

304:                                              ; preds = %298, %295, %292
  store i32 1, i32* %3, align 4
  br label %305

305:                                              ; preds = %304, %301
  br label %335

306:                                              ; preds = %120, %120
  %307 = load i64, i64* %4, align 8
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %306
  %310 = load i64, i64* %5, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %314 = load i32, i32* @bin_reading_sasl_auth, align 4
  %315 = call i32 @bin_read_key(%struct.TYPE_15__* %313, i32 %314, i32 0)
  br label %317

316:                                              ; preds = %309, %306
  store i32 1, i32* %3, align 4
  br label %317

317:                                              ; preds = %316, %312
  br label %335

318:                                              ; preds = %120, %120, %120, %120, %120
  %319 = load i64, i64* %4, align 8
  %320 = icmp eq i64 %319, 4
  br i1 %320, label %321, label %328

321:                                              ; preds = %318
  %322 = load i64, i64* %5, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %326 = load i32, i32* @bin_reading_touch_key, align 4
  %327 = call i32 @bin_read_key(%struct.TYPE_15__* %325, i32 %326, i32 4)
  br label %329

328:                                              ; preds = %321, %318
  store i32 1, i32* %3, align 4
  br label %329

329:                                              ; preds = %328, %324
  br label %335

330:                                              ; preds = %120
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %332 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND, align 4
  %333 = load i64, i64* %6, align 8
  %334 = call i32 @write_bin_error(%struct.TYPE_15__* %331, i32 %332, i32* null, i64 %333)
  br label %335

335:                                              ; preds = %330, %329, %317, %305, %291, %265, %256, %244, %226, %208, %192, %175, %161, %140
  %336 = load i32, i32* %3, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %340 = call i32 @handle_binary_protocol_error(%struct.TYPE_15__* %339)
  br label %341

341:                                              ; preds = %31, %45, %68, %338, %335
  ret void
}

declare dso_local i32 @write_bin_error(%struct.TYPE_15__*, i32, i32*, i64) #1

declare dso_local i32 @authenticated(%struct.TYPE_15__*) #1

declare dso_local i32 @MEMCACHED_PROCESS_COMMAND_START(i32, i32, i32) #1

declare dso_local i32 @handle_binary_protocol_error(%struct.TYPE_15__*) #1

declare dso_local i32 @write_bin_response(%struct.TYPE_15__*, i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @bin_read_key(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @bin_list_sasl_mechs(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
