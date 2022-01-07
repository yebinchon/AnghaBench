; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_visit_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_visit_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_27__*, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_27__*, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__*, %struct.TYPE_27__*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_27__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_27__*, %struct.TYPE_21__*, %struct.TYPE_27__* }
%struct.TYPE_21__ = type { %struct.TYPE_27__* }
%struct.TYPE_23__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_24__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@DEFAULT_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_27__*)* @visit_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visit_statement(i32* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %410 [
    i32 143, label %21
    i32 142, label %28
    i32 141, label %28
    i32 140, label %28
    i32 139, label %29
    i32 134, label %29
    i32 132, label %29
    i32 138, label %43
    i32 137, label %111
    i32 136, label %163
    i32 135, label %199
    i32 133, label %206
    i32 131, label %321
    i32 130, label %365
    i32 129, label %372
    i32 128, label %391
  ]

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = bitcast %struct.TYPE_27__* %23 to %struct.TYPE_20__*
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @visit_block_statement(i32* %22, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %410

28:                                               ; preds = %2, %2, %2
  br label %410

29:                                               ; preds = %2, %2, %2
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %31 = bitcast %struct.TYPE_27__* %30 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %7, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @visit_expression(i32* %37, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %29
  br label %410

43:                                               ; preds = %2
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %45 = bitcast %struct.TYPE_27__* %44 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %8, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @visit_variable_list(i32* %51, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %68

56:                                               ; preds = %43
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @visit_expression(i32* %62, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61, %56
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @FAILED(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %410

73:                                               ; preds = %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @visit_expression(i32* %79, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @FAILED(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %410

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %73
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %92, align 8
  %94 = call i32 @visit_statement(i32* %90, %struct.TYPE_27__* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @FAILED(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %410

99:                                               ; preds = %89
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32*, i32** %4, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @visit_expression(i32* %105, i32 %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %104, %99
  br label %410

111:                                              ; preds = %2
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %113 = bitcast %struct.TYPE_27__* %112 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %9, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load i32*, i32** %4, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @visit_variable_list(i32* %119, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @FAILED(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %410

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %111
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @visit_expression(i32* %130, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @FAILED(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %412

140:                                              ; preds = %129
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @visit_expression(i32* %146, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @FAILED(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %412

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156, %140
  %158 = load i32*, i32** %4, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %160, align 8
  %162 = call i32 @visit_statement(i32* %158, %struct.TYPE_27__* %161)
  store i32 %162, i32* %6, align 4
  br label %410

163:                                              ; preds = %2
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %165 = bitcast %struct.TYPE_27__* %164 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %165, %struct.TYPE_29__** %10, align 8
  %166 = load i32*, i32** %4, align 8
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @visit_expression(i32* %166, i32 %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @FAILED(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %412

176:                                              ; preds = %163
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %179, align 8
  %181 = call i32 @visit_statement(i32* %177, %struct.TYPE_27__* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @FAILED(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %176
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %3, align 4
  br label %412

187:                                              ; preds = %176
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %189, align 8
  %191 = icmp ne %struct.TYPE_27__* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i32*, i32** %4, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %195, align 8
  %197 = call i32 @visit_statement(i32* %193, %struct.TYPE_27__* %196)
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %192, %187
  br label %410

199:                                              ; preds = %2
  %200 = load i32*, i32** %4, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %202 = bitcast %struct.TYPE_27__* %201 to %struct.TYPE_28__*
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %203, align 8
  %205 = call i32 @visit_statement(i32* %200, %struct.TYPE_27__* %204)
  store i32 %205, i32* %6, align 4
  br label %410

206:                                              ; preds = %2
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %208 = bitcast %struct.TYPE_27__* %207 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %208, %struct.TYPE_26__** %11, align 8
  %209 = load i32*, i32** %4, align 8
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @visit_expression(i32* %209, i32 %212)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @FAILED(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %206
  %218 = load i32, i32* %6, align 4
  store i32 %218, i32* %3, align 4
  br label %412

219:                                              ; preds = %206
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  store %struct.TYPE_19__* %222, %struct.TYPE_19__** %13, align 8
  br label %223

223:                                              ; preds = %244, %219
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %225 = icmp ne %struct.TYPE_19__* %224, null
  br i1 %225, label %226, label %248

226:                                              ; preds = %223
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %226
  br label %244

232:                                              ; preds = %226
  %233 = load i32*, i32** %4, align 8
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @visit_expression(i32* %233, i32 %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @FAILED(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = load i32, i32* %6, align 4
  store i32 %242, i32* %3, align 4
  br label %412

243:                                              ; preds = %232
  br label %244

244:                                              ; preds = %243, %231
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %246, align 8
  store %struct.TYPE_19__* %247, %struct.TYPE_19__** %13, align 8
  br label %223

248:                                              ; preds = %223
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %250, align 8
  store %struct.TYPE_19__* %251, %struct.TYPE_19__** %13, align 8
  br label %252

252:                                              ; preds = %316, %248
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %254 = icmp ne %struct.TYPE_19__* %253, null
  br i1 %254, label %255, label %320

255:                                              ; preds = %252
  br label %256

256:                                              ; preds = %273, %255
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = icmp ne %struct.TYPE_19__* %259, null
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %265, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %268, align 8
  %270 = icmp eq %struct.TYPE_27__* %266, %269
  br label %271

271:                                              ; preds = %261, %256
  %272 = phi i1 [ false, %256 ], [ %270, %261 ]
  br i1 %272, label %273, label %277

273:                                              ; preds = %271
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %275, align 8
  store %struct.TYPE_19__* %276, %struct.TYPE_19__** %13, align 8
  br label %256

277:                                              ; preds = %271
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %279, align 8
  store %struct.TYPE_27__* %280, %struct.TYPE_27__** %12, align 8
  br label %281

281:                                              ; preds = %311, %277
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %283 = icmp ne %struct.TYPE_27__* %282, null
  br i1 %283, label %284, label %299

284:                                              ; preds = %281
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %286, align 8
  %288 = icmp ne %struct.TYPE_19__* %287, null
  br i1 %288, label %289, label %297

289:                                              ; preds = %284
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %293, align 8
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %296 = icmp ne %struct.TYPE_27__* %294, %295
  br label %297

297:                                              ; preds = %289, %284
  %298 = phi i1 [ true, %284 ], [ %296, %289 ]
  br label %299

299:                                              ; preds = %297, %281
  %300 = phi i1 [ false, %281 ], [ %298, %297 ]
  br i1 %300, label %301, label %315

301:                                              ; preds = %299
  %302 = load i32*, i32** %4, align 8
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %304 = call i32 @visit_statement(i32* %302, %struct.TYPE_27__* %303)
  store i32 %304, i32* %6, align 4
  %305 = load i32, i32* %6, align 4
  %306 = call i32 @FAILED(i32 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = load i32, i32* %6, align 4
  store i32 %309, i32* %3, align 4
  br label %412

310:                                              ; preds = %301
  br label %311

311:                                              ; preds = %310
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %313, align 8
  store %struct.TYPE_27__* %314, %struct.TYPE_27__** %12, align 8
  br label %281

315:                                              ; preds = %299
  br label %316

316:                                              ; preds = %315
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %318, align 8
  store %struct.TYPE_19__* %319, %struct.TYPE_19__** %13, align 8
  br label %252

320:                                              ; preds = %252
  br label %410

321:                                              ; preds = %2
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %323 = bitcast %struct.TYPE_27__* %322 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %323, %struct.TYPE_25__** %14, align 8
  %324 = load i32*, i32** %4, align 8
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 2
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %326, align 8
  %328 = call i32 @visit_statement(i32* %324, %struct.TYPE_27__* %327)
  store i32 %328, i32* %6, align 4
  %329 = load i32, i32* %6, align 4
  %330 = call i32 @FAILED(i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %321
  %333 = load i32, i32* %6, align 4
  store i32 %333, i32* %3, align 4
  br label %412

334:                                              ; preds = %321
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %336, align 8
  %338 = icmp ne %struct.TYPE_21__* %337, null
  br i1 %338, label %339, label %353

339:                                              ; preds = %334
  %340 = load i32*, i32** %4, align 8
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_27__*, %struct.TYPE_27__** %344, align 8
  %346 = call i32 @visit_statement(i32* %340, %struct.TYPE_27__* %345)
  store i32 %346, i32* %6, align 4
  %347 = load i32, i32* %6, align 4
  %348 = call i32 @FAILED(i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %339
  %351 = load i32, i32* %6, align 4
  store i32 %351, i32* %3, align 4
  br label %412

352:                                              ; preds = %339
  br label %353

353:                                              ; preds = %352, %334
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %355, align 8
  %357 = icmp ne %struct.TYPE_27__* %356, null
  br i1 %357, label %358, label %364

358:                                              ; preds = %353
  %359 = load i32*, i32** %4, align 8
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %361 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %361, align 8
  %363 = call i32 @visit_statement(i32* %359, %struct.TYPE_27__* %362)
  store i32 %363, i32* %6, align 4
  br label %364

364:                                              ; preds = %358, %353
  br label %410

365:                                              ; preds = %2
  %366 = load i32*, i32** %4, align 8
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %368 = bitcast %struct.TYPE_27__* %367 to %struct.TYPE_24__*
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @visit_variable_list(i32* %366, i32 %370)
  store i32 %371, i32* %6, align 4
  br label %410

372:                                              ; preds = %2
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %374 = bitcast %struct.TYPE_27__* %373 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %374, %struct.TYPE_23__** %15, align 8
  %375 = load i32*, i32** %4, align 8
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @visit_expression(i32* %375, i32 %378)
  store i32 %379, i32* %6, align 4
  %380 = load i32, i32* %6, align 4
  %381 = call i32 @FAILED(i32 %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %372
  %384 = load i32, i32* %6, align 4
  store i32 %384, i32* %3, align 4
  br label %412

385:                                              ; preds = %372
  %386 = load i32*, i32** %4, align 8
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_27__*, %struct.TYPE_27__** %388, align 8
  %390 = call i32 @visit_statement(i32* %386, %struct.TYPE_27__* %389)
  store i32 %390, i32* %6, align 4
  br label %410

391:                                              ; preds = %2
  %392 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %393 = bitcast %struct.TYPE_27__* %392 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %393, %struct.TYPE_22__** %16, align 8
  %394 = load i32*, i32** %4, align 8
  %395 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %396 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @visit_expression(i32* %394, i32 %397)
  store i32 %398, i32* %6, align 4
  %399 = load i32, i32* %6, align 4
  %400 = call i32 @FAILED(i32 %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %391
  %403 = load i32, i32* %6, align 4
  store i32 %403, i32* %3, align 4
  br label %412

404:                                              ; preds = %391
  %405 = load i32*, i32** %4, align 8
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %407, align 8
  %409 = call i32 @visit_statement(i32* %405, %struct.TYPE_27__* %408)
  store i32 %409, i32* %6, align 4
  br label %410

410:                                              ; preds = %2, %404, %385, %365, %364, %320, %199, %198, %157, %127, %110, %98, %87, %72, %42, %28, %21
  %411 = load i32, i32* %6, align 4
  store i32 %411, i32* %3, align 4
  br label %412

412:                                              ; preds = %410, %402, %383, %350, %332, %308, %241, %217, %185, %174, %154, %138
  %413 = load i32, i32* %3, align 4
  ret i32 %413
}

declare dso_local i32 @visit_block_statement(i32*, i32) #1

declare dso_local i32 @visit_expression(i32*, i32) #1

declare dso_local i32 @visit_variable_list(i32*, i32) #1

declare dso_local i32 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
