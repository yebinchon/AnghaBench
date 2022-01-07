; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeNumber.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32 }

@DTK_DATE_M = common dso_local global i32 0, align 4
@YEAR = common dso_local global i32 0, align 4
@DOY = common dso_local global i32 0, align 4
@MONTH = common dso_local global i32 0, align 4
@DAY = common dso_local global i32 0, align 4
@MONTHS_PER_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, %struct.tm*, i32*, i32*, i32)* @DecodeNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeNumber(i32 %0, i8* %1, i32 %2, i32* %3, %struct.tm* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.tm*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store %struct.tm* %4, %struct.tm** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i32*, i32** %13, align 8
  store i32 0, i32* %20, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @strtoint(i8* %21, i8** %19, i32 10)
  store i32 %22, i32* %18, align 4
  %23 = load i8*, i8** %19, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %283

27:                                               ; preds = %8
  %28 = load i8*, i8** %19, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %60

32:                                               ; preds = %27
  %33 = load i8*, i8** %19, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = icmp sgt i64 %37, 2
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @DTK_DATE_M, align 4
  %44 = or i32 %42, %43
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.tm*, %struct.tm** %14, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @DecodeNumberField(i32 %40, i8* %41, i32 %44, i32* %45, %struct.tm* %46, i32* %47, i32* %48)
  store i32 %49, i32* %9, align 4
  br label %283

50:                                               ; preds = %32
  %51 = load i8*, i8** %19, align 8
  %52 = call i32 @strtod(i8* %51, i8** %19)
  %53 = load i32*, i32** %15, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %19, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 -1, i32* %9, align 4
  br label %283

59:                                               ; preds = %50
  br label %67

60:                                               ; preds = %27
  %61 = load i8*, i8** %19, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -1, i32* %9, align 4
  br label %283

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %112

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @YEAR, align 4
  %73 = call i32 @DTK_M(i32 %72)
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %70
  %77 = load i32, i32* %18, align 4
  %78 = icmp sge i32 %77, 1
  br i1 %78, label %79, label %112

79:                                               ; preds = %76
  %80 = load i32, i32* %18, align 4
  %81 = icmp sle i32 %80, 366
  br i1 %81, label %82, label %112

82:                                               ; preds = %79
  %83 = load i32, i32* @DOY, align 4
  %84 = call i32 @DTK_M(i32 %83)
  %85 = load i32, i32* @MONTH, align 4
  %86 = call i32 @DTK_M(i32 %85)
  %87 = or i32 %84, %86
  %88 = load i32, i32* @DAY, align 4
  %89 = call i32 @DTK_M(i32 %88)
  %90 = or i32 %87, %89
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.tm*, %struct.tm** %14, align 8
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.tm*, %struct.tm** %14, align 8
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @date2j(i32 %97, i32 1, i32 1)
  %99 = load %struct.tm*, %struct.tm** %14, align 8
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %98, %102
  %104 = sub nsw i64 %103, 1
  %105 = load %struct.tm*, %struct.tm** %14, align 8
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %105, i32 0, i32 1
  %107 = load %struct.tm*, %struct.tm** %14, align 8
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 2
  %109 = load %struct.tm*, %struct.tm** %14, align 8
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 3
  %111 = call i32 @j2date(i64 %104, i32* %106, i32* %108, i32* %110)
  br label %282

112:                                              ; preds = %79, %76, %70, %67
  %113 = load i32, i32* %10, align 4
  %114 = icmp sge i32 %113, 4
  br i1 %114, label %115, label %153

115:                                              ; preds = %112
  %116 = load i32, i32* @YEAR, align 4
  %117 = call i32 @DTK_M(i32 %116)
  %118 = load i32*, i32** %13, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @YEAR, align 4
  %121 = call i32 @DTK_M(i32 %120)
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %115
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @DAY, align 4
  %127 = call i32 @DTK_M(i32 %126)
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %124
  %131 = load %struct.tm*, %struct.tm** %14, align 8
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 1
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load %struct.tm*, %struct.tm** %14, align 8
  %137 = getelementptr inbounds %struct.tm, %struct.tm* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sle i32 %138, 31
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load %struct.tm*, %struct.tm** %14, align 8
  %142 = getelementptr inbounds %struct.tm, %struct.tm* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.tm*, %struct.tm** %14, align 8
  %145 = getelementptr inbounds %struct.tm, %struct.tm* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @DAY, align 4
  %147 = call i32 @DTK_M(i32 %146)
  %148 = load i32*, i32** %13, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %140, %135, %130, %124, %115
  %150 = load i32, i32* %18, align 4
  %151 = load %struct.tm*, %struct.tm** %14, align 8
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %281

153:                                              ; preds = %112
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @YEAR, align 4
  %156 = call i32 @DTK_M(i32 %155)
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %153
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @MONTH, align 4
  %162 = call i32 @DTK_M(i32 %161)
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %159
  %166 = load i32, i32* %18, align 4
  %167 = icmp sge i32 %166, 1
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %171 = icmp sle i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i32, i32* @MONTH, align 4
  %174 = call i32 @DTK_M(i32 %173)
  %175 = load i32*, i32** %13, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* %18, align 4
  %177 = load %struct.tm*, %struct.tm** %14, align 8
  %178 = getelementptr inbounds %struct.tm, %struct.tm* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  br label %280

179:                                              ; preds = %168, %165, %159, %153
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @MONTH, align 4
  %185 = call i32 @DTK_M(i32 %184)
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %213

188:                                              ; preds = %182, %179
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @YEAR, align 4
  %191 = call i32 @DTK_M(i32 %190)
  %192 = and i32 %189, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %213, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @DAY, align 4
  %197 = call i32 @DTK_M(i32 %196)
  %198 = and i32 %195, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %213, label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %18, align 4
  %202 = icmp sge i32 %201, 1
  br i1 %202, label %203, label %213

203:                                              ; preds = %200
  %204 = load i32, i32* %18, align 4
  %205 = icmp sle i32 %204, 31
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i32, i32* @DAY, align 4
  %208 = call i32 @DTK_M(i32 %207)
  %209 = load i32*, i32** %13, align 8
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* %18, align 4
  %211 = load %struct.tm*, %struct.tm** %14, align 8
  %212 = getelementptr inbounds %struct.tm, %struct.tm* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  br label %279

213:                                              ; preds = %203, %200, %194, %188, %182
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @MONTH, align 4
  %216 = call i32 @DTK_M(i32 %215)
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %233, label %219

219:                                              ; preds = %213
  %220 = load i32, i32* %18, align 4
  %221 = icmp sge i32 %220, 1
  br i1 %221, label %222, label %233

222:                                              ; preds = %219
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = load i32, i32* @MONTH, align 4
  %228 = call i32 @DTK_M(i32 %227)
  %229 = load i32*, i32** %13, align 8
  store i32 %228, i32* %229, align 4
  %230 = load i32, i32* %18, align 4
  %231 = load %struct.tm*, %struct.tm** %14, align 8
  %232 = getelementptr inbounds %struct.tm, %struct.tm* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 4
  br label %278

233:                                              ; preds = %222, %219, %213
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @DAY, align 4
  %236 = call i32 @DTK_M(i32 %235)
  %237 = and i32 %234, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %252, label %239

239:                                              ; preds = %233
  %240 = load i32, i32* %18, align 4
  %241 = icmp sge i32 %240, 1
  br i1 %241, label %242, label %252

242:                                              ; preds = %239
  %243 = load i32, i32* %18, align 4
  %244 = icmp sle i32 %243, 31
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load i32, i32* @DAY, align 4
  %247 = call i32 @DTK_M(i32 %246)
  %248 = load i32*, i32** %13, align 8
  store i32 %247, i32* %248, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load %struct.tm*, %struct.tm** %14, align 8
  %251 = getelementptr inbounds %struct.tm, %struct.tm* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  br label %277

252:                                              ; preds = %242, %239, %233
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* @YEAR, align 4
  %255 = call i32 @DTK_M(i32 %254)
  %256 = and i32 %253, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %275, label %258

258:                                              ; preds = %252
  %259 = load i32, i32* %10, align 4
  %260 = icmp sge i32 %259, 4
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %10, align 4
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %264, label %275

264:                                              ; preds = %261, %258
  %265 = load i32, i32* @YEAR, align 4
  %266 = call i32 @DTK_M(i32 %265)
  %267 = load i32*, i32** %13, align 8
  store i32 %266, i32* %267, align 4
  %268 = load i32, i32* %18, align 4
  %269 = load %struct.tm*, %struct.tm** %14, align 8
  %270 = getelementptr inbounds %struct.tm, %struct.tm* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* %10, align 4
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i32
  %274 = load i32*, i32** %16, align 8
  store i32 %273, i32* %274, align 4
  br label %276

275:                                              ; preds = %261, %252
  store i32 -1, i32* %9, align 4
  br label %283

276:                                              ; preds = %264
  br label %277

277:                                              ; preds = %276, %245
  br label %278

278:                                              ; preds = %277, %226
  br label %279

279:                                              ; preds = %278, %206
  br label %280

280:                                              ; preds = %279, %172
  br label %281

281:                                              ; preds = %280, %149
  br label %282

282:                                              ; preds = %281, %82
  store i32 0, i32* %9, align 4
  br label %283

283:                                              ; preds = %282, %275, %65, %58, %39, %26
  %284 = load i32, i32* %9, align 4
  ret i32 %284
}

declare dso_local i32 @strtoint(i8*, i8**, i32) #1

declare dso_local i32 @DecodeNumberField(i32, i8*, i32, i32*, %struct.tm*, i32*, i32*) #1

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i32 @DTK_M(i32) #1

declare dso_local i32 @j2date(i64, i32*, i32*, i32*) #1

declare dso_local i64 @date2j(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
