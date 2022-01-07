; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_save_ArrayElement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_save_ArrayElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i64, i64, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Bad normal type in gl_save_ArrayElement\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Bad color type in gl_save_ArrayElement\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Bad index type in gl_save_ArrayElement\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Bad texcoord type in gl_save_ArrayElement\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Bad vertex type in gl_save_ArrayElement\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_ArrayElement(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 25
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 24
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %21, i64 %28
  store i32* %29, i32** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %49 [
    i32 135, label %34
    i32 131, label %37
    i32 132, label %40
    i32 133, label %43
    i32 134, label %46
  ]

34:                                               ; preds = %16
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @glNormal3bv(i32* %35)
  br label %52

37:                                               ; preds = %16
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @glNormal3sv(i32* %38)
  br label %52

40:                                               ; preds = %16
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @glNormal3iv(i32* %41)
  br label %52

43:                                               ; preds = %16
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @glNormal3fv(i32* %44)
  br label %52

46:                                               ; preds = %16
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @glNormal3dv(i32* %47)
  br label %52

49:                                               ; preds = %16
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = call i32 @gl_problem(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %427

52:                                               ; preds = %46, %43, %40, %37, %34
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 23
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %177

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 22
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %65, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %64, i64 %71
  store i32* %72, i32** %6, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %173 [
    i32 135, label %77
    i32 130, label %89
    i32 131, label %101
    i32 128, label %113
    i32 132, label %125
    i32 129, label %137
    i32 133, label %149
    i32 134, label %161
  ]

77:                                               ; preds = %59
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 21
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %88 [
    i32 3, label %82
    i32 4, label %85
  ]

82:                                               ; preds = %77
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @glColor3bv(i32* %83)
  br label %88

85:                                               ; preds = %77
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @glColor4bv(i32* %86)
  br label %88

88:                                               ; preds = %77, %85, %82
  br label %176

89:                                               ; preds = %59
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 21
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %100 [
    i32 3, label %94
    i32 4, label %97
  ]

94:                                               ; preds = %89
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @glColor3ubv(i32* %95)
  br label %100

97:                                               ; preds = %89
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @glColor4ubv(i32* %98)
  br label %100

100:                                              ; preds = %89, %97, %94
  br label %176

101:                                              ; preds = %59
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 21
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %112 [
    i32 3, label %106
    i32 4, label %109
  ]

106:                                              ; preds = %101
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @glColor3sv(i32* %107)
  br label %112

109:                                              ; preds = %101
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @glColor4sv(i32* %110)
  br label %112

112:                                              ; preds = %101, %109, %106
  br label %176

113:                                              ; preds = %59
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 21
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %124 [
    i32 3, label %118
    i32 4, label %121
  ]

118:                                              ; preds = %113
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @glColor3usv(i32* %119)
  br label %124

121:                                              ; preds = %113
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @glColor4usv(i32* %122)
  br label %124

124:                                              ; preds = %113, %121, %118
  br label %176

125:                                              ; preds = %59
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 21
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %136 [
    i32 3, label %130
    i32 4, label %133
  ]

130:                                              ; preds = %125
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @glColor3iv(i32* %131)
  br label %136

133:                                              ; preds = %125
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @glColor4iv(i32* %134)
  br label %136

136:                                              ; preds = %125, %133, %130
  br label %176

137:                                              ; preds = %59
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 21
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %148 [
    i32 3, label %142
    i32 4, label %145
  ]

142:                                              ; preds = %137
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @glColor3uiv(i32* %143)
  br label %148

145:                                              ; preds = %137
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @glColor4uiv(i32* %146)
  br label %148

148:                                              ; preds = %137, %145, %142
  br label %176

149:                                              ; preds = %59
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 21
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %160 [
    i32 3, label %154
    i32 4, label %157
  ]

154:                                              ; preds = %149
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @glColor3fv(i32* %155)
  br label %160

157:                                              ; preds = %149
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @glColor4fv(i32* %158)
  br label %160

160:                                              ; preds = %149, %157, %154
  br label %176

161:                                              ; preds = %59
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 21
  %165 = load i32, i32* %164, align 8
  switch i32 %165, label %172 [
    i32 3, label %166
    i32 4, label %169
  ]

166:                                              ; preds = %161
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @glColor3dv(i32* %167)
  br label %172

169:                                              ; preds = %161
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @glColor4dv(i32* %170)
  br label %172

172:                                              ; preds = %161, %169, %166
  br label %176

173:                                              ; preds = %59
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %175 = call i32 @gl_problem(%struct.TYPE_6__* %174, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %427

176:                                              ; preds = %172, %160, %148, %136, %124, %112, %100, %88
  br label %177

177:                                              ; preds = %176, %53
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 20
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %217

183:                                              ; preds = %177
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 19
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i32*
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %189, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %188, i64 %195
  store i32* %196, i32** %7, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  switch i32 %200, label %213 [
    i32 131, label %201
    i32 132, label %204
    i32 133, label %207
    i32 134, label %210
  ]

201:                                              ; preds = %183
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @glIndexsv(i32* %202)
  br label %216

204:                                              ; preds = %183
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 @glIndexiv(i32* %205)
  br label %216

207:                                              ; preds = %183
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 @glIndexfv(i32* %208)
  br label %216

210:                                              ; preds = %183
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @glIndexdv(i32* %211)
  br label %216

213:                                              ; preds = %183
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %215 = call i32 @gl_problem(%struct.TYPE_6__* %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %427

216:                                              ; preds = %210, %207, %204, %201
  br label %217

217:                                              ; preds = %216, %177
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 18
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %317

223:                                              ; preds = %217
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 17
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to i32*
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = mul nsw i32 %229, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %228, i64 %235
  store i32* %236, i32** %8, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  switch i32 %240, label %313 [
    i32 131, label %241
    i32 132, label %259
    i32 133, label %277
    i32 134, label %295
  ]

241:                                              ; preds = %223
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 16
  %245 = load i32, i32* %244, align 8
  switch i32 %245, label %258 [
    i32 1, label %246
    i32 2, label %249
    i32 3, label %252
    i32 4, label %255
  ]

246:                                              ; preds = %241
  %247 = load i32*, i32** %8, align 8
  %248 = call i32 @glTexCoord1sv(i32* %247)
  br label %258

249:                                              ; preds = %241
  %250 = load i32*, i32** %8, align 8
  %251 = call i32 @glTexCoord2sv(i32* %250)
  br label %258

252:                                              ; preds = %241
  %253 = load i32*, i32** %8, align 8
  %254 = call i32 @glTexCoord3sv(i32* %253)
  br label %258

255:                                              ; preds = %241
  %256 = load i32*, i32** %8, align 8
  %257 = call i32 @glTexCoord4sv(i32* %256)
  br label %258

258:                                              ; preds = %241, %255, %252, %249, %246
  br label %316

259:                                              ; preds = %223
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 16
  %263 = load i32, i32* %262, align 8
  switch i32 %263, label %276 [
    i32 1, label %264
    i32 2, label %267
    i32 3, label %270
    i32 4, label %273
  ]

264:                                              ; preds = %259
  %265 = load i32*, i32** %8, align 8
  %266 = call i32 @glTexCoord1iv(i32* %265)
  br label %276

267:                                              ; preds = %259
  %268 = load i32*, i32** %8, align 8
  %269 = call i32 @glTexCoord2iv(i32* %268)
  br label %276

270:                                              ; preds = %259
  %271 = load i32*, i32** %8, align 8
  %272 = call i32 @glTexCoord3iv(i32* %271)
  br label %276

273:                                              ; preds = %259
  %274 = load i32*, i32** %8, align 8
  %275 = call i32 @glTexCoord4iv(i32* %274)
  br label %276

276:                                              ; preds = %259, %273, %270, %267, %264
  br label %316

277:                                              ; preds = %223
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 16
  %281 = load i32, i32* %280, align 8
  switch i32 %281, label %294 [
    i32 1, label %282
    i32 2, label %285
    i32 3, label %288
    i32 4, label %291
  ]

282:                                              ; preds = %277
  %283 = load i32*, i32** %8, align 8
  %284 = call i32 @glTexCoord1fv(i32* %283)
  br label %294

285:                                              ; preds = %277
  %286 = load i32*, i32** %8, align 8
  %287 = call i32 @glTexCoord2fv(i32* %286)
  br label %294

288:                                              ; preds = %277
  %289 = load i32*, i32** %8, align 8
  %290 = call i32 @glTexCoord3fv(i32* %289)
  br label %294

291:                                              ; preds = %277
  %292 = load i32*, i32** %8, align 8
  %293 = call i32 @glTexCoord4fv(i32* %292)
  br label %294

294:                                              ; preds = %277, %291, %288, %285, %282
  br label %316

295:                                              ; preds = %223
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 16
  %299 = load i32, i32* %298, align 8
  switch i32 %299, label %312 [
    i32 1, label %300
    i32 2, label %303
    i32 3, label %306
    i32 4, label %309
  ]

300:                                              ; preds = %295
  %301 = load i32*, i32** %8, align 8
  %302 = call i32 @glTexCoord1dv(i32* %301)
  br label %312

303:                                              ; preds = %295
  %304 = load i32*, i32** %8, align 8
  %305 = call i32 @glTexCoord2dv(i32* %304)
  br label %312

306:                                              ; preds = %295
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @glTexCoord3dv(i32* %307)
  br label %312

309:                                              ; preds = %295
  %310 = load i32*, i32** %8, align 8
  %311 = call i32 @glTexCoord4dv(i32* %310)
  br label %312

312:                                              ; preds = %295, %309, %306, %303, %300
  br label %316

313:                                              ; preds = %223
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %315 = call i32 @gl_problem(%struct.TYPE_6__* %314, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %427

316:                                              ; preds = %312, %294, %276, %258
  br label %317

317:                                              ; preds = %316, %217
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 15
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %339

323:                                              ; preds = %317
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 14
  %327 = load i64, i64* %326, align 8
  %328 = inttoptr i64 %327 to i32*
  %329 = load i32, i32* %4, align 4
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 8
  %333 = load i32, i32* %332, align 8
  %334 = mul nsw i32 %329, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %328, i64 %335
  store i32* %336, i32** %9, align 8
  %337 = load i32*, i32** %9, align 8
  %338 = call i32 @glEdgeFlagv(i32* %337)
  br label %339

339:                                              ; preds = %323, %317
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 13
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %427

345:                                              ; preds = %339
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 12
  %349 = load i64, i64* %348, align 8
  %350 = inttoptr i64 %349 to i32*
  %351 = load i32, i32* %4, align 4
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 9
  %355 = load i32, i32* %354, align 4
  %356 = mul nsw i32 %351, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %350, i64 %357
  store i32* %358, i32** %10, align 8
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 10
  %362 = load i32, i32* %361, align 8
  switch i32 %362, label %423 [
    i32 131, label %363
    i32 132, label %378
    i32 133, label %393
    i32 134, label %408
  ]

363:                                              ; preds = %345
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 11
  %367 = load i32, i32* %366, align 4
  switch i32 %367, label %377 [
    i32 2, label %368
    i32 3, label %371
    i32 4, label %374
  ]

368:                                              ; preds = %363
  %369 = load i32*, i32** %10, align 8
  %370 = call i32 @glVertex2sv(i32* %369)
  br label %377

371:                                              ; preds = %363
  %372 = load i32*, i32** %10, align 8
  %373 = call i32 @glVertex3sv(i32* %372)
  br label %377

374:                                              ; preds = %363
  %375 = load i32*, i32** %10, align 8
  %376 = call i32 @glVertex4sv(i32* %375)
  br label %377

377:                                              ; preds = %363, %374, %371, %368
  br label %426

378:                                              ; preds = %345
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 11
  %382 = load i32, i32* %381, align 4
  switch i32 %382, label %392 [
    i32 2, label %383
    i32 3, label %386
    i32 4, label %389
  ]

383:                                              ; preds = %378
  %384 = load i32*, i32** %10, align 8
  %385 = call i32 @glVertex2iv(i32* %384)
  br label %392

386:                                              ; preds = %378
  %387 = load i32*, i32** %10, align 8
  %388 = call i32 @glVertex3iv(i32* %387)
  br label %392

389:                                              ; preds = %378
  %390 = load i32*, i32** %10, align 8
  %391 = call i32 @glVertex4iv(i32* %390)
  br label %392

392:                                              ; preds = %378, %389, %386, %383
  br label %426

393:                                              ; preds = %345
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 11
  %397 = load i32, i32* %396, align 4
  switch i32 %397, label %407 [
    i32 2, label %398
    i32 3, label %401
    i32 4, label %404
  ]

398:                                              ; preds = %393
  %399 = load i32*, i32** %10, align 8
  %400 = call i32 @glVertex2fv(i32* %399)
  br label %407

401:                                              ; preds = %393
  %402 = load i32*, i32** %10, align 8
  %403 = call i32 @glVertex3fv(i32* %402)
  br label %407

404:                                              ; preds = %393
  %405 = load i32*, i32** %10, align 8
  %406 = call i32 @glVertex4fv(i32* %405)
  br label %407

407:                                              ; preds = %393, %404, %401, %398
  br label %426

408:                                              ; preds = %345
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 11
  %412 = load i32, i32* %411, align 4
  switch i32 %412, label %422 [
    i32 2, label %413
    i32 3, label %416
    i32 4, label %419
  ]

413:                                              ; preds = %408
  %414 = load i32*, i32** %10, align 8
  %415 = call i32 @glVertex2dv(i32* %414)
  br label %422

416:                                              ; preds = %408
  %417 = load i32*, i32** %10, align 8
  %418 = call i32 @glVertex3dv(i32* %417)
  br label %422

419:                                              ; preds = %408
  %420 = load i32*, i32** %10, align 8
  %421 = call i32 @glVertex4dv(i32* %420)
  br label %422

422:                                              ; preds = %408, %419, %416, %413
  br label %426

423:                                              ; preds = %345
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %425 = call i32 @gl_problem(%struct.TYPE_6__* %424, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %427

426:                                              ; preds = %422, %407, %392, %377
  br label %427

427:                                              ; preds = %49, %173, %213, %313, %423, %426, %339
  ret void
}

declare dso_local i32 @glNormal3bv(i32*) #1

declare dso_local i32 @glNormal3sv(i32*) #1

declare dso_local i32 @glNormal3iv(i32*) #1

declare dso_local i32 @glNormal3fv(i32*) #1

declare dso_local i32 @glNormal3dv(i32*) #1

declare dso_local i32 @gl_problem(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @glColor3bv(i32*) #1

declare dso_local i32 @glColor4bv(i32*) #1

declare dso_local i32 @glColor3ubv(i32*) #1

declare dso_local i32 @glColor4ubv(i32*) #1

declare dso_local i32 @glColor3sv(i32*) #1

declare dso_local i32 @glColor4sv(i32*) #1

declare dso_local i32 @glColor3usv(i32*) #1

declare dso_local i32 @glColor4usv(i32*) #1

declare dso_local i32 @glColor3iv(i32*) #1

declare dso_local i32 @glColor4iv(i32*) #1

declare dso_local i32 @glColor3uiv(i32*) #1

declare dso_local i32 @glColor4uiv(i32*) #1

declare dso_local i32 @glColor3fv(i32*) #1

declare dso_local i32 @glColor4fv(i32*) #1

declare dso_local i32 @glColor3dv(i32*) #1

declare dso_local i32 @glColor4dv(i32*) #1

declare dso_local i32 @glIndexsv(i32*) #1

declare dso_local i32 @glIndexiv(i32*) #1

declare dso_local i32 @glIndexfv(i32*) #1

declare dso_local i32 @glIndexdv(i32*) #1

declare dso_local i32 @glTexCoord1sv(i32*) #1

declare dso_local i32 @glTexCoord2sv(i32*) #1

declare dso_local i32 @glTexCoord3sv(i32*) #1

declare dso_local i32 @glTexCoord4sv(i32*) #1

declare dso_local i32 @glTexCoord1iv(i32*) #1

declare dso_local i32 @glTexCoord2iv(i32*) #1

declare dso_local i32 @glTexCoord3iv(i32*) #1

declare dso_local i32 @glTexCoord4iv(i32*) #1

declare dso_local i32 @glTexCoord1fv(i32*) #1

declare dso_local i32 @glTexCoord2fv(i32*) #1

declare dso_local i32 @glTexCoord3fv(i32*) #1

declare dso_local i32 @glTexCoord4fv(i32*) #1

declare dso_local i32 @glTexCoord1dv(i32*) #1

declare dso_local i32 @glTexCoord2dv(i32*) #1

declare dso_local i32 @glTexCoord3dv(i32*) #1

declare dso_local i32 @glTexCoord4dv(i32*) #1

declare dso_local i32 @glEdgeFlagv(i32*) #1

declare dso_local i32 @glVertex2sv(i32*) #1

declare dso_local i32 @glVertex3sv(i32*) #1

declare dso_local i32 @glVertex4sv(i32*) #1

declare dso_local i32 @glVertex2iv(i32*) #1

declare dso_local i32 @glVertex3iv(i32*) #1

declare dso_local i32 @glVertex4iv(i32*) #1

declare dso_local i32 @glVertex2fv(i32*) #1

declare dso_local i32 @glVertex3fv(i32*) #1

declare dso_local i32 @glVertex4fv(i32*) #1

declare dso_local i32 @glVertex2dv(i32*) #1

declare dso_local i32 @glVertex3dv(i32*) #1

declare dso_local i32 @glVertex4dv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
