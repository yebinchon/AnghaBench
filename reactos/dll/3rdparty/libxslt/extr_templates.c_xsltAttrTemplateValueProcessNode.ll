; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_templates.c_xsltAttrTemplateValueProcessNode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_templates.c_xsltAttrTemplateValueProcessNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"xsltAttrTemplateValueProcessNode: unmatched '{'\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"xsltAttrTemplateValueProcessNode: unmatched '}'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xsltAttrTemplateValueProcessNode(i32 %0, i64* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i64* null, i64** %8, align 8
  store i32** null, i32*** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i64*, i64** %6, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %277

20:                                               ; preds = %3
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i64* @xmlStrndup(i64* bitcast ([1 x i8]* @.str to i64*), i32 0)
  store i64* %25, i64** %4, align 8
  br label %277

26:                                               ; preds = %20
  %27 = load i64*, i64** %6, align 8
  store i64* %27, i64** %9, align 8
  br label %28

28:                                               ; preds = %251, %228, %41, %26
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %252

32:                                               ; preds = %28
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 123
  br i1 %35, label %36, label %218

36:                                               ; preds = %32
  %37 = load i64*, i64** %9, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 123
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %9, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = ptrtoint i64* %46 to i64
  %49 = ptrtoint i64* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i64* @xmlStrncat(i64* %44, i64* %45, i32 %52)
  store i64* %53, i64** %8, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %9, align 8
  %56 = load i64*, i64** %9, align 8
  store i64* %56, i64** %6, align 8
  br label %28

57:                                               ; preds = %36
  %58 = load i64*, i64** %8, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = ptrtoint i64* %60 to i64
  %63 = ptrtoint i64* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i64* @xmlStrncat(i64* %58, i64* %59, i32 %66)
  store i64* %67, i64** %8, align 8
  %68 = load i64*, i64** %9, align 8
  store i64* %68, i64** %6, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %9, align 8
  br label %71

71:                                               ; preds = %120, %57
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i64*, i64** %9, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 125
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  br i1 %80, label %81, label %121

81:                                               ; preds = %79
  %82 = load i64*, i64** %9, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 39
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 34
  br i1 %88, label %89, label %117

89:                                               ; preds = %85, %81
  %90 = load i64*, i64** %9, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %9, align 8
  %92 = load i64, i64* %90, align 8
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %14, align 1
  br label %94

94:                                               ; preds = %106, %89
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i64*, i64** %9, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load i8, i8* %14, align 1
  %102 = sext i8 %101 to i64
  %103 = icmp ne i64 %100, %102
  br label %104

104:                                              ; preds = %98, %94
  %105 = phi i1 [ false, %94 ], [ %103, %98 ]
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i64*, i64** %9, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %9, align 8
  br label %94

109:                                              ; preds = %104
  %110 = load i64*, i64** %9, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i64*, i64** %9, align 8
  %115 = getelementptr inbounds i64, i64* %114, i32 1
  store i64* %115, i64** %9, align 8
  br label %116

116:                                              ; preds = %113, %109
  br label %120

117:                                              ; preds = %85
  %118 = load i64*, i64** %9, align 8
  %119 = getelementptr inbounds i64, i64* %118, i32 1
  store i64* %119, i64** %9, align 8
  br label %120

120:                                              ; preds = %117, %116
  br label %71

121:                                              ; preds = %79
  %122 = load i64*, i64** %9, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %128 = call i32 @xsltTransformError(i32 %126, i32* null, %struct.TYPE_5__* %127, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i64*, i64** %8, align 8
  %130 = load i64*, i64** %6, align 8
  %131 = load i64*, i64** %9, align 8
  %132 = load i64*, i64** %6, align 8
  %133 = ptrtoint i64* %131 to i64
  %134 = ptrtoint i64* %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 8
  %137 = trunc i64 %136 to i32
  %138 = call i64* @xmlStrncat(i64* %129, i64* %130, i32 %137)
  store i64* %138, i64** %8, align 8
  br label %268

139:                                              ; preds = %121
  %140 = load i64*, i64** %6, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %6, align 8
  %142 = load i64*, i64** %6, align 8
  %143 = load i64*, i64** %9, align 8
  %144 = load i64*, i64** %6, align 8
  %145 = ptrtoint i64* %143 to i64
  %146 = ptrtoint i64* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 8
  %149 = trunc i64 %148 to i32
  %150 = call i64* @xmlStrndup(i64* %142, i32 %149)
  store i64* %150, i64** %10, align 8
  %151 = load i64*, i64** %10, align 8
  %152 = icmp eq i64* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %139
  br label %268

154:                                              ; preds = %139
  %155 = load i64*, i64** %10, align 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 123
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i64*, i64** %8, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = call i64* @xmlStrcat(i64* %159, i64* %160)
  store i64* %161, i64** %8, align 8
  %162 = load i64*, i64** %10, align 8
  %163 = call i32 @xmlFree(i64* %162)
  br label %213

164:                                              ; preds = %154
  %165 = load i32**, i32*** %12, align 8
  %166 = icmp eq i32** %165, null
  br i1 %166, label %167, label %192

167:                                              ; preds = %164
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %169 = icmp ne %struct.TYPE_5__* %168, null
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  store i32 0, i32* %16, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %175 = call i32** @xmlGetNsList(i32 %173, %struct.TYPE_5__* %174)
  store i32** %175, i32*** %12, align 8
  %176 = load i32**, i32*** %12, align 8
  %177 = icmp ne i32** %176, null
  br i1 %177, label %178, label %191

178:                                              ; preds = %170
  br label %179

179:                                              ; preds = %186, %178
  %180 = load i32**, i32*** %12, align 8
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %179
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %16, align 4
  br label %179

189:                                              ; preds = %179
  %190 = load i32, i32* %16, align 4
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %189, %170
  br label %192

192:                                              ; preds = %191, %167, %164
  %193 = load i64*, i64** %10, align 8
  %194 = call i32 @xmlXPathCompile(i64* %193)
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32**, i32*** %12, align 8
  %199 = call i64* @xsltEvalXPathStringNs(i32 %195, i32 %196, i32 %197, i32** %198)
  store i64* %199, i64** %11, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @xmlXPathFreeCompExpr(i32 %200)
  %202 = load i64*, i64** %10, align 8
  %203 = call i32 @xmlFree(i64* %202)
  %204 = load i64*, i64** %11, align 8
  %205 = icmp ne i64* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %192
  %207 = load i64*, i64** %8, align 8
  %208 = load i64*, i64** %11, align 8
  %209 = call i64* @xmlStrcat(i64* %207, i64* %208)
  store i64* %209, i64** %8, align 8
  %210 = load i64*, i64** %11, align 8
  %211 = call i32 @xmlFree(i64* %210)
  br label %212

212:                                              ; preds = %206, %192
  br label %213

213:                                              ; preds = %212, %158
  br label %214

214:                                              ; preds = %213
  %215 = load i64*, i64** %9, align 8
  %216 = getelementptr inbounds i64, i64* %215, i32 1
  store i64* %216, i64** %9, align 8
  %217 = load i64*, i64** %9, align 8
  store i64* %217, i64** %6, align 8
  br label %251

218:                                              ; preds = %32
  %219 = load i64*, i64** %9, align 8
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 125
  br i1 %221, label %222, label %247

222:                                              ; preds = %218
  %223 = load i64*, i64** %9, align 8
  %224 = getelementptr inbounds i64, i64* %223, i32 1
  store i64* %224, i64** %9, align 8
  %225 = load i64*, i64** %9, align 8
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 125
  br i1 %227, label %228, label %242

228:                                              ; preds = %222
  %229 = load i64*, i64** %8, align 8
  %230 = load i64*, i64** %6, align 8
  %231 = load i64*, i64** %9, align 8
  %232 = load i64*, i64** %6, align 8
  %233 = ptrtoint i64* %231 to i64
  %234 = ptrtoint i64* %232 to i64
  %235 = sub i64 %233, %234
  %236 = sdiv exact i64 %235, 8
  %237 = trunc i64 %236 to i32
  %238 = call i64* @xmlStrncat(i64* %229, i64* %230, i32 %237)
  store i64* %238, i64** %8, align 8
  %239 = load i64*, i64** %9, align 8
  %240 = getelementptr inbounds i64, i64* %239, i32 1
  store i64* %240, i64** %9, align 8
  %241 = load i64*, i64** %9, align 8
  store i64* %241, i64** %6, align 8
  br label %28

242:                                              ; preds = %222
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %245 = call i32 @xsltTransformError(i32 %243, i32* null, %struct.TYPE_5__* %244, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %246

246:                                              ; preds = %242
  br label %250

247:                                              ; preds = %218
  %248 = load i64*, i64** %9, align 8
  %249 = getelementptr inbounds i64, i64* %248, i32 1
  store i64* %249, i64** %9, align 8
  br label %250

250:                                              ; preds = %247, %246
  br label %251

251:                                              ; preds = %250, %214
  br label %28

252:                                              ; preds = %28
  %253 = load i64*, i64** %9, align 8
  %254 = load i64*, i64** %6, align 8
  %255 = icmp ne i64* %253, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %252
  %257 = load i64*, i64** %8, align 8
  %258 = load i64*, i64** %6, align 8
  %259 = load i64*, i64** %9, align 8
  %260 = load i64*, i64** %6, align 8
  %261 = ptrtoint i64* %259 to i64
  %262 = ptrtoint i64* %260 to i64
  %263 = sub i64 %261, %262
  %264 = sdiv exact i64 %263, 8
  %265 = trunc i64 %264 to i32
  %266 = call i64* @xmlStrncat(i64* %257, i64* %258, i32 %265)
  store i64* %266, i64** %8, align 8
  br label %267

267:                                              ; preds = %256, %252
  br label %268

268:                                              ; preds = %267, %153, %125
  %269 = load i32**, i32*** %12, align 8
  %270 = icmp ne i32** %269, null
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32**, i32*** %12, align 8
  %273 = bitcast i32** %272 to i64*
  %274 = call i32 @xmlFree(i64* %273)
  br label %275

275:                                              ; preds = %271, %268
  %276 = load i64*, i64** %8, align 8
  store i64* %276, i64** %4, align 8
  br label %277

277:                                              ; preds = %275, %24, %19
  %278 = load i64*, i64** %4, align 8
  ret i64* %278
}

declare dso_local i64* @xmlStrndup(i64*, i32) #1

declare dso_local i64* @xmlStrncat(i64*, i64*, i32) #1

declare dso_local i32 @xsltTransformError(i32, i32*, %struct.TYPE_5__*, i8*) #1

declare dso_local i64* @xmlStrcat(i64*, i64*) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i32** @xmlGetNsList(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @xmlXPathCompile(i64*) #1

declare dso_local i64* @xsltEvalXPathStringNs(i32, i32, i32, i32**) #1

declare dso_local i32 @xmlXPathFreeCompExpr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
