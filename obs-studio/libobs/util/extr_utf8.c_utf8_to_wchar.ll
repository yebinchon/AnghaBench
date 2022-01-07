; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_utf8.c_utf8_to_wchar.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_utf8.c_utf8_to_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF8_IGNORE_ERROR = common dso_local global i32 0, align 4
@_SEQ2 = common dso_local global i8 0, align 1
@_SEQ3 = common dso_local global i8 0, align 1
@_SEQ4 = common dso_local global i8 0, align 1
@_SEQ5 = common dso_local global i8 0, align 1
@_SEQ6 = common dso_local global i8 0, align 1
@_NXT = common dso_local global i8 0, align 1
@_BOM = common dso_local global i64 0, align 8
@UTF8_SKIP_BOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_to_wchar(i8* %0, i64 %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %5
  store i64 0, i64* %6, align 8
  br label %291

29:                                               ; preds = %25, %22
  store i64 0, i64* %17, align 8
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ inttoptr (i64 -1 to i8*), %37 ]
  store i8* %39, i8** %13, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64* %42, i64** %14, align 8
  br label %43

43:                                               ; preds = %285, %38
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %289

47:                                               ; preds = %43
  %48 = load i8*, i8** %12, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %289

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @utf8_forbidden(i8 zeroext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @UTF8_IGNORE_ERROR, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i64 0, i64* %6, align 8
  br label %291

63:                                               ; preds = %57, %52
  store i64 1, i64* %16, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i8*, i8** %12, align 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i64
  store i64 %72, i64* %15, align 8
  br label %155

73:                                               ; preds = %63
  %74 = load i8*, i8** %12, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 224
  %78 = load i8, i8* @_SEQ2, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  store i64 2, i64* %16, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 31
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %15, align 8
  br label %154

87:                                               ; preds = %73
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 240
  %92 = load i8, i8* @_SEQ3, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  store i64 3, i64* %16, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 15
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %15, align 8
  br label %153

101:                                              ; preds = %87
  %102 = load i8*, i8** %12, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 248
  %106 = load i8, i8* @_SEQ4, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  store i64 4, i64* %16, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 7
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %15, align 8
  br label %152

115:                                              ; preds = %101
  %116 = load i8*, i8** %12, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 252
  %120 = load i8, i8* @_SEQ5, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  store i64 5, i64* %16, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 3
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %15, align 8
  br label %151

129:                                              ; preds = %115
  %130 = load i8*, i8** %12, align 8
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 254
  %134 = load i8, i8* @_SEQ6, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  store i64 6, i64* %16, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 1
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %15, align 8
  br label %150

143:                                              ; preds = %129
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @UTF8_IGNORE_ERROR, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i64 0, i64* %6, align 8
  br label %291

149:                                              ; preds = %143
  br label %285

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %123
  br label %152

152:                                              ; preds = %151, %109
  br label %153

153:                                              ; preds = %152, %95
  br label %154

154:                                              ; preds = %153, %81
  br label %155

155:                                              ; preds = %154, %69
  %156 = load i8*, i8** %13, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = load i64, i64* %16, align 8
  %162 = sub i64 %161, 1
  %163 = icmp ule i64 %160, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %155
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @UTF8_IGNORE_ERROR, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i64 0, i64* %6, align 8
  br label %291

170:                                              ; preds = %164
  store i64 1, i64* %16, align 8
  br label %285

171:                                              ; preds = %155
  %172 = load i64, i64* %16, align 8
  %173 = icmp ugt i64 %172, 1
  br i1 %173, label %174, label %206

174:                                              ; preds = %171
  store i64 1, i64* %18, align 8
  br label %175

175:                                              ; preds = %191, %174
  %176 = load i64, i64* %18, align 8
  %177 = load i64, i64* %16, align 8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %175
  %180 = load i8*, i8** %12, align 8
  %181 = load i64, i64* %18, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 192
  %186 = load i8, i8* @_NXT, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp ne i32 %185, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  br label %194

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %18, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %18, align 8
  br label %175

194:                                              ; preds = %189, %175
  %195 = load i64, i64* %18, align 8
  %196 = load i64, i64* %16, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @UTF8_IGNORE_ERROR, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  store i64 0, i64* %6, align 8
  br label %291

204:                                              ; preds = %198
  store i64 1, i64* %16, align 8
  br label %285

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %171
  %207 = load i64, i64* %17, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %17, align 8
  %209 = load i64*, i64** %9, align 8
  %210 = icmp eq i64* %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %285

212:                                              ; preds = %206
  %213 = load i64*, i64** %9, align 8
  %214 = load i64*, i64** %14, align 8
  %215 = icmp uge i64* %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i64 0, i64* %6, align 8
  br label %291

217:                                              ; preds = %212
  %218 = load i64*, i64** %9, align 8
  store i64 0, i64* %218, align 8
  store i64 0, i64* %19, align 8
  store i64 1, i64* %18, align 8
  br label %219

219:                                              ; preds = %240, %217
  %220 = load i64, i64* %18, align 8
  %221 = load i64, i64* %16, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %243

223:                                              ; preds = %219
  %224 = load i8*, i8** %12, align 8
  %225 = load i64, i64* %16, align 8
  %226 = load i64, i64* %18, align 8
  %227 = sub i64 %225, %226
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %230, 63
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* %19, align 8
  %234 = shl i64 %232, %233
  %235 = load i64*, i64** %9, align 8
  %236 = load i64, i64* %235, align 8
  %237 = or i64 %236, %234
  store i64 %237, i64* %235, align 8
  %238 = load i64, i64* %19, align 8
  %239 = add i64 %238, 6
  store i64 %239, i64* %19, align 8
  br label %240

240:                                              ; preds = %223
  %241 = load i64, i64* %18, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %18, align 8
  br label %219

243:                                              ; preds = %219
  %244 = load i64, i64* %15, align 8
  %245 = load i64, i64* %19, align 8
  %246 = shl i64 %244, %245
  %247 = load i64*, i64** %9, align 8
  %248 = load i64, i64* %247, align 8
  %249 = or i64 %248, %246
  store i64 %249, i64* %247, align 8
  %250 = load i64*, i64** %9, align 8
  %251 = load i64, i64* %250, align 8
  %252 = call i64 @wchar_forbidden(i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %243
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* @UTF8_IGNORE_ERROR, align 4
  %257 = and i32 %255, %256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  store i64 0, i64* %6, align 8
  br label %291

260:                                              ; preds = %254
  %261 = load i64, i64* %17, align 8
  %262 = add i64 %261, -1
  store i64 %262, i64* %17, align 8
  %263 = load i64*, i64** %9, align 8
  %264 = getelementptr inbounds i64, i64* %263, i32 -1
  store i64* %264, i64** %9, align 8
  br label %265

265:                                              ; preds = %260
  br label %282

266:                                              ; preds = %243
  %267 = load i64*, i64** %9, align 8
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @_BOM, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %266
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* @UTF8_SKIP_BOM, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %271
  %277 = load i64, i64* %17, align 8
  %278 = add i64 %277, -1
  store i64 %278, i64* %17, align 8
  %279 = load i64*, i64** %9, align 8
  %280 = getelementptr inbounds i64, i64* %279, i32 -1
  store i64* %280, i64** %9, align 8
  br label %281

281:                                              ; preds = %276, %271, %266
  br label %282

282:                                              ; preds = %281, %265
  %283 = load i64*, i64** %9, align 8
  %284 = getelementptr inbounds i64, i64* %283, i32 1
  store i64* %284, i64** %9, align 8
  br label %285

285:                                              ; preds = %282, %211, %204, %170, %149
  %286 = load i64, i64* %16, align 8
  %287 = load i8*, i8** %12, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 %286
  store i8* %288, i8** %12, align 8
  br label %43

289:                                              ; preds = %51, %43
  %290 = load i64, i64* %17, align 8
  store i64 %290, i64* %6, align 8
  br label %291

291:                                              ; preds = %289, %259, %216, %203, %169, %148, %62, %28
  %292 = load i64, i64* %6, align 8
  ret i64 %292
}

declare dso_local i64 @utf8_forbidden(i8 zeroext) #1

declare dso_local i64 @wchar_forbidden(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
