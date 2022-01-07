; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeDate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@MAXDATEFIELDS = common dso_local global i32 0, align 4
@IGNORE_DTF = common dso_local global i32 0, align 4
@BC = common dso_local global i32 0, align 4
@DOY = common dso_local global i32 0, align 4
@TZ = common dso_local global i32 0, align 4
@DTK_DATE_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, %struct.tm*, i32)* @DecodeDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeDate(i8* %0, i32 %1, i32* %2, %struct.tm* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.tm* %3, %struct.tm** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %24 = load i32, i32* @MAXDATEFIELDS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %21, align 8
  %27 = alloca i8*, i64 %25, align 16
  store i64 %25, i64* %22, align 8
  br label %28

28:                                               ; preds = %92, %5
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @MAXDATEFIELDS, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %39, label %95

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %46, %39
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @isalnum(i8 zeroext %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  br label %40

49:                                               ; preds = %40
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %27, i64 %52
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isdigit(i8 zeroext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %64, %58
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @isdigit(i8 zeroext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  br label %59

67:                                               ; preds = %59
  br label %84

68:                                               ; preds = %49
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isalpha(i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %79, %73
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isalpha(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  br label %74

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %67
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  store i8 0, i8* %90, align 1
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %28

95:                                               ; preds = %37
  %96 = load i32*, i32** %9, align 8
  store i32 0, i32* %96, align 4
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %152, %95
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %155

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %27, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @isalpha(i8 zeroext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %101
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %27, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @DecodeSpecial(i32 %110, i8* %114, i32* %19)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @IGNORE_DTF, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %152

120:                                              ; preds = %109
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @DTK_M(i32 %121)
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %18, align 4
  switch i32 %123, label %133 [
    i32 128, label %124
    i32 129, label %128
  ]

124:                                              ; preds = %120
  %125 = load i32, i32* %19, align 4
  %126 = load %struct.tm*, %struct.tm** %10, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  br label %134

128:                                              ; preds = %120
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* @BC, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %16, align 4
  br label %134

133:                                              ; preds = %120
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %261

134:                                              ; preds = %128, %124
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %20, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %261

140:                                              ; preds = %134
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %27, i64 %149
  store i8* null, i8** %150, align 8
  br label %151

151:                                              ; preds = %140, %101
  br label %152

152:                                              ; preds = %151, %119
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %97

155:                                              ; preds = %97
  store i32 0, i32* %14, align 4
  br label %156

156:                                              ; preds = %201, %155
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %204

160:                                              ; preds = %156
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %27, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %201

167:                                              ; preds = %160
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %27, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strlen(i8* %171)
  store i32 %172, i32* %15, align 4
  %173 = icmp sle i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %261

175:                                              ; preds = %167
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %27, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.tm*, %struct.tm** %10, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i64 @DecodeNumber(i32 %176, i8* %180, i32 %181, i32* %20, %struct.tm* %182, i32* %12, i32* %17, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %261

187:                                              ; preds = %175
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %20, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %261

193:                                              ; preds = %187
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %20, align 4
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %197
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %193, %166
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %156

204:                                              ; preds = %156
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @DOY, align 4
  %207 = call i32 @DTK_M(i32 %206)
  %208 = load i32, i32* @TZ, align 4
  %209 = call i32 @DTK_M(i32 %208)
  %210 = or i32 %207, %209
  %211 = xor i32 %210, -1
  %212 = and i32 %205, %211
  %213 = load i32, i32* @DTK_DATE_M, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %261

216:                                              ; preds = %204
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %216
  %220 = load %struct.tm*, %struct.tm** %10, align 8
  %221 = getelementptr inbounds %struct.tm, %struct.tm* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load %struct.tm*, %struct.tm** %10, align 8
  %226 = getelementptr inbounds %struct.tm, %struct.tm* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sub nsw i32 0, %228
  %230 = load %struct.tm*, %struct.tm** %10, align 8
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  br label %233

232:                                              ; preds = %219
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %261

233:                                              ; preds = %224
  br label %260

234:                                              ; preds = %216
  %235 = load i32, i32* %17, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %259

237:                                              ; preds = %234
  %238 = load %struct.tm*, %struct.tm** %10, align 8
  %239 = getelementptr inbounds %struct.tm, %struct.tm* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp slt i32 %240, 70
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.tm*, %struct.tm** %10, align 8
  %244 = getelementptr inbounds %struct.tm, %struct.tm* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 2000
  store i32 %246, i32* %244, align 4
  br label %258

247:                                              ; preds = %237
  %248 = load %struct.tm*, %struct.tm** %10, align 8
  %249 = getelementptr inbounds %struct.tm, %struct.tm* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %250, 100
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.tm*, %struct.tm** %10, align 8
  %254 = getelementptr inbounds %struct.tm, %struct.tm* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1900
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %252, %247
  br label %258

258:                                              ; preds = %257, %242
  br label %259

259:                                              ; preds = %258, %234
  br label %260

260:                                              ; preds = %259, %233
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %261

261:                                              ; preds = %260, %232, %215, %192, %186, %174, %139, %133
  %262 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %6, align 4
  ret i32 %263
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isalnum(i8 zeroext) #2

declare dso_local i64 @isdigit(i8 zeroext) #2

declare dso_local i64 @isalpha(i8 zeroext) #2

declare dso_local i32 @DecodeSpecial(i32, i8*, i32*) #2

declare dso_local i32 @DTK_M(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @DecodeNumber(i32, i8*, i32, i32*, %struct.tm*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
