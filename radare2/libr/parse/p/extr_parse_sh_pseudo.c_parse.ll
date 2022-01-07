; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_sh_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_sh_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [5 x i8*], align 16
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @WSZ, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load i32, i32* @WSZ, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %32 = load i32, i32* @WSZ, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  %35 = load i32, i32* @WSZ, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  %38 = load i32, i32* @WSZ, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i8* @malloc(i32 %42)
  store i8* %43, i8** %16, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %277

46:                                               ; preds = %3
  %47 = load i8*, i8** %16, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @memcpy(i8* %47, i8* %48, i32 %50)
  %52 = load i8*, i8** %16, align 8
  %53 = call i32 @r_str_trim(i8* %52)
  %54 = load i8*, i8** %16, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %274

57:                                               ; preds = %46
  %58 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %58, align 16
  %59 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %59, align 16
  %60 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %60, align 16
  %61 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %61, align 16
  %62 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %62, align 16
  %63 = load i8*, i8** %16, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 32)
  store i8* %64, i8** %17, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i8*, i8** %16, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 9)
  store i8* %69, i8** %17, align 8
  br label %70

70:                                               ; preds = %67, %57
  %71 = load i8*, i8** %17, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %239

73:                                               ; preds = %70
  %74 = load i8*, i8** %17, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %17, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %17, align 8
  br label %77

77:                                               ; preds = %83, %73
  %78 = load i8*, i8** %17, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %17, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %17, align 8
  br label %77

86:                                               ; preds = %77
  %87 = load i8*, i8** %16, align 8
  %88 = load i32, i32* @WSZ, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @strncpy(i8* %28, i8* %87, i32 %89)
  %91 = load i8*, i8** %17, align 8
  %92 = load i32, i32* @WSZ, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @strncpy(i8* %31, i8* %91, i32 %93)
  %95 = load i8*, i8** %17, align 8
  store i8* %95, i8** %18, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = call i8* @strchr(i8* %96, i8 signext 40)
  store i8* %97, i8** %19, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %86
  %101 = load i8*, i8** %17, align 8
  %102 = call i8* @strchr(i8* %101, i8 signext 44)
  %103 = load i8*, i8** %19, align 8
  %104 = icmp ugt i8* %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i8*, i8** %17, align 8
  %107 = call i8* @strchr(i8* %106, i8 signext 41)
  store i8* %107, i8** %17, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %17, align 8
  %112 = call i8* @strchr(i8* %111, i8 signext 44)
  store i8* %112, i8** %17, align 8
  br label %113

113:                                              ; preds = %110, %105
  br label %117

114:                                              ; preds = %100, %86
  %115 = load i8*, i8** %17, align 8
  %116 = call i8* @strchr(i8* %115, i8 signext 44)
  store i8* %116, i8** %17, align 8
  br label %117

117:                                              ; preds = %114, %113
  %118 = load i8*, i8** %17, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %238

120:                                              ; preds = %117
  %121 = load i8*, i8** %17, align 8
  store i8 0, i8* %121, align 1
  %122 = load i8*, i8** %17, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %17, align 8
  br label %124

124:                                              ; preds = %130, %120
  %125 = load i8*, i8** %17, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 32
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %17, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %17, align 8
  br label %124

133:                                              ; preds = %124
  %134 = load i8*, i8** %18, align 8
  %135 = load i32, i32* @WSZ, align 4
  %136 = sub nsw i32 %135, 1
  %137 = call i32 @strncpy(i8* %31, i8* %134, i32 %136)
  %138 = load i8*, i8** %17, align 8
  %139 = load i32, i32* @WSZ, align 4
  %140 = sub nsw i32 %139, 1
  %141 = call i32 @strncpy(i8* %34, i8* %138, i32 %140)
  %142 = load i8*, i8** %17, align 8
  store i8* %142, i8** %18, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = call i8* @strchr(i8* %143, i8 signext 40)
  store i8* %144, i8** %19, align 8
  %145 = load i8*, i8** %19, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %161

147:                                              ; preds = %133
  %148 = load i8*, i8** %17, align 8
  %149 = call i8* @strchr(i8* %148, i8 signext 44)
  %150 = load i8*, i8** %19, align 8
  %151 = icmp ugt i8* %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i8*, i8** %17, align 8
  %154 = call i8* @strchr(i8* %153, i8 signext 41)
  store i8* %154, i8** %17, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i8*, i8** %17, align 8
  %159 = call i8* @strchr(i8* %158, i8 signext 44)
  store i8* %159, i8** %17, align 8
  br label %160

160:                                              ; preds = %157, %152
  br label %164

161:                                              ; preds = %147, %133
  %162 = load i8*, i8** %17, align 8
  %163 = call i8* @strchr(i8* %162, i8 signext 44)
  store i8* %163, i8** %17, align 8
  br label %164

164:                                              ; preds = %161, %160
  %165 = load i8*, i8** %17, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %237

167:                                              ; preds = %164
  %168 = load i8*, i8** %17, align 8
  store i8 0, i8* %168, align 1
  %169 = load i8*, i8** %17, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %17, align 8
  br label %171

171:                                              ; preds = %177, %167
  %172 = load i8*, i8** %17, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 32
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176
  %178 = load i8*, i8** %17, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %17, align 8
  br label %171

180:                                              ; preds = %171
  %181 = load i8*, i8** %18, align 8
  %182 = load i32, i32* @WSZ, align 4
  %183 = sub nsw i32 %182, 1
  %184 = call i32 @strncpy(i8* %34, i8* %181, i32 %183)
  %185 = load i8*, i8** %17, align 8
  %186 = load i32, i32* @WSZ, align 4
  %187 = sub nsw i32 %186, 1
  %188 = call i32 @strncpy(i8* %37, i8* %185, i32 %187)
  %189 = load i8*, i8** %17, align 8
  store i8* %189, i8** %18, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = call i8* @strchr(i8* %190, i8 signext 40)
  store i8* %191, i8** %19, align 8
  %192 = load i8*, i8** %19, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %208

194:                                              ; preds = %180
  %195 = load i8*, i8** %17, align 8
  %196 = call i8* @strchr(i8* %195, i8 signext 44)
  %197 = load i8*, i8** %19, align 8
  %198 = icmp ugt i8* %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %194
  %200 = load i8*, i8** %17, align 8
  %201 = call i8* @strchr(i8* %200, i8 signext 41)
  store i8* %201, i8** %17, align 8
  %202 = load i8*, i8** %17, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i8*, i8** %17, align 8
  %206 = call i8* @strchr(i8* %205, i8 signext 44)
  store i8* %206, i8** %17, align 8
  br label %207

207:                                              ; preds = %204, %199
  br label %211

208:                                              ; preds = %194, %180
  %209 = load i8*, i8** %17, align 8
  %210 = call i8* @strchr(i8* %209, i8 signext 44)
  store i8* %210, i8** %17, align 8
  br label %211

211:                                              ; preds = %208, %207
  %212 = load i8*, i8** %17, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %236

214:                                              ; preds = %211
  %215 = load i8*, i8** %17, align 8
  store i8 0, i8* %215, align 1
  %216 = load i8*, i8** %17, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %17, align 8
  br label %218

218:                                              ; preds = %224, %214
  %219 = load i8*, i8** %17, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 32
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  br label %224

224:                                              ; preds = %223
  %225 = load i8*, i8** %17, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %17, align 8
  br label %218

227:                                              ; preds = %218
  %228 = load i8*, i8** %18, align 8
  %229 = load i32, i32* @WSZ, align 4
  %230 = sub nsw i32 %229, 1
  %231 = call i32 @strncpy(i8* %37, i8* %228, i32 %230)
  %232 = load i8*, i8** %17, align 8
  %233 = load i32, i32* @WSZ, align 4
  %234 = sub nsw i32 %233, 1
  %235 = call i32 @strncpy(i8* %40, i8* %232, i32 %234)
  br label %236

236:                                              ; preds = %227, %211
  br label %237

237:                                              ; preds = %236, %164
  br label %238

238:                                              ; preds = %237, %117
  br label %244

239:                                              ; preds = %70
  %240 = load i8*, i8** %16, align 8
  %241 = load i32, i32* @WSZ, align 4
  %242 = sub nsw i32 %241, 1
  %243 = call i32 @strncpy(i8* %28, i8* %240, i32 %242)
  br label %244

244:                                              ; preds = %239, %238
  %245 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 0
  store i8* %28, i8** %245, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 1
  store i8* %31, i8** %246, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 1
  store i8* %34, i8** %247, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 1
  store i8* %37, i8** %248, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 1
  store i8* %40, i8** %249, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %8, align 4
  br label %250

250:                                              ; preds = %266, %244
  %251 = load i32, i32* %8, align 4
  %252 = icmp slt i32 %251, 5
  br i1 %252, label %253, label %269

253:                                              ; preds = %250
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %253
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %22, align 4
  br label %265

265:                                              ; preds = %262, %253
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %8, align 4
  br label %250

269:                                              ; preds = %250
  %270 = load i32, i32* %22, align 4
  %271 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 0
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @replace(i32 %270, i8** %271, i8* %272)
  br label %274

274:                                              ; preds = %269, %46
  %275 = load i8*, i8** %16, align 8
  %276 = call i32 @free(i8* %275)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %277

277:                                              ; preds = %274, %45
  %278 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %278)
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @replace(i32, i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
