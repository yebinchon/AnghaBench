; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_is_startline.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_is_startline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@OP_lengths = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@OP_COND = common dso_local global i32 0, align 4
@LINK_SIZE = common dso_local global i64 0, align 8
@OP_CALLOUT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@OP_ALT = common dso_local global i64 0, align 8
@OP_BRA = common dso_local global i32 0, align 4
@OP_BRAPOS = common dso_local global i32 0, align 4
@OP_SBRA = common dso_local global i32 0, align 4
@OP_SBRAPOS = common dso_local global i32 0, align 4
@OP_CBRA = common dso_local global i32 0, align 4
@OP_CBRAPOS = common dso_local global i32 0, align 4
@OP_SCBRA = common dso_local global i32 0, align 4
@OP_SCBRAPOS = common dso_local global i32 0, align 4
@OP_ASSERT = common dso_local global i32 0, align 4
@OP_ONCE = common dso_local global i32 0, align 4
@OP_ONCE_NC = common dso_local global i32 0, align 4
@OP_TYPESTAR = common dso_local global i32 0, align 4
@OP_TYPEMINSTAR = common dso_local global i32 0, align 4
@OP_TYPEPOSSTAR = common dso_local global i32 0, align 4
@OP_ANY = common dso_local global i64 0, align 8
@OP_CIRC = common dso_local global i32 0, align 4
@OP_CIRCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i32, %struct.TYPE_3__*, i32, i8*)* @is_startline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @is_startline(i64* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  br label %16

16:                                               ; preds = %254, %5
  %17 = load i64*, i64** %7, align 8
  %18 = load i32, i32* @OP_lengths, align 4
  %19 = call i32* @PRIV(i32 %18)
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %17, i64 %24
  %26 = load i8*, i8** @FALSE, align 8
  %27 = call i64* @first_significant_code(i64* %25, i8* %26)
  store i64* %27, i64** %12, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @OP_COND, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %16
  %35 = load i64, i64* @LINK_SIZE, align 8
  %36 = add nsw i64 1, %35
  %37 = load i64*, i64** %12, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 %36
  store i64* %38, i64** %12, align 8
  %39 = load i64*, i64** %12, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OP_CALLOUT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load i32, i32* @OP_lengths, align 4
  %45 = call i32* @PRIV(i32 %44)
  %46 = load i64, i64* @OP_CALLOUT, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i64*, i64** %12, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64* %51, i64** %12, align 8
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i64*, i64** %12, align 8
  %54 = load i64, i64* %53, align 8
  switch i64 %54, label %57 [
    i64 133, label %55
    i64 131, label %55
    i64 128, label %55
    i64 130, label %55
    i64 132, label %55
    i64 129, label %55
  ]

55:                                               ; preds = %52, %52, %52, %52, %52, %52
  %56 = load i8*, i8** @FALSE, align 8
  store i8* %56, i8** %6, align 8
  br label %261

57:                                               ; preds = %52
  %58 = load i64*, i64** %12, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** @TRUE, align 8
  %63 = call i8* @is_startline(i64* %58, i32 %59, %struct.TYPE_3__* %60, i32 %61, i8* %62)
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = load i8*, i8** @FALSE, align 8
  store i8* %66, i8** %6, align 8
  br label %261

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %74, %67
  %69 = load i64*, i64** %12, align 8
  %70 = call i32 @GET(i64* %69, i32 1)
  %71 = load i64*, i64** %12, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64* %73, i64** %12, align 8
  br label %74

74:                                               ; preds = %68
  %75 = load i64*, i64** %12, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OP_ALT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %68, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* @LINK_SIZE, align 8
  %81 = add nsw i64 1, %80
  %82 = load i64*, i64** %12, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 %81
  store i64* %83, i64** %12, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load i64*, i64** %12, align 8
  %86 = load i8*, i8** @FALSE, align 8
  %87 = call i64* @first_significant_code(i64* %85, i8* %86)
  store i64* %87, i64** %12, align 8
  %88 = load i64*, i64** %12, align 8
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %84, %16
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @OP_BRA, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @OP_BRAPOS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @OP_SBRA, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @OP_SBRAPOS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103, %99, %95, %91
  %108 = load i64*, i64** %12, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = call i8* @is_startline(i64* %108, i32 %109, %struct.TYPE_3__* %110, i32 %111, i8* %112)
  %114 = icmp ne i8* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %107
  %116 = load i8*, i8** @FALSE, align 8
  store i8* %116, i8** %6, align 8
  br label %261

117:                                              ; preds = %107
  br label %248

118:                                              ; preds = %103
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @OP_CBRA, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @OP_CBRAPOS, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @OP_SCBRA, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @OP_SCBRAPOS, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %130, %126, %122, %118
  %135 = load i64*, i64** %12, align 8
  %136 = load i64, i64* @LINK_SIZE, align 8
  %137 = add nsw i64 1, %136
  %138 = call i32 @GET2(i64* %135, i64 %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 32
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* %14, align 4
  %144 = shl i32 1, %143
  br label %146

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %142
  %147 = phi i32 [ %144, %142 ], [ 1, %145 ]
  %148 = or i32 %139, %147
  store i32 %148, i32* %15, align 4
  %149 = load i64*, i64** %12, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load i8*, i8** %11, align 8
  %154 = call i8* @is_startline(i64* %149, i32 %150, %struct.TYPE_3__* %151, i32 %152, i8* %153)
  %155 = icmp ne i8* %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %146
  %157 = load i8*, i8** @FALSE, align 8
  store i8* %157, i8** %6, align 8
  br label %261

158:                                              ; preds = %146
  br label %247

159:                                              ; preds = %130
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* @OP_ASSERT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = load i64*, i64** %12, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i8*, i8** @TRUE, align 8
  %169 = call i8* @is_startline(i64* %164, i32 %165, %struct.TYPE_3__* %166, i32 %167, i8* %168)
  %170 = icmp ne i8* %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %163
  %172 = load i8*, i8** @FALSE, align 8
  store i8* %172, i8** %6, align 8
  br label %261

173:                                              ; preds = %163
  br label %246

174:                                              ; preds = %159
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* @OP_ONCE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* @OP_ONCE_NC, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %178, %174
  %183 = load i64*, i64** %12, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  %188 = load i8*, i8** %11, align 8
  %189 = call i8* @is_startline(i64* %183, i32 %184, %struct.TYPE_3__* %185, i32 %187, i8* %188)
  %190 = icmp ne i8* %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %182
  %192 = load i8*, i8** @FALSE, align 8
  store i8* %192, i8** %6, align 8
  br label %261

193:                                              ; preds = %182
  br label %245

194:                                              ; preds = %178
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @OP_TYPESTAR, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @OP_TYPEMINSTAR, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @OP_TYPEPOSSTAR, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %233

206:                                              ; preds = %202, %198, %194
  %207 = load i64*, i64** %12, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @OP_ANY, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %230, label %212

212:                                              ; preds = %206
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %213, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %230, label %219

219:                                              ; preds = %212
  %220 = load i32, i32* %10, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %219
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %222
  %228 = load i8*, i8** %11, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %232

230:                                              ; preds = %227, %222, %219, %212, %206
  %231 = load i8*, i8** @FALSE, align 8
  store i8* %231, i8** %6, align 8
  br label %261

232:                                              ; preds = %227
  br label %244

233:                                              ; preds = %202
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* @OP_CIRC, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* @OP_CIRCM, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = load i8*, i8** @FALSE, align 8
  store i8* %242, i8** %6, align 8
  br label %261

243:                                              ; preds = %237, %233
  br label %244

244:                                              ; preds = %243, %232
  br label %245

245:                                              ; preds = %244, %193
  br label %246

246:                                              ; preds = %245, %173
  br label %247

247:                                              ; preds = %246, %158
  br label %248

248:                                              ; preds = %247, %117
  %249 = load i64*, i64** %7, align 8
  %250 = call i32 @GET(i64* %249, i32 1)
  %251 = load i64*, i64** %7, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i64, i64* %251, i64 %252
  store i64* %253, i64** %7, align 8
  br label %254

254:                                              ; preds = %248
  %255 = load i64*, i64** %7, align 8
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @OP_ALT, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %16, label %259

259:                                              ; preds = %254
  %260 = load i8*, i8** @TRUE, align 8
  store i8* %260, i8** %6, align 8
  br label %261

261:                                              ; preds = %259, %241, %230, %191, %171, %156, %115, %65, %55
  %262 = load i8*, i8** %6, align 8
  ret i8* %262
}

declare dso_local i64* @first_significant_code(i64*, i8*) #1

declare dso_local i32* @PRIV(i32) #1

declare dso_local i32 @GET(i64*, i32) #1

declare dso_local i32 @GET2(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
