; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___direction_hexdump_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___direction_hexdump_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__*, i32, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"hex.cols\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__direction_hexdump_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_16__* @__get_cur_panel(i32* %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @r_config_get_i(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 16, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %277 [
    i32 130, label %29
    i32 129, label %71
    i32 128, label %134
    i32 131, label %212
  ]

29:                                               ; preds = %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %45
  store i32 %51, i32* %49, align 4
  br label %70

52:                                               ; preds = %29
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = call i32 @__cursor_left(%struct.TYPE_17__* %60)
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %59
  br label %70

70:                                               ; preds = %69, %36
  br label %277

71:                                               ; preds = %23
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sdiv i32 %76, %77
  %79 = add nsw i32 %78, 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 5
  %87 = icmp sgt i32 %79, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %71
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = srem i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %88
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %133

115:                                              ; preds = %88, %71
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = call i32 @__cursor_right(%struct.TYPE_17__* %123)
  br label %132

125:                                              ; preds = %115
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %122
  br label %133

133:                                              ; preds = %132, %99
  br label %277

134:                                              ; preds = %23
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %196, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %141
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = sdiv i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %148
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, %158
  store i32 %164, i32* %162, align 4
  br label %173

165:                                              ; preds = %148
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %165, %157
  br label %195

174:                                              ; preds = %141
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %185 = call i32 @__set_panel_addr(%struct.TYPE_17__* %183, %struct.TYPE_16__* %184, i32 0)
  br label %194

186:                                              ; preds = %174
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %192, %187
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %186, %182
  br label %195

195:                                              ; preds = %194, %173
  br label %211

196:                                              ; preds = %134
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %196
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %203, %196
  br label %211

211:                                              ; preds = %210, %195
  br label %277

212:                                              ; preds = %23
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %269, label %219

219:                                              ; preds = %212
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %260

226:                                              ; preds = %219
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %8, align 4
  %233 = sdiv i32 %231, %232
  %234 = add nsw i32 %233, 1
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 %240, 5
  %242 = icmp sgt i32 %234, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %226
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, %244
  store i32 %250, i32* %248, align 4
  br label %259

251:                                              ; preds = %226
  %252 = load i32, i32* %8, align 4
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, %252
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %251, %243
  br label %268

260:                                              ; preds = %219
  %261 = load i32, i32* %8, align 4
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, %261
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %260, %259
  br label %276

269:                                              ; preds = %212
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %269, %268
  br label %277

277:                                              ; preds = %70, %133, %211, %276, %23
  ret void
}

declare dso_local %struct.TYPE_16__* @__get_cur_panel(i32*) #1

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @__cursor_left(%struct.TYPE_17__*) #1

declare dso_local i32 @__cursor_right(%struct.TYPE_17__*) #1

declare dso_local i32 @__set_panel_addr(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
