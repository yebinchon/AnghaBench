; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_GetMaterialiv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_GetMaterialiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glGetMaterialiv\00", align 1
@GL_FRONT = common dso_local global i64 0, align 8
@GL_BACK = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"glGetMaterialiv(face)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"glGetMaterialfv(pname)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetMaterialiv(%struct.TYPE_9__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_9__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %16 = call i32 @gl_error(%struct.TYPE_9__* %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %295

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @GL_FRONT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %32

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @GL_BACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 1, i64* %9, align 8
  br label %31

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = load i32, i32* @GL_INVALID_ENUM, align 4
  %30 = call i32 @gl_error(%struct.TYPE_9__* %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %295

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i64, i64* %7, align 8
  switch i64 %33, label %291 [
    i64 133, label %34
    i64 131, label %87
    i64 128, label %140
    i64 130, label %193
    i64 129, label %246
    i64 132, label %257
  ]

34:                                               ; preds = %32
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @FLOAT_TO_INT(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @FLOAT_TO_INT(i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @FLOAT_TO_INT(i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @FLOAT_TO_INT(i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %84, i32* %86, align 4
  br label %295

87:                                               ; preds = %32
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @FLOAT_TO_INT(i32 %97)
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @FLOAT_TO_INT(i32 %110)
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @FLOAT_TO_INT(i32 %123)
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @FLOAT_TO_INT(i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 %137, i32* %139, align 4
  br label %295

140:                                              ; preds = %32
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i64, i64* %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @FLOAT_TO_INT(i32 %150)
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @FLOAT_TO_INT(i32 %163)
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @FLOAT_TO_INT(i32 %176)
  %178 = load i32*, i32** %8, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load i64, i64* %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @FLOAT_TO_INT(i32 %189)
  %191 = load i32*, i32** %8, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  store i32 %190, i32* %192, align 4
  br label %295

193:                                              ; preds = %32
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @FLOAT_TO_INT(i32 %203)
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = load i64, i64* %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @FLOAT_TO_INT(i32 %216)
  %218 = load i32*, i32** %8, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load i64, i64* %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 4
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @FLOAT_TO_INT(i32 %229)
  %231 = load i32*, i32** %8, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  store i32 %230, i32* %232, align 4
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = load i64, i64* %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @FLOAT_TO_INT(i32 %242)
  %244 = load i32*, i32** %8, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 3
  store i32 %243, i32* %245, align 4
  br label %295

246:                                              ; preds = %32
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %249, align 8
  %251 = load i64, i64* %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ROUNDF(i32 %254)
  %256 = load i32*, i32** %8, align 8
  store i32 %255, i32* %256, align 4
  br label %295

257:                                              ; preds = %32
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = load i64, i64* %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @ROUNDF(i32 %265)
  %267 = load i32*, i32** %8, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 %266, i32* %268, align 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = load i64, i64* %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ROUNDF(i32 %276)
  %278 = load i32*, i32** %8, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  store i32 %277, i32* %279, align 4
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %282, align 8
  %284 = load i64, i64* %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @ROUNDF(i32 %287)
  %289 = load i32*, i32** %8, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  store i32 %288, i32* %290, align 4
  br label %295

291:                                              ; preds = %32
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %293 = load i32, i32* @GL_INVALID_ENUM, align 4
  %294 = call i32 @gl_error(%struct.TYPE_9__* %292, i32 %293, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %295

295:                                              ; preds = %13, %27, %291, %257, %246, %193, %140, %87, %34
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_9__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @FLOAT_TO_INT(i32) #1

declare dso_local i32 @ROUNDF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
