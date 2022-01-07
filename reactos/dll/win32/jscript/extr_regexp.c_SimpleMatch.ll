; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_SimpleMatch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_SimpleMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i64, i64, i32*, i64, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i32* }

@reop_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [14 x i8] c"\0A%06d: %*s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_MULTILINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" '%c' == '%c'\0A\00", align 1
@ARG_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" *\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_18__*, %struct.TYPE_17__*, i64, i32**, i32)* @SimpleMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @SimpleMatch(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i64 %2, i32** %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %12, align 8
  %24 = load i32**, i32*** %10, align 8
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %18, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %20, align 8
  %29 = load i8**, i8*** @reop_names, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %23, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = ptrtoint i32* %33 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = mul nsw i32 %47, 2
  %49 = load i8*, i8** %23, align 8
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i64, i64* %9, align 8
  switch i64 %51, label %759 [
    i64 142, label %52
    i64 146, label %54
    i64 141, label %84
    i64 129, label %113
    i64 128, label %156
    i64 143, label %198
    i64 144, label %220
    i64 134, label %242
    i64 148, label %264
    i64 135, label %286
    i64 132, label %308
    i64 133, label %330
    i64 147, label %352
    i64 140, label %368
    i64 139, label %450
    i64 137, label %485
    i64 138, label %526
    i64 131, label %553
    i64 130, label %591
    i64 145, label %621
    i64 136, label %690
  ]

52:                                               ; preds = %5
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %12, align 8
  br label %762

54:                                               ; preds = %5
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %57, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %54
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @REG_MULTILINE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %762

72:                                               ; preds = %62
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 -1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @RE_IS_LINE_TERM(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %762

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %54
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %83, %struct.TYPE_17__** %12, align 8
  br label %762

84:                                               ; preds = %5
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %87, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %84
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @REG_MULTILINE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %762

102:                                              ; preds = %92
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @RE_IS_LINE_TERM(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %762

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %84
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %112, %struct.TYPE_17__** %12, align 8
  br label %762

113:                                              ; preds = %5
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %116, %119
  br i1 %120, label %130, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 -1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @JS_ISWORD(i32 %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %121, %113
  %131 = phi i1 [ true, %113 ], [ %129, %121 ]
  %132 = zext i1 %131 to i32
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %135, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %130
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @JS_ISWORD(i32 %144)
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %140, %130
  %148 = phi i1 [ false, %130 ], [ %146, %140 ]
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = xor i32 %132, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %154, %struct.TYPE_17__** %12, align 8
  br label %155

155:                                              ; preds = %153, %147
  br label %762

156:                                              ; preds = %5
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %159, %162
  br i1 %163, label %173, label %164

164:                                              ; preds = %156
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 -1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @JS_ISWORD(i32 %169)
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  br label %173

173:                                              ; preds = %164, %156
  %174 = phi i1 [ true, %156 ], [ %172, %164 ]
  %175 = zext i1 %174 to i32
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %178, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %173
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @JS_ISWORD(i32 %187)
  %189 = icmp ne i32 %188, 0
  br label %190

190:                                              ; preds = %183, %173
  %191 = phi i1 [ false, %173 ], [ %189, %183 ]
  %192 = zext i1 %191 to i32
  %193 = xor i32 %175, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %196, %struct.TYPE_17__** %12, align 8
  br label %197

197:                                              ; preds = %195, %190
  br label %762

198:                                              ; preds = %5
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %201, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %198
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @RE_IS_LINE_TERM(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %206
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %214, %struct.TYPE_17__** %12, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %216, align 8
  br label %219

219:                                              ; preds = %213, %206, %198
  br label %762

220:                                              ; preds = %5
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %223, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %220
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @JS7_ISDEC(i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %228
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %236, %struct.TYPE_17__** %12, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %240, i32** %238, align 8
  br label %241

241:                                              ; preds = %235, %228, %220
  br label %762

242:                                              ; preds = %5
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %245, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %242
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @JS7_ISDEC(i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %250
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %258, %struct.TYPE_17__** %12, align 8
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %260, align 8
  br label %263

263:                                              ; preds = %257, %250, %242
  br label %762

264:                                              ; preds = %5
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %267, %270
  br i1 %271, label %272, label %285

272:                                              ; preds = %264
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @JS_ISWORD(i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %272
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %280, %struct.TYPE_17__** %12, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %282, align 8
  br label %285

285:                                              ; preds = %279, %272, %264
  br label %762

286:                                              ; preds = %5
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = icmp ne i32* %289, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %286
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @JS_ISWORD(i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %307, label %301

301:                                              ; preds = %294
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %302, %struct.TYPE_17__** %12, align 8
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 1
  store i32* %306, i32** %304, align 8
  br label %307

307:                                              ; preds = %301, %294, %286
  br label %762

308:                                              ; preds = %5
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = icmp ne i32* %311, %314
  br i1 %315, label %316, label %329

316:                                              ; preds = %308
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @iswspace(i32 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %316
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %324, %struct.TYPE_17__** %12, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %326, align 8
  br label %329

329:                                              ; preds = %323, %316, %308
  br label %762

330:                                              ; preds = %5
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = icmp ne i32* %333, %336
  br i1 %337, label %338, label %351

338:                                              ; preds = %330
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @iswspace(i32 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %338
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %346, %struct.TYPE_17__** %12, align 8
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i32 1
  store i32* %350, i32** %348, align 8
  br label %351

351:                                              ; preds = %345, %338, %330
  br label %762

352:                                              ; preds = %5
  %353 = load i32*, i32** %18, align 8
  %354 = call i32* @ReadCompactIndex(i32* %353, i64* %14)
  store i32* %354, i32** %18, align 8
  %355 = load i64, i64* %14, align 8
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 2
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = icmp ult i64 %355, %360
  %362 = zext i1 %361 to i32
  %363 = call i32 @assert(i32 %362)
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %366 = load i64, i64* %14, align 8
  %367 = call %struct.TYPE_17__* @BackrefMatcher(%struct.TYPE_18__* %364, %struct.TYPE_17__* %365, i64 %366)
  store %struct.TYPE_17__* %367, %struct.TYPE_17__** %12, align 8
  br label %762

368:                                              ; preds = %5
  %369 = load i32*, i32** %18, align 8
  %370 = call i32* @ReadCompactIndex(i32* %369, i64* %15)
  store i32* %370, i32** %18, align 8
  %371 = load i64, i64* %15, align 8
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 2
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = icmp ult i64 %371, %376
  %378 = zext i1 %377 to i32
  %379 = call i32 @assert(i32 %378)
  %380 = load i32*, i32** %18, align 8
  %381 = call i32* @ReadCompactIndex(i32* %380, i64* %16)
  store i32* %381, i32** %18, align 8
  %382 = load i64, i64* %16, align 8
  %383 = icmp ule i64 1, %382
  %384 = zext i1 %383 to i32
  %385 = call i32 @assert(i32 %384)
  %386 = load i64, i64* %16, align 8
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 2
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* %15, align 8
  %393 = sub i64 %391, %392
  %394 = icmp ule i64 %386, %393
  %395 = zext i1 %394 to i32
  %396 = call i32 @assert(i32 %395)
  %397 = load i64, i64* %16, align 8
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 0
  %403 = load i32*, i32** %402, align 8
  %404 = ptrtoint i32* %400 to i64
  %405 = ptrtoint i32* %403 to i64
  %406 = sub i64 %404, %405
  %407 = sdiv exact i64 %406, 4
  %408 = icmp ule i64 %397, %407
  br i1 %408, label %409, label %449

409:                                              ; preds = %368
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 2
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 3
  %414 = load i32*, i32** %413, align 8
  %415 = load i64, i64* %15, align 8
  %416 = getelementptr inbounds i32, i32* %414, i64 %415
  store i32* %416, i32** %19, align 8
  %417 = load i32*, i32** %19, align 8
  %418 = load i64, i64* %16, align 8
  %419 = call i32 @debugstr_wn(i32* %417, i64 %418)
  %420 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %419)
  store i64 0, i64* %17, align 8
  br label %421

421:                                              ; preds = %439, %409
  %422 = load i64, i64* %17, align 8
  %423 = load i64, i64* %16, align 8
  %424 = icmp ne i64 %422, %423
  br i1 %424, label %425, label %442

425:                                              ; preds = %421
  %426 = load i32*, i32** %19, align 8
  %427 = load i64, i64* %17, align 8
  %428 = getelementptr inbounds i32, i32* %426, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = load i64, i64* %17, align 8
  %434 = getelementptr inbounds i32, i32* %432, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = icmp ne i32 %429, %435
  br i1 %436, label %437, label %438

437:                                              ; preds = %425
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %781

438:                                              ; preds = %425
  br label %439

439:                                              ; preds = %438
  %440 = load i64, i64* %17, align 8
  %441 = add i64 %440, 1
  store i64 %441, i64* %17, align 8
  br label %421

442:                                              ; preds = %421
  %443 = load i64, i64* %16, align 8
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 0
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 %443
  store i32* %447, i32** %445, align 8
  %448 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %448, %struct.TYPE_17__** %12, align 8
  br label %449

449:                                              ; preds = %442, %368
  br label %762

450:                                              ; preds = %5
  %451 = load i32*, i32** %18, align 8
  %452 = getelementptr inbounds i32, i32* %451, i32 1
  store i32* %452, i32** %18, align 8
  %453 = load i32, i32* %451, align 4
  store i32 %453, i32* %13, align 4
  %454 = load i32, i32* %13, align 4
  %455 = trunc i32 %454 to i8
  %456 = sext i8 %455 to i32
  %457 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i32 0, i32 0
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %459, align 4
  %461 = trunc i32 %460 to i8
  %462 = sext i8 %461 to i32
  %463 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %456, i32 %462)
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 0
  %466 = load i32*, i32** %465, align 8
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 1
  %469 = load i32*, i32** %468, align 8
  %470 = icmp ne i32* %466, %469
  br i1 %470, label %471, label %484

471:                                              ; preds = %450
  %472 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %472, i32 0, i32 0
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* %13, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %478, label %484

478:                                              ; preds = %471
  %479 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %479, %struct.TYPE_17__** %12, align 8
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %481 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i32 1
  store i32* %483, i32** %481, align 8
  br label %484

484:                                              ; preds = %478, %471, %450
  br label %762

485:                                              ; preds = %5
  %486 = load i32*, i32** %18, align 8
  %487 = call i32* @ReadCompactIndex(i32* %486, i64* %15)
  store i32* %487, i32** %18, align 8
  %488 = load i64, i64* %15, align 8
  %489 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %489, i32 0, i32 2
  %491 = load %struct.TYPE_16__*, %struct.TYPE_16__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %491, i32 0, i32 2
  %493 = load i64, i64* %492, align 8
  %494 = icmp ult i64 %488, %493
  %495 = zext i1 %494 to i32
  %496 = call i32 @assert(i32 %495)
  %497 = load i32*, i32** %18, align 8
  %498 = call i32* @ReadCompactIndex(i32* %497, i64* %16)
  store i32* %498, i32** %18, align 8
  %499 = load i64, i64* %16, align 8
  %500 = icmp ule i64 1, %499
  %501 = zext i1 %500 to i32
  %502 = call i32 @assert(i32 %501)
  %503 = load i64, i64* %16, align 8
  %504 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %504, i32 0, i32 2
  %506 = load %struct.TYPE_16__*, %struct.TYPE_16__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %506, i32 0, i32 2
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* %15, align 8
  %510 = sub i64 %508, %509
  %511 = icmp ule i64 %503, %510
  %512 = zext i1 %511 to i32
  %513 = call i32 @assert(i32 %512)
  %514 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %515 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %514, i32 0, i32 2
  %516 = load %struct.TYPE_16__*, %struct.TYPE_16__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %516, i32 0, i32 3
  %518 = load i32*, i32** %517, align 8
  store i32* %518, i32** %19, align 8
  %519 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %520 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %521 = load i32*, i32** %19, align 8
  %522 = load i64, i64* %15, align 8
  %523 = getelementptr inbounds i32, i32* %521, i64 %522
  %524 = load i64, i64* %16, align 8
  %525 = call %struct.TYPE_17__* @FlatNIMatcher(%struct.TYPE_18__* %519, %struct.TYPE_17__* %520, i32* %523, i64 %524)
  store %struct.TYPE_17__* %525, %struct.TYPE_17__** %12, align 8
  br label %762

526:                                              ; preds = %5
  %527 = load i32*, i32** %18, align 8
  %528 = getelementptr inbounds i32, i32* %527, i32 1
  store i32* %528, i32** %18, align 8
  %529 = load i32, i32* %527, align 4
  store i32 %529, i32* %13, align 4
  %530 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %531 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %530, i32 0, i32 0
  %532 = load i32*, i32** %531, align 8
  %533 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %534 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %533, i32 0, i32 1
  %535 = load i32*, i32** %534, align 8
  %536 = icmp ne i32* %532, %535
  br i1 %536, label %537, label %552

537:                                              ; preds = %526
  %538 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %539 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %538, i32 0, i32 0
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %540, align 4
  %542 = call i32 @towupper(i32 %541)
  %543 = load i32, i32* %13, align 4
  %544 = call i32 @towupper(i32 %543)
  %545 = icmp eq i32 %542, %544
  br i1 %545, label %546, label %552

546:                                              ; preds = %537
  %547 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %547, %struct.TYPE_17__** %12, align 8
  %548 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %549 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %548, i32 0, i32 0
  %550 = load i32*, i32** %549, align 8
  %551 = getelementptr inbounds i32, i32* %550, i32 1
  store i32* %551, i32** %549, align 8
  br label %552

552:                                              ; preds = %546, %537, %526
  br label %762

553:                                              ; preds = %5
  %554 = load i32*, i32** %18, align 8
  %555 = call i32 @GET_ARG(i32* %554)
  store i32 %555, i32* %13, align 4
  %556 = load i32, i32* %13, align 4
  %557 = trunc i32 %556 to i8
  %558 = sext i8 %557 to i32
  %559 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %560 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %559, i32 0, i32 0
  %561 = load i32*, i32** %560, align 8
  %562 = load i32, i32* %561, align 4
  %563 = trunc i32 %562 to i8
  %564 = sext i8 %563 to i32
  %565 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %558, i32 %564)
  %566 = load i32, i32* @ARG_LEN, align 4
  %567 = load i32*, i32** %18, align 8
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i32, i32* %567, i64 %568
  store i32* %569, i32** %18, align 8
  %570 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %571 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %570, i32 0, i32 0
  %572 = load i32*, i32** %571, align 8
  %573 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %573, i32 0, i32 1
  %575 = load i32*, i32** %574, align 8
  %576 = icmp ne i32* %572, %575
  br i1 %576, label %577, label %590

577:                                              ; preds = %553
  %578 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %579 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %578, i32 0, i32 0
  %580 = load i32*, i32** %579, align 8
  %581 = load i32, i32* %580, align 4
  %582 = load i32, i32* %13, align 4
  %583 = icmp eq i32 %581, %582
  br i1 %583, label %584, label %590

584:                                              ; preds = %577
  %585 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %585, %struct.TYPE_17__** %12, align 8
  %586 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %587 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %586, i32 0, i32 0
  %588 = load i32*, i32** %587, align 8
  %589 = getelementptr inbounds i32, i32* %588, i32 1
  store i32* %589, i32** %587, align 8
  br label %590

590:                                              ; preds = %584, %577, %553
  br label %762

591:                                              ; preds = %5
  %592 = load i32*, i32** %18, align 8
  %593 = call i32 @GET_ARG(i32* %592)
  store i32 %593, i32* %13, align 4
  %594 = load i32, i32* @ARG_LEN, align 4
  %595 = load i32*, i32** %18, align 8
  %596 = sext i32 %594 to i64
  %597 = getelementptr inbounds i32, i32* %595, i64 %596
  store i32* %597, i32** %18, align 8
  %598 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %599 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %598, i32 0, i32 0
  %600 = load i32*, i32** %599, align 8
  %601 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %602 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %601, i32 0, i32 1
  %603 = load i32*, i32** %602, align 8
  %604 = icmp ne i32* %600, %603
  br i1 %604, label %605, label %620

605:                                              ; preds = %591
  %606 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %607 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %606, i32 0, i32 0
  %608 = load i32*, i32** %607, align 8
  %609 = load i32, i32* %608, align 4
  %610 = call i32 @towupper(i32 %609)
  %611 = load i32, i32* %13, align 4
  %612 = call i32 @towupper(i32 %611)
  %613 = icmp eq i32 %610, %612
  br i1 %613, label %614, label %620

614:                                              ; preds = %605
  %615 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %615, %struct.TYPE_17__** %12, align 8
  %616 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %617 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %616, i32 0, i32 0
  %618 = load i32*, i32** %617, align 8
  %619 = getelementptr inbounds i32, i32* %618, i32 1
  store i32* %619, i32** %617, align 8
  br label %620

620:                                              ; preds = %614, %605, %591
  br label %762

621:                                              ; preds = %5
  %622 = load i32*, i32** %18, align 8
  %623 = call i32* @ReadCompactIndex(i32* %622, i64* %17)
  store i32* %623, i32** %18, align 8
  %624 = load i64, i64* %17, align 8
  %625 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %626 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %625, i32 0, i32 2
  %627 = load %struct.TYPE_16__*, %struct.TYPE_16__** %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %627, i32 0, i32 4
  %629 = load i64, i64* %628, align 8
  %630 = icmp ult i64 %624, %629
  %631 = zext i1 %630 to i32
  %632 = call i32 @assert(i32 %631)
  %633 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %634 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %633, i32 0, i32 0
  %635 = load i32*, i32** %634, align 8
  %636 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %636, i32 0, i32 1
  %638 = load i32*, i32** %637, align 8
  %639 = icmp ne i32* %635, %638
  br i1 %639, label %640, label %689

640:                                              ; preds = %621
  %641 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %642 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %641, i32 0, i32 2
  %643 = load %struct.TYPE_16__*, %struct.TYPE_16__** %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %643, i32 0, i32 5
  %645 = load %struct.TYPE_19__*, %struct.TYPE_19__** %644, align 8
  %646 = load i64, i64* %17, align 8
  %647 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %645, i64 %646
  store %struct.TYPE_19__* %647, %struct.TYPE_19__** %22, align 8
  %648 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %649 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %648, i32 0, i32 0
  %650 = load i32, i32* %649, align 8
  %651 = call i32 @assert(i32 %650)
  %652 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %653 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %652, i32 0, i32 0
  %654 = load i32*, i32** %653, align 8
  %655 = load i32, i32* %654, align 4
  store i32 %655, i32* %21, align 4
  %656 = load i32, i32* %21, align 4
  %657 = ashr i32 %656, 3
  %658 = sext i32 %657 to i64
  store i64 %658, i64* %17, align 8
  %659 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %660 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %688

663:                                              ; preds = %640
  %664 = load i32, i32* %21, align 4
  %665 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %666 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %665, i32 0, i32 1
  %667 = load i32, i32* %666, align 4
  %668 = icmp sle i32 %664, %667
  br i1 %668, label %669, label %688

669:                                              ; preds = %663
  %670 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %671 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %670, i32 0, i32 2
  %672 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %671, i32 0, i32 0
  %673 = load i32*, i32** %672, align 8
  %674 = load i64, i64* %17, align 8
  %675 = getelementptr inbounds i32, i32* %673, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = load i32, i32* %21, align 4
  %678 = and i32 %677, 7
  %679 = shl i32 1, %678
  %680 = and i32 %676, %679
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %688

682:                                              ; preds = %669
  %683 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %683, %struct.TYPE_17__** %12, align 8
  %684 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %685 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %684, i32 0, i32 0
  %686 = load i32*, i32** %685, align 8
  %687 = getelementptr inbounds i32, i32* %686, i32 1
  store i32* %687, i32** %685, align 8
  br label %688

688:                                              ; preds = %682, %669, %663, %640
  br label %689

689:                                              ; preds = %688, %621
  br label %762

690:                                              ; preds = %5
  %691 = load i32*, i32** %18, align 8
  %692 = call i32* @ReadCompactIndex(i32* %691, i64* %17)
  store i32* %692, i32** %18, align 8
  %693 = load i64, i64* %17, align 8
  %694 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %695 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %694, i32 0, i32 2
  %696 = load %struct.TYPE_16__*, %struct.TYPE_16__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %696, i32 0, i32 4
  %698 = load i64, i64* %697, align 8
  %699 = icmp ult i64 %693, %698
  %700 = zext i1 %699 to i32
  %701 = call i32 @assert(i32 %700)
  %702 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %703 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %702, i32 0, i32 0
  %704 = load i32*, i32** %703, align 8
  %705 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %706 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %705, i32 0, i32 1
  %707 = load i32*, i32** %706, align 8
  %708 = icmp ne i32* %704, %707
  br i1 %708, label %709, label %758

709:                                              ; preds = %690
  %710 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %711 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %710, i32 0, i32 2
  %712 = load %struct.TYPE_16__*, %struct.TYPE_16__** %711, align 8
  %713 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %712, i32 0, i32 5
  %714 = load %struct.TYPE_19__*, %struct.TYPE_19__** %713, align 8
  %715 = load i64, i64* %17, align 8
  %716 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %714, i64 %715
  store %struct.TYPE_19__* %716, %struct.TYPE_19__** %22, align 8
  %717 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %718 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %717, i32 0, i32 0
  %719 = load i32, i32* %718, align 8
  %720 = call i32 @assert(i32 %719)
  %721 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %722 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %721, i32 0, i32 0
  %723 = load i32*, i32** %722, align 8
  %724 = load i32, i32* %723, align 4
  store i32 %724, i32* %21, align 4
  %725 = load i32, i32* %21, align 4
  %726 = ashr i32 %725, 3
  %727 = sext i32 %726 to i64
  store i64 %727, i64* %17, align 8
  %728 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %729 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %751, label %732

732:                                              ; preds = %709
  %733 = load i32, i32* %21, align 4
  %734 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %735 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %734, i32 0, i32 1
  %736 = load i32, i32* %735, align 4
  %737 = icmp sgt i32 %733, %736
  br i1 %737, label %751, label %738

738:                                              ; preds = %732
  %739 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %740 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %739, i32 0, i32 2
  %741 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %740, i32 0, i32 0
  %742 = load i32*, i32** %741, align 8
  %743 = load i64, i64* %17, align 8
  %744 = getelementptr inbounds i32, i32* %742, i64 %743
  %745 = load i32, i32* %744, align 4
  %746 = load i32, i32* %21, align 4
  %747 = and i32 %746, 7
  %748 = shl i32 1, %747
  %749 = and i32 %745, %748
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %757, label %751

751:                                              ; preds = %738, %732, %709
  %752 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %752, %struct.TYPE_17__** %12, align 8
  %753 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %754 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %753, i32 0, i32 0
  %755 = load i32*, i32** %754, align 8
  %756 = getelementptr inbounds i32, i32* %755, i32 1
  store i32* %756, i32** %754, align 8
  br label %757

757:                                              ; preds = %751, %738
  br label %758

758:                                              ; preds = %757, %690
  br label %762

759:                                              ; preds = %5
  %760 = load i32, i32* @FALSE, align 4
  %761 = call i32 @assert(i32 %760)
  br label %762

762:                                              ; preds = %759, %758, %689, %620, %590, %552, %485, %484, %449, %352, %351, %329, %307, %285, %263, %241, %219, %197, %155, %111, %109, %101, %82, %80, %71, %52
  %763 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %764 = icmp ne %struct.TYPE_17__* %763, null
  br i1 %764, label %765, label %777

765:                                              ; preds = %762
  %766 = load i32, i32* %11, align 4
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %772, label %768

768:                                              ; preds = %765
  %769 = load i32*, i32** %20, align 8
  %770 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %771 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %770, i32 0, i32 0
  store i32* %769, i32** %771, align 8
  br label %772

772:                                              ; preds = %768, %765
  %773 = load i32*, i32** %18, align 8
  %774 = load i32**, i32*** %10, align 8
  store i32* %773, i32** %774, align 8
  %775 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %776 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %776, %struct.TYPE_17__** %6, align 8
  br label %781

777:                                              ; preds = %762
  %778 = load i32*, i32** %20, align 8
  %779 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %780 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %779, i32 0, i32 0
  store i32* %778, i32** %780, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %781

781:                                              ; preds = %777, %772, %437
  %782 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %782
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @RE_IS_LINE_TERM(i32) #1

declare dso_local i32 @JS_ISWORD(i32) #1

declare dso_local i32 @JS7_ISDEC(i32) #1

declare dso_local i32 @iswspace(i32) #1

declare dso_local i32* @ReadCompactIndex(i32*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_17__* @BackrefMatcher(%struct.TYPE_18__*, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @debugstr_wn(i32*, i64) #1

declare dso_local %struct.TYPE_17__* @FlatNIMatcher(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i64) #1

declare dso_local i32 @towupper(i32) #1

declare dso_local i32 @GET_ARG(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
