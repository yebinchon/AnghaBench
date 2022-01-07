; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_InterleavedArrays.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_InterleavedArrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"glInterleavedArrays(stride)\00", align 1
@GL_FALSE = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i64 0, align 8
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"glInterleavedArrays(format)\00", align 1
@GL_EDGE_FLAG_ARRAY = common dso_local global i32 0, align 4
@GL_INDEX_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_NORMAL_ARRAY = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_InterleavedArrays(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 4, i32* %21, align 4
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* %21, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = add i64 16, %26
  %28 = load i32, i32* %21, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %27, %29
  %31 = mul i64 %23, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @GL_INVALID_VALUE, align 4
  %38 = call i32 @gl_error(i32* %36, i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %263

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %179 [
    i32 129, label %41
    i32 128, label %47
    i32 139, label %53
    i32 138, label %63
    i32 141, label %73
    i32 137, label %82
    i32 140, label %90
    i32 132, label %101
    i32 130, label %109
    i32 134, label %117
    i32 136, label %132
    i32 133, label %143
    i32 135, label %153
    i32 131, label %166
  ]

41:                                               ; preds = %39
  %42 = load i64, i64* @GL_FALSE, align 8
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* @GL_FALSE, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* @GL_FALSE, align 8
  store i64 %44, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 2, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %45 = load i32, i32* %21, align 4
  %46 = mul nsw i32 2, %45
  store i32 %46, i32* %19, align 4
  br label %183

47:                                               ; preds = %39
  %48 = load i64, i64* @GL_FALSE, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* @GL_FALSE, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* @GL_FALSE, align 8
  store i64 %50, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 3, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %51 = load i32, i32* %21, align 4
  %52 = mul nsw i32 3, %51
  store i32 %52, i32* %19, align 4
  br label %183

53:                                               ; preds = %39
  %54 = load i64, i64* @GL_FALSE, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* @GL_TRUE, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* @GL_FALSE, align 8
  store i64 %56, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 4, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %57 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  store i32 %57, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %58 = load i32, i32* %20, align 4
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %21, align 4
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %19, align 4
  br label %183

63:                                               ; preds = %39
  %64 = load i64, i64* @GL_FALSE, align 8
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* @GL_TRUE, align 8
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* @GL_FALSE, align 8
  store i64 %66, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 4, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %67 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  store i32 %67, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %68 = load i32, i32* %20, align 4
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = mul nsw i32 3, %70
  %72 = add nsw i32 %69, %71
  store i32 %72, i32* %19, align 4
  br label %183

73:                                               ; preds = %39
  %74 = load i64, i64* @GL_FALSE, align 8
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* @GL_TRUE, align 8
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* @GL_FALSE, align 8
  store i64 %76, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 3, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %77 = load i32, i32* @GL_FLOAT, align 4
  store i32 %77, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %78 = load i32, i32* %21, align 4
  %79 = mul nsw i32 3, %78
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %21, align 4
  %81 = mul nsw i32 6, %80
  store i32 %81, i32* %19, align 4
  br label %183

82:                                               ; preds = %39
  %83 = load i64, i64* @GL_FALSE, align 8
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* @GL_FALSE, align 8
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* @GL_TRUE, align 8
  store i64 %85, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 3, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %86 = load i32, i32* %21, align 4
  %87 = mul nsw i32 3, %86
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %21, align 4
  %89 = mul nsw i32 6, %88
  store i32 %89, i32* %19, align 4
  br label %183

90:                                               ; preds = %39
  %91 = load i64, i64* @GL_FALSE, align 8
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* @GL_TRUE, align 8
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* @GL_TRUE, align 8
  store i64 %93, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 4, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %94 = load i32, i32* @GL_FLOAT, align 4
  store i32 %94, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %95 = load i32, i32* %21, align 4
  %96 = mul nsw i32 4, %95
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %21, align 4
  %98 = mul nsw i32 7, %97
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %21, align 4
  %100 = mul nsw i32 10, %99
  store i32 %100, i32* %19, align 4
  br label %183

101:                                              ; preds = %39
  %102 = load i64, i64* @GL_TRUE, align 8
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* @GL_FALSE, align 8
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* @GL_FALSE, align 8
  store i64 %104, i64* %11, align 8
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %105 = load i32, i32* %21, align 4
  %106 = mul nsw i32 2, %105
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %21, align 4
  %108 = mul nsw i32 5, %107
  store i32 %108, i32* %19, align 4
  br label %183

109:                                              ; preds = %39
  %110 = load i64, i64* @GL_TRUE, align 8
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* @GL_FALSE, align 8
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* @GL_FALSE, align 8
  store i64 %112, i64* %11, align 8
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %113 = load i32, i32* %21, align 4
  %114 = mul nsw i32 4, %113
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %21, align 4
  %116 = mul nsw i32 8, %115
  store i32 %116, i32* %19, align 4
  br label %183

117:                                              ; preds = %39
  %118 = load i64, i64* @GL_TRUE, align 8
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* @GL_TRUE, align 8
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* @GL_FALSE, align 8
  store i64 %120, i64* %11, align 8
  store i32 2, i32* %12, align 4
  store i32 4, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %121 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %21, align 4
  %123 = mul nsw i32 2, %122
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %21, align 4
  %126 = mul nsw i32 2, %125
  %127 = add nsw i32 %124, %126
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %21, align 4
  %130 = mul nsw i32 5, %129
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %19, align 4
  br label %183

132:                                              ; preds = %39
  %133 = load i64, i64* @GL_TRUE, align 8
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* @GL_TRUE, align 8
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* @GL_FALSE, align 8
  store i64 %135, i64* %11, align 8
  store i32 2, i32* %12, align 4
  store i32 3, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %136 = load i32, i32* @GL_FLOAT, align 4
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %21, align 4
  %138 = mul nsw i32 2, %137
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %21, align 4
  %140 = mul nsw i32 5, %139
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %21, align 4
  %142 = mul nsw i32 8, %141
  store i32 %142, i32* %19, align 4
  br label %183

143:                                              ; preds = %39
  %144 = load i64, i64* @GL_TRUE, align 8
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* @GL_FALSE, align 8
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* @GL_TRUE, align 8
  store i64 %146, i64* %11, align 8
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %147 = load i32, i32* %21, align 4
  %148 = mul nsw i32 2, %147
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %21, align 4
  %150 = mul nsw i32 5, %149
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %21, align 4
  %152 = mul nsw i32 8, %151
  store i32 %152, i32* %19, align 4
  br label %183

153:                                              ; preds = %39
  %154 = load i64, i64* @GL_TRUE, align 8
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* @GL_TRUE, align 8
  store i64 %155, i64* %10, align 8
  %156 = load i64, i64* @GL_TRUE, align 8
  store i64 %156, i64* %11, align 8
  store i32 2, i32* %12, align 4
  store i32 4, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %157 = load i32, i32* @GL_FLOAT, align 4
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %21, align 4
  %159 = mul nsw i32 2, %158
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %21, align 4
  %161 = mul nsw i32 6, %160
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %21, align 4
  %163 = mul nsw i32 9, %162
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %21, align 4
  %165 = mul nsw i32 12, %164
  store i32 %165, i32* %19, align 4
  br label %183

166:                                              ; preds = %39
  %167 = load i64, i64* @GL_TRUE, align 8
  store i64 %167, i64* %9, align 8
  %168 = load i64, i64* @GL_TRUE, align 8
  store i64 %168, i64* %10, align 8
  %169 = load i64, i64* @GL_TRUE, align 8
  store i64 %169, i64* %11, align 8
  store i32 4, i32* %12, align 4
  store i32 4, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %170 = load i32, i32* @GL_FLOAT, align 4
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %21, align 4
  %172 = mul nsw i32 4, %171
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %21, align 4
  %174 = mul nsw i32 8, %173
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %21, align 4
  %176 = mul nsw i32 11, %175
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %21, align 4
  %178 = mul nsw i32 15, %177
  store i32 %178, i32* %19, align 4
  br label %183

179:                                              ; preds = %39
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* @GL_INVALID_ENUM, align 4
  %182 = call i32 @gl_error(i32* %180, i32 %181, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %263

183:                                              ; preds = %166, %153, %143, %132, %117, %109, %101, %90, %82, %73, %63, %53, %47, %41
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i32, i32* %19, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %186, %183
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @GL_EDGE_FLAG_ARRAY, align 4
  %191 = call i32 @gl_DisableClientState(i32* %189, i32 %190)
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* @GL_INDEX_ARRAY, align 4
  %194 = call i32 @gl_DisableClientState(i32* %192, i32 %193)
  %195 = load i64, i64* %9, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %188
  %198 = load i32*, i32** %5, align 8
  %199 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %200 = call i32 @gl_EnableClientState(i32* %198, i32 %199)
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @GL_FLOAT, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32*, i32** %8, align 8
  %206 = call i32 @gl_TexCoordPointer(i32* %201, i32 %202, i32 %203, i32 %204, i32* %205)
  br label %211

207:                                              ; preds = %188
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %210 = call i32 @gl_DisableClientState(i32* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %197
  %212 = load i64, i64* %10, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %211
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %217 = call i32 @gl_EnableClientState(i32* %215, i32 %216)
  %218 = load i32*, i32** %5, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = call i32 @gl_ColorPointer(i32* %218, i32 %219, i32 %220, i32 %221, i32* %225)
  br label %231

227:                                              ; preds = %211
  %228 = load i32*, i32** %5, align 8
  %229 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %230 = call i32 @gl_DisableClientState(i32* %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %214
  %232 = load i64, i64* %11, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %231
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* @GL_NORMAL_ARRAY, align 4
  %237 = call i32 @gl_EnableClientState(i32* %235, i32 %236)
  %238 = load i32*, i32** %5, align 8
  %239 = load i32, i32* @GL_FLOAT, align 4
  %240 = load i32, i32* %7, align 4
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %17, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = call i32 @gl_NormalPointer(i32* %238, i32 %239, i32 %240, i32* %244)
  br label %250

246:                                              ; preds = %231
  %247 = load i32*, i32** %5, align 8
  %248 = load i32, i32* @GL_NORMAL_ARRAY, align 4
  %249 = call i32 @gl_DisableClientState(i32* %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %234
  %251 = load i32*, i32** %5, align 8
  %252 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %253 = call i32 @gl_EnableClientState(i32* %251, i32 %252)
  %254 = load i32*, i32** %5, align 8
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* @GL_FLOAT, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load i32*, i32** %8, align 8
  %259 = load i32, i32* %18, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = call i32 @gl_VertexPointer(i32* %254, i32 %255, i32 %256, i32 %257, i32* %261)
  br label %263

263:                                              ; preds = %250, %179, %35
  ret void
}

declare dso_local i32 @gl_error(i32*, i32, i8*) #1

declare dso_local i32 @gl_DisableClientState(i32*, i32) #1

declare dso_local i32 @gl_EnableClientState(i32*, i32) #1

declare dso_local i32 @gl_TexCoordPointer(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @gl_ColorPointer(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @gl_NormalPointer(i32*, i32, i32, i32*) #1

declare dso_local i32 @gl_VertexPointer(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
