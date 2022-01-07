; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_core.c_find_autocomplete.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_core.c_find_autocomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__, i32, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_28__** }
%struct.TYPE_26__ = type { i64, i64, i32, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i8*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"cfg.newtab\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i32*, %struct.TYPE_25__*)* @find_autocomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_autocomplete(%struct.TYPE_27__* %0, i32* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %9, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %283

27:                                               ; preds = %3
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %28, align 16
  br label %29

29:                                               ; preds = %103, %99, %27
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %104

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @r_str_trim_wp(i8* %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = icmp sge i64 %43, 256
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %38, %33
  store i32 0, i32* %4, align 4
  br label %283

50:                                               ; preds = %45
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i8* %51, i8* %52, i32 %58)
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %68 = call %struct.TYPE_26__* @r_core_autocomplete_find(%struct.TYPE_26__* %66, i8* %67, i32 0)
  store %struct.TYPE_26__* %68, %struct.TYPE_26__** %8, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %70 = icmp ne %struct.TYPE_26__* %69, null
  br i1 %70, label %71, label %102

71:                                               ; preds = %50
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %71
  %80 = load i8*, i8** %10, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %88, label %102

88:                                               ; preds = %79
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = call i8* @r_str_trim_ro(i8* %93)
  store i8* %94, i8** %10, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 133
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %29

100:                                              ; preds = %88
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %101, %struct.TYPE_26__** %9, align 8
  br label %103

102:                                              ; preds = %79, %71, %50
  br label %104

103:                                              ; preds = %100
  br label %29

104:                                              ; preds = %102, %29
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @r_line_completion_clear(i32* %105)
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  switch i64 %109, label %180 [
    i64 130, label %110
    i64 138, label %115
    i64 137, label %120
    i64 140, label %125
    i64 128, label %130
    i64 141, label %135
    i64 132, label %140
    i64 135, label %145
    i64 142, label %150
    i64 136, label %155
    i64 134, label %160
    i64 139, label %165
    i64 129, label %169
    i64 131, label %174
    i64 133, label %179
  ]

110:                                              ; preds = %104
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @autocomplete_functions(%struct.TYPE_27__* %111, i32* %112, i8* %113)
  br label %115

115:                                              ; preds = %104, %110
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @autocomplete_flags(%struct.TYPE_27__* %116, i32* %117, i8* %118)
  br label %282

120:                                              ; preds = %104
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @autocomplete_flagspaces(%struct.TYPE_27__* %121, i32* %122, i8* %123)
  br label %282

125:                                              ; preds = %104
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @autocomplete_functions(%struct.TYPE_27__* %126, i32* %127, i8* %128)
  br label %282

130:                                              ; preds = %104
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @autocomplete_zignatures(%struct.TYPE_27__* %131, i32* %132, i8* %133)
  br label %282

135:                                              ; preds = %104
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @autocomplete_evals(%struct.TYPE_27__* %136, i32* %137, i8* %138)
  br label %282

140:                                              ; preds = %104
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @autocomplete_project(%struct.TYPE_27__* %141, i32* %142, i8* %143)
  br label %282

145:                                              ; preds = %104
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 @autocomplete_minus(%struct.TYPE_27__* %146, i32* %147, i8* %148)
  br label %282

150:                                              ; preds = %104
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @autocomplete_breakpoints(%struct.TYPE_27__* %151, i32* %152, i8* %153)
  br label %282

155:                                              ; preds = %104
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @autocomplete_macro(%struct.TYPE_27__* %156, i32* %157, i8* %158)
  br label %282

160:                                              ; preds = %104
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 @autocomplete_ms_file(%struct.TYPE_27__* %161, i32* %162, i8* %163)
  br label %282

165:                                              ; preds = %104
  %166 = load i32*, i32** %6, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = call i32 @autocomplete_file(i32* %166, i8* %167)
  br label %282

169:                                              ; preds = %104
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 @autocomplete_theme(%struct.TYPE_27__* %170, i32* %171, i8* %172)
  br label %282

174:                                              ; preds = %104
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @autocomplete_sdb(%struct.TYPE_27__* %175, i32* %176, i8* %177)
  br label %282

179:                                              ; preds = %104
  br label %282

180:                                              ; preds = %104
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @r_config_get_i(i32 %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %242

186:                                              ; preds = %180
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  store %struct.TYPE_28__* %188, %struct.TYPE_28__** %14, align 8
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %223, %186
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %198 = icmp ne %struct.TYPE_28__* %197, null
  br label %199

199:                                              ; preds = %196, %189
  %200 = phi i1 [ false, %189 ], [ %198, %196 ]
  br i1 %200, label %201, label %226

201:                                              ; preds = %199
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i64
  store i64 %206, i64* %15, align 8
  %207 = load i64, i64* %15, align 8
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %209, align 8
  %211 = call i64 @R_ARRAY_SIZE(%struct.TYPE_28__** %210)
  %212 = icmp ult i64 %207, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %201
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %215, align 8
  %217 = load i64, i64* %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %216, i64 %217
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %218, align 8
  br label %221

220:                                              ; preds = %201
  br label %221

221:                                              ; preds = %220, %213
  %222 = phi %struct.TYPE_28__* [ %219, %213 ], [ null, %220 ]
  store %struct.TYPE_28__* %222, %struct.TYPE_28__** %14, align 8
  br label %223

223:                                              ; preds = %221
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  br label %189

226:                                              ; preds = %199
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %228 = icmp ne %struct.TYPE_28__* %227, null
  br i1 %228, label %229, label %241

229:                                              ; preds = %226
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @r_core_cmd_help(%struct.TYPE_27__* %235, i32 %238)
  %240 = call i32 (...) @r_cons_flush()
  store i32 1, i32* %4, align 4
  br label %283

241:                                              ; preds = %229, %226
  br label %242

242:                                              ; preds = %241, %180
  %243 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %244 = call i32 @strlen(i8* %243)
  store i32 %244, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %245

245:                                              ; preds = %278, %242
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp slt i32 %246, %249
  br i1 %250, label %251, label %281

251:                                              ; preds = %245
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %255, i64 %257
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %16, align 4
  %263 = call i32 @strncmp(i8* %252, i32 %261, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %277, label %265

265:                                              ; preds = %251
  %266 = load i32*, i32** %6, align 8
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %269, i64 %271
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @r_line_completion_push(i32* %266, i32 %275)
  br label %277

277:                                              ; preds = %265, %251
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %13, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %13, align 4
  br label %245

281:                                              ; preds = %245
  br label %282

282:                                              ; preds = %281, %179, %174, %169, %165, %160, %155, %150, %145, %140, %135, %130, %125, %120, %115
  store i32 1, i32* %4, align 4
  br label %283

283:                                              ; preds = %282, %234, %49, %26
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local i8* @r_str_trim_wp(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_26__* @r_core_autocomplete_find(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @r_line_completion_clear(i32*) #1

declare dso_local i32 @autocomplete_functions(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_flags(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_flagspaces(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_zignatures(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_evals(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_project(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_minus(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_breakpoints(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_macro(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_ms_file(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_file(i32*, i8*) #1

declare dso_local i32 @autocomplete_theme(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @autocomplete_sdb(%struct.TYPE_27__*, i32*, i8*) #1

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i64 @R_ARRAY_SIZE(%struct.TYPE_28__**) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @r_line_completion_push(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
