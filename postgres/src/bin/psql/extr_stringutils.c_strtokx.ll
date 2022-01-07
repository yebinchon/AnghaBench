; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_stringutils.c_strtokx.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_stringutils.c_strtokx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strtokx.storage = internal global i8* null, align 8
@strtokx.string = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strtokx(i8* %0, i8* %1, i8* %2, i8* %3, i8 signext %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8 %4, i8* %14, align 1
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %8
  %27 = load i8*, i8** @strtokx.storage, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 1
  %33 = call i8* @pg_malloc(i32 %32)
  store i8* %33, i8** @strtokx.storage, align 8
  %34 = load i8*, i8** @strtokx.storage, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strcpy(i8* %34, i8* %35)
  %37 = load i8*, i8** @strtokx.storage, align 8
  store i8* %37, i8** @strtokx.string, align 8
  br label %38

38:                                               ; preds = %26, %8
  %39 = load i8*, i8** @strtokx.storage, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i8* null, i8** %9, align 8
  br label %285

42:                                               ; preds = %38
  %43 = load i8*, i8** @strtokx.string, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @strspn(i8* %43, i8* %44)
  store i32 %45, i32* %18, align 4
  %46 = load i8*, i8** @strtokx.string, align 8
  %47 = load i32, i32* %18, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %19, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i8*, i8** @strtokx.storage, align 8
  %56 = call i32 @free(i8* %55)
  store i8* null, i8** @strtokx.storage, align 8
  store i8* null, i8** @strtokx.string, align 8
  store i8* null, i8** %9, align 8
  br label %285

57:                                               ; preds = %42
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %95

60:                                               ; preds = %57
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @strchr(i8* %61, i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %60
  %67 = load i8*, i8** %19, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %20, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %20, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @strchr(i8* %74, i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %20, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8*, i8** %20, align 8
  %83 = load i8*, i8** %20, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = add nsw i32 %84, 1
  %86 = call i32 @memmove(i8* %81, i8* %82, i32 %85)
  br label %87

87:                                               ; preds = %79, %73
  %88 = load i8*, i8** %20, align 8
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %20, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %90, i8** @strtokx.string, align 8
  br label %93

91:                                               ; preds = %66
  %92 = load i8*, i8** %20, align 8
  store i8* %92, i8** @strtokx.string, align 8
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i8*, i8** %19, align 8
  store i8* %94, i8** %9, align 8
  br label %285

95:                                               ; preds = %60, %57
  %96 = load i8*, i8** %19, align 8
  store i8* %96, i8** %20, align 8
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = load i8*, i8** %20, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 69
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %20, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 101
  br i1 %108, label %109, label %118

109:                                              ; preds = %104, %99
  %110 = load i8*, i8** %20, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 39
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8 92, i8* %14, align 1
  %116 = load i8*, i8** %20, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %20, align 8
  br label %118

118:                                              ; preds = %115, %109, %104, %95
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %225

121:                                              ; preds = %118
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %20, align 8
  %124 = load i8, i8* %123, align 1
  %125 = call i64 @strchr(i8* %122, i8 signext %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %225

127:                                              ; preds = %121
  %128 = load i8*, i8** %20, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %20, align 8
  %130 = load i8, i8* %128, align 1
  store i8 %130, i8* %21, align 1
  br label %131

131:                                              ; preds = %182, %127
  %132 = load i8*, i8** %20, align 8
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %189

135:                                              ; preds = %131
  %136 = load i8*, i8** %20, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = load i8, i8* %14, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load i8*, i8** %20, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i8*, i8** %20, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %20, align 8
  br label %181

151:                                              ; preds = %142, %135
  %152 = load i8*, i8** %20, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* %21, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %151
  %159 = load i8*, i8** %20, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8, i8* %21, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load i8*, i8** %20, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %20, align 8
  br label %180

169:                                              ; preds = %158, %151
  %170 = load i8*, i8** %20, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = load i8, i8* %21, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i8*, i8** %20, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %20, align 8
  br label %189

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180, %148
  br label %182

182:                                              ; preds = %181
  %183 = load i8*, i8** %20, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @PQmblen(i8* %183, i32 %184)
  %186 = load i8*, i8** %20, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %20, align 8
  br label %131

189:                                              ; preds = %176, %131
  %190 = load i8*, i8** %20, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %189
  %195 = load i8*, i8** %11, align 8
  %196 = load i8*, i8** %20, align 8
  %197 = load i8, i8* %196, align 1
  %198 = call i64 @strchr(i8* %195, i8 signext %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %194
  %201 = load i8*, i8** %20, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8*, i8** %20, align 8
  %204 = load i8*, i8** %20, align 8
  %205 = call i32 @strlen(i8* %204)
  %206 = add nsw i32 %205, 1
  %207 = call i32 @memmove(i8* %202, i8* %203, i32 %206)
  br label %208

208:                                              ; preds = %200, %194
  %209 = load i8*, i8** %20, align 8
  store i8 0, i8* %209, align 1
  %210 = load i8*, i8** %20, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  store i8* %211, i8** @strtokx.string, align 8
  br label %214

212:                                              ; preds = %189
  %213 = load i8*, i8** %20, align 8
  store i8* %213, i8** @strtokx.string, align 8
  br label %214

214:                                              ; preds = %212, %208
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i8*, i8** %19, align 8
  %219 = load i8, i8* %21, align 1
  %220 = load i8, i8* %14, align 1
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @strip_quotes(i8* %218, i8 signext %219, i8 signext %220, i32 %221)
  br label %223

223:                                              ; preds = %217, %214
  %224 = load i8*, i8** %19, align 8
  store i8* %224, i8** %9, align 8
  br label %285

225:                                              ; preds = %121, %118
  %226 = load i8*, i8** %19, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = call i32 @strcspn(i8* %226, i8* %227)
  store i32 %228, i32* %18, align 4
  %229 = load i8*, i8** %12, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %241

231:                                              ; preds = %225
  %232 = load i8*, i8** %19, align 8
  %233 = load i8*, i8** %12, align 8
  %234 = call i32 @strcspn(i8* %232, i8* %233)
  store i32 %234, i32* %22, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %22, align 4
  %237 = icmp ugt i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %231
  %239 = load i32, i32* %22, align 4
  store i32 %239, i32* %18, align 4
  br label %240

240:                                              ; preds = %238, %231
  br label %241

241:                                              ; preds = %240, %225
  %242 = load i8*, i8** %13, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %254

244:                                              ; preds = %241
  %245 = load i8*, i8** %19, align 8
  %246 = load i8*, i8** %13, align 8
  %247 = call i32 @strcspn(i8* %245, i8* %246)
  store i32 %247, i32* %23, align 4
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %23, align 4
  %250 = icmp ugt i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %244
  %252 = load i32, i32* %23, align 4
  store i32 %252, i32* %18, align 4
  br label %253

253:                                              ; preds = %251, %244
  br label %254

254:                                              ; preds = %253, %241
  %255 = load i8*, i8** %19, align 8
  %256 = load i32, i32* %18, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  store i8* %258, i8** %20, align 8
  %259 = load i8*, i8** %20, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %281

263:                                              ; preds = %254
  %264 = load i8*, i8** %11, align 8
  %265 = load i8*, i8** %20, align 8
  %266 = load i8, i8* %265, align 1
  %267 = call i64 @strchr(i8* %264, i8 signext %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %277, label %269

269:                                              ; preds = %263
  %270 = load i8*, i8** %20, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  %272 = load i8*, i8** %20, align 8
  %273 = load i8*, i8** %20, align 8
  %274 = call i32 @strlen(i8* %273)
  %275 = add nsw i32 %274, 1
  %276 = call i32 @memmove(i8* %271, i8* %272, i32 %275)
  br label %277

277:                                              ; preds = %269, %263
  %278 = load i8*, i8** %20, align 8
  store i8 0, i8* %278, align 1
  %279 = load i8*, i8** %20, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 1
  store i8* %280, i8** @strtokx.string, align 8
  br label %283

281:                                              ; preds = %254
  %282 = load i8*, i8** %20, align 8
  store i8* %282, i8** @strtokx.string, align 8
  br label %283

283:                                              ; preds = %281, %277
  %284 = load i8*, i8** %19, align 8
  store i8* %284, i8** %9, align 8
  br label %285

285:                                              ; preds = %283, %223, %93, %54, %41
  %286 = load i8*, i8** %9, align 8
  ret i8* %286
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pg_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @PQmblen(i8*, i32) #1

declare dso_local i32 @strip_quotes(i8*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
