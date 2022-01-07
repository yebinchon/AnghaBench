; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_GetLightiv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_GetLightiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64*, i64*, i64, i64, i64, i64, i64, i32*, i32*, i32* }

@GL_LIGHT0 = common dso_local global i32 0, align 4
@MAX_LIGHTS = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glGetLightiv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetLightiv(%struct.TYPE_8__* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @GL_LIGHT0, align 4
  %12 = sub nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @MAX_LIGHTS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = load i32, i32* @GL_INVALID_ENUM, align 4
  %23 = call i32 @gl_error(%struct.TYPE_8__* %21, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %330

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %326 [
    i32 137, label %26
    i32 135, label %79
    i32 131, label %132
    i32 133, label %185
    i32 129, label %234
    i32 128, label %271
    i32 130, label %282
    i32 136, label %293
    i32 134, label %304
    i32 132, label %315
  ]

26:                                               ; preds = %24
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 9
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @FLOAT_TO_INT(i32 %36)
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 9
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @FLOAT_TO_INT(i32 %49)
  %51 = load i64*, i64** %8, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 9
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @FLOAT_TO_INT(i32 %62)
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 9
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @FLOAT_TO_INT(i32 %75)
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 3
  store i64 %76, i64* %78, align 8
  br label %330

79:                                               ; preds = %24
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 8
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @FLOAT_TO_INT(i32 %89)
  %91 = load i64*, i64** %8, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 8
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @FLOAT_TO_INT(i32 %102)
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 8
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @FLOAT_TO_INT(i32 %115)
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 8
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @FLOAT_TO_INT(i32 %128)
  %130 = load i64*, i64** %8, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 3
  store i64 %129, i64* %131, align 8
  br label %330

132:                                              ; preds = %24
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 7
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @FLOAT_TO_INT(i32 %142)
  %144 = load i64*, i64** %8, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 7
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @FLOAT_TO_INT(i32 %155)
  %157 = load i64*, i64** %8, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 1
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = load i64, i64* %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 7
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @FLOAT_TO_INT(i32 %168)
  %170 = load i64*, i64** %8, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 2
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i64, i64* %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 7
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @FLOAT_TO_INT(i32 %181)
  %183 = load i64*, i64** %8, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 3
  store i64 %182, i64* %184, align 8
  br label %330

185:                                              ; preds = %24
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load i64, i64* %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64*, i64** %8, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %8, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  store i64 %207, i64* %209, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = load i64, i64* %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64*, i64** %8, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 2
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = load i64, i64* %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 3
  %231 = load i64, i64* %230, align 8
  %232 = load i64*, i64** %8, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 3
  store i64 %231, i64* %233, align 8
  br label %330

234:                                              ; preds = %24
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = load i64, i64* %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64*, i64** %8, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 0
  store i64 %244, i64* %246, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load i64, i64* %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64*, i64** %8, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 1
  store i64 %256, i64* %258, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = load i64, i64* %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 2
  %268 = load i64, i64* %267, align 8
  %269 = load i64*, i64** %8, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 2
  store i64 %268, i64* %270, align 8
  br label %330

271:                                              ; preds = %24
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %274, align 8
  %276 = load i64, i64* %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load i64*, i64** %8, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 0
  store i64 %279, i64* %281, align 8
  br label %330

282:                                              ; preds = %24
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = load i64, i64* %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = load i64*, i64** %8, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 0
  store i64 %290, i64* %292, align 8
  br label %330

293:                                              ; preds = %24
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = load i64, i64* %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = load i64*, i64** %8, align 8
  %303 = getelementptr inbounds i64, i64* %302, i64 0
  store i64 %301, i64* %303, align 8
  br label %330

304:                                              ; preds = %24
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %307, align 8
  %309 = load i64, i64* %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = load i64*, i64** %8, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 0
  store i64 %312, i64* %314, align 8
  br label %330

315:                                              ; preds = %24
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = load i64, i64* %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 6
  %323 = load i64, i64* %322, align 8
  %324 = load i64*, i64** %8, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 0
  store i64 %323, i64* %325, align 8
  br label %330

326:                                              ; preds = %24
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %328 = load i32, i32* @GL_INVALID_ENUM, align 4
  %329 = call i32 @gl_error(%struct.TYPE_8__* %327, i32 %328, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %330

330:                                              ; preds = %20, %326, %315, %304, %293, %282, %271, %234, %185, %132, %79, %26
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @FLOAT_TO_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
