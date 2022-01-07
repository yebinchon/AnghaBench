; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_test_texture_object_completeness.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_test_texture_object_completeness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { i64, i32, i8*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }

@GL_TRUE = common dso_local global i8* null, align 8
@GL_FALSE = common dso_local global i8* null, align 8
@GL_NEAREST = common dso_local global i64 0, align 8
@GL_LINEAR = common dso_local global i64 0, align 8
@MAX_TEXTURE_LEVELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Bug in gl_test_texture_object_completeness\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_test_texture_object_completeness(%struct.gl_texture_object* %0) #0 {
  %2 = alloca %struct.gl_texture_object*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %2, align 8
  %7 = load i8*, i8** @GL_TRUE, align 8
  %8 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %9 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  %10 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %11 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %18 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16, %1
  %26 = load i8*, i8** @GL_FALSE, align 8
  %27 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %28 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  br label %336

29:                                               ; preds = %16
  %30 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %31 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GL_NEAREST, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %336

35:                                               ; preds = %29
  %36 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %37 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GL_LINEAR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %336

41:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %116, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MAX_TEXTURE_LEVELS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %119

46:                                               ; preds = %42
  %47 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %48 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %115

55:                                               ; preds = %46
  %56 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %57 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %55
  %67 = load i8*, i8** @GL_FALSE, align 8
  %68 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %69 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %336

70:                                               ; preds = %55
  %71 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %72 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %81 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %79, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %70
  %89 = load i8*, i8** @GL_FALSE, align 8
  %90 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %91 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  br label %336

92:                                               ; preds = %70
  %93 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %94 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %95, i64 %97
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %103 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %104, i64 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %101, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %92
  %111 = load i8*, i8** @GL_FALSE, align 8
  %112 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %113 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  br label %336

114:                                              ; preds = %92
  br label %115

115:                                              ; preds = %114, %46
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %42

119:                                              ; preds = %42
  %120 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %121 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %239

124:                                              ; preds = %119
  %125 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %126 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %125, i32 0, i32 3
  %127 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %127, i64 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %132

132:                                              ; preds = %235, %124
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @MAX_TEXTURE_LEVELS, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %238

136:                                              ; preds = %132
  %137 = load i32, i32* %4, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = sdiv i32 %140, 2
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %144 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %145, i64 %147
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = icmp ne %struct.TYPE_2__* %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %142
  %152 = load i8*, i8** @GL_FALSE, align 8
  %153 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %154 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  br label %336

155:                                              ; preds = %142
  %156 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %157 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %156, i32 0, i32 3
  %158 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %158, i64 %160
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %155
  %167 = load i8*, i8** @GL_FALSE, align 8
  %168 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %169 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  br label %336

170:                                              ; preds = %155
  %171 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %172 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %171, i32 0, i32 3
  %173 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %172, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %173, i64 %175
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %181 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %180, i32 0, i32 3
  %182 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %182, i64 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %179, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %170
  %189 = load i8*, i8** @GL_FALSE, align 8
  %190 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %191 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  br label %336

192:                                              ; preds = %170
  %193 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %194 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %193, i32 0, i32 3
  %195 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %194, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %195, i64 %197
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %203 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %202, i32 0, i32 3
  %204 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %204, i64 0
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %201, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %192
  %211 = load i8*, i8** @GL_FALSE, align 8
  %212 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %213 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  br label %336

214:                                              ; preds = %192
  %215 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %216 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %215, i32 0, i32 3
  %217 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %216, align 8
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %217, i64 %219
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %214
  %227 = load i8*, i8** @GL_FALSE, align 8
  %228 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %229 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  br label %336

230:                                              ; preds = %214
  %231 = load i32, i32* %4, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  br label %336

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %3, align 4
  br label %132

238:                                              ; preds = %132
  br label %335

239:                                              ; preds = %119
  %240 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %241 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %332

244:                                              ; preds = %239
  %245 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %246 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %245, i32 0, i32 3
  %247 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %247, i64 0
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  store i32 %251, i32* %5, align 4
  %252 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %253 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %252, i32 0, i32 3
  %254 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %254, i64 0
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %6, align 4
  store i32 1, i32* %3, align 4
  br label %259

259:                                              ; preds = %328, %244
  %260 = load i32, i32* %3, align 4
  %261 = load i32, i32* @MAX_TEXTURE_LEVELS, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %331

263:                                              ; preds = %259
  %264 = load i32, i32* %5, align 4
  %265 = icmp sgt i32 %264, 1
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* %5, align 4
  %268 = sdiv i32 %267, 2
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i32, i32* %6, align 4
  %271 = icmp sgt i32 %270, 1
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* %6, align 4
  %274 = sdiv i32 %273, 2
  store i32 %274, i32* %6, align 4
  br label %275

275:                                              ; preds = %272, %269
  %276 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %277 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %276, i32 0, i32 3
  %278 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %277, align 8
  %279 = load i32, i32* %3, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %278, i64 %280
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = icmp ne %struct.TYPE_2__* %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %275
  %285 = load i8*, i8** @GL_FALSE, align 8
  %286 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %287 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %286, i32 0, i32 2
  store i8* %285, i8** %287, align 8
  br label %336

288:                                              ; preds = %275
  %289 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %290 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %289, i32 0, i32 3
  %291 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %290, align 8
  %292 = load i32, i32* %3, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %291, i64 %293
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = icmp ne i32 %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %288
  %301 = load i8*, i8** @GL_FALSE, align 8
  %302 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %303 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  br label %336

304:                                              ; preds = %288
  %305 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %306 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %305, i32 0, i32 3
  %307 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %306, align 8
  %308 = load i32, i32* %3, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %307, i64 %309
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %6, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %304
  %317 = load i8*, i8** @GL_FALSE, align 8
  %318 = load %struct.gl_texture_object*, %struct.gl_texture_object** %2, align 8
  %319 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %318, i32 0, i32 2
  store i8* %317, i8** %319, align 8
  br label %336

320:                                              ; preds = %304
  %321 = load i32, i32* %5, align 4
  %322 = icmp eq i32 %321, 1
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i32, i32* %6, align 4
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  br label %336

327:                                              ; preds = %323, %320
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %3, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %3, align 4
  br label %259

331:                                              ; preds = %259
  br label %334

332:                                              ; preds = %239
  %333 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %334

334:                                              ; preds = %332, %331
  br label %335

335:                                              ; preds = %334, %238
  br label %336

336:                                              ; preds = %25, %66, %88, %110, %151, %166, %188, %210, %226, %233, %284, %300, %316, %326, %335, %35, %29
  ret void
}

declare dso_local i32 @gl_problem(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
