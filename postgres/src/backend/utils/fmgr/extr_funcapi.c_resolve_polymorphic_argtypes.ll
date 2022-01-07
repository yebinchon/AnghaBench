; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_resolve_polymorphic_argtypes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_resolve_polymorphic_argtypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i32 0, align 4
@PROARGMODE_IN = common dso_local global i8 0, align 1
@PROARGMODE_OUT = common dso_local global i8 0, align 1
@PROARGMODE_TABLE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_polymorphic_argtypes(i32 %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @InvalidOid, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @InvalidOid, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @InvalidOid, align 4
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %164, %4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %167

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  br label %40

37:                                               ; preds = %27
  %38 = load i8, i8* @PROARGMODE_IN, align 1
  %39 = sext i8 %38 to i32
  br label %40

40:                                               ; preds = %37, %30
  %41 = phi i32 [ %36, %30 ], [ %39, %37 ]
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %18, align 1
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %147 [
    i32 131, label %48
    i32 129, label %48
    i32 130, label %48
    i32 132, label %81
    i32 128, label %114
  ]

48:                                               ; preds = %40, %40, %40
  %49 = load i8, i8* %18, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @PROARGMODE_OUT, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i8, i8* %18, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @PROARGMODE_TABLE, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48
  store i32 1, i32* %10, align 4
  br label %80

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @OidIsValid(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @get_call_expr_argtype(i32* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @OidIsValid(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %275

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %60
  br label %148

81:                                               ; preds = %40
  %82 = load i8, i8* %18, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8, i8* @PROARGMODE_OUT, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i8, i8* %18, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* @PROARGMODE_TABLE, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %81
  store i32 1, i32* %11, align 4
  br label %113

94:                                               ; preds = %87
  %95 = load i32, i32* %14, align 4
  %96 = call i64 @OidIsValid(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @get_call_expr_argtype(i32* %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i64 @OidIsValid(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %275

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %94
  %108 = load i32, i32* %14, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %93
  br label %148

114:                                              ; preds = %40
  %115 = load i8, i8* %18, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @PROARGMODE_OUT, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i8, i8* %18, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8, i8* @PROARGMODE_TABLE, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120, %114
  store i32 1, i32* %12, align 4
  br label %146

127:                                              ; preds = %120
  %128 = load i32, i32* %15, align 4
  %129 = call i64 @OidIsValid(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %127
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @get_call_expr_argtype(i32* %132, i32 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i64 @OidIsValid(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %275

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %127
  %141 = load i32, i32* %15, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %126
  br label %148

147:                                              ; preds = %40
  br label %148

148:                                              ; preds = %147, %146, %113, %80
  %149 = load i8, i8* %18, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* @PROARGMODE_OUT, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = load i8, i8* %18, align 1
  %156 = sext i8 %155 to i32
  %157 = load i8, i8* @PROARGMODE_TABLE, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %163

163:                                              ; preds = %160, %154, %148
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  br label %23

167:                                              ; preds = %23
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  store i32 1, i32* %5, align 4
  br label %275

177:                                              ; preds = %173, %170, %167
  %178 = load i32, i32* %13, align 4
  %179 = call i64 @OidIsValid(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* %14, align 4
  %183 = call i64 @OidIsValid(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %15, align 4
  %187 = call i64 @OidIsValid(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  store i32 0, i32* %5, align 4
  br label %275

190:                                              ; preds = %185, %181, %177
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %222

193:                                              ; preds = %190
  %194 = load i32, i32* %13, align 4
  %195 = call i64 @OidIsValid(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %222, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %14, align 4
  %199 = call i64 @OidIsValid(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @resolve_generic_type(i32 131, i32 %202, i32 132)
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %201, %197
  %205 = load i32, i32* %15, align 4
  %206 = call i64 @OidIsValid(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %204
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @resolve_generic_type(i32 131, i32 %209, i32 128)
  store i32 %210, i32* %19, align 4
  %211 = load i32, i32* %13, align 4
  %212 = call i64 @OidIsValid(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i32 0, i32* %5, align 4
  br label %275

219:                                              ; preds = %214, %208
  %220 = load i32, i32* %19, align 4
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %219, %204
  br label %222

222:                                              ; preds = %221, %193, %190
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load i32, i32* %14, align 4
  %227 = call i64 @OidIsValid(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @resolve_generic_type(i32 132, i32 %230, i32 131)
  store i32 %231, i32* %14, align 4
  br label %232

232:                                              ; preds = %229, %225, %222
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load i32, i32* %15, align 4
  %237 = call i64 @OidIsValid(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  br label %275

240:                                              ; preds = %235, %232
  store i32 0, i32* %17, align 4
  br label %241

241:                                              ; preds = %271, %240
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %274

245:                                              ; preds = %241
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* %17, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  switch i32 %250, label %269 [
    i32 131, label %251
    i32 129, label %251
    i32 130, label %251
    i32 132, label %257
    i32 128, label %263
  ]

251:                                              ; preds = %245, %245, %245
  %252 = load i32, i32* %13, align 4
  %253 = load i32*, i32** %7, align 8
  %254 = load i32, i32* %17, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %252, i32* %256, align 4
  br label %270

257:                                              ; preds = %245
  %258 = load i32, i32* %14, align 4
  %259 = load i32*, i32** %7, align 8
  %260 = load i32, i32* %17, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %258, i32* %262, align 4
  br label %270

263:                                              ; preds = %245
  %264 = load i32, i32* %15, align 4
  %265 = load i32*, i32** %7, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 %264, i32* %268, align 4
  br label %270

269:                                              ; preds = %245
  br label %270

270:                                              ; preds = %269, %263, %257, %251
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %17, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %17, align 4
  br label %241

274:                                              ; preds = %241
  store i32 1, i32* %5, align 4
  br label %275

275:                                              ; preds = %274, %239, %218, %189, %176, %138, %105, %72
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_call_expr_argtype(i32*, i32) #1

declare dso_local i32 @resolve_generic_type(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
