; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_lines.c_gl_set_line_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_lines.c_gl_set_line_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i64, %struct.TYPE_11__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { double, i64, i64 }
%struct.TYPE_11__ = type { i64 }

@GL_RENDER = common dso_local global i64 0, align 8
@null_line = common dso_local global i64 0, align 8
@GL_SMOOTH = common dso_local global i64 0, align 8
@smooth_textured_line = common dso_local global i64 0, align 8
@flat_textured_line = common dso_local global i64 0, align 8
@general_smooth_rgba_line = common dso_local global i64 0, align 8
@general_smooth_ci_line = common dso_local global i64 0, align 8
@general_flat_rgba_line = common dso_local global i64 0, align 8
@general_flat_ci_line = common dso_local global i64 0, align 8
@GL_NICEST = common dso_local global i64 0, align 8
@smooth_rgba_z_line = common dso_local global i64 0, align 8
@smooth_ci_z_line = common dso_local global i64 0, align 8
@smooth_rgba_line = common dso_local global i64 0, align 8
@smooth_ci_line = common dso_local global i64 0, align 8
@flat_rgba_z_line = common dso_local global i64 0, align 8
@flat_ci_z_line = common dso_local global i64 0, align 8
@flat_rgba_line = common dso_local global i64 0, align 8
@flat_ci_line = common dso_local global i64 0, align 8
@GL_FEEDBACK = common dso_local global i64 0, align 8
@feedback_line = common dso_local global i64 0, align 8
@select_line = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_set_line_function(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %4 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 9
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GL_RENDER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %229

14:                                               ; preds = %1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i64, i64* @null_line, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %246

24:                                               ; preds = %14
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %228

38:                                               ; preds = %24
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @GL_SMOOTH, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i64, i64* @smooth_textured_line, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  br label %61

56:                                               ; preds = %44
  %57 = load i64, i64* @flat_textured_line, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %51
  br label %227

62:                                               ; preds = %38
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = fcmp une double %66, 1.000000e+00
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %122

86:                                               ; preds = %80, %74, %68, %62
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GL_SMOOTH, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %86
  %94 = load i64, i64* %3, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i64, i64* @general_smooth_rgba_line, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  br label %106

101:                                              ; preds = %93
  %102 = load i64, i64* @general_smooth_ci_line, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %96
  br label %121

107:                                              ; preds = %86
  %108 = load i64, i64* %3, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i64, i64* @general_flat_rgba_line, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  br label %120

115:                                              ; preds = %107
  %116 = load i64, i64* @general_flat_ci_line, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %120, %106
  br label %226

122:                                              ; preds = %80
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @GL_SMOOTH, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %177

129:                                              ; preds = %122
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %135
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @GL_NICEST, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %141, %129
  %149 = load i64, i64* %3, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i64, i64* @smooth_rgba_z_line, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  store i64 %152, i64* %155, align 8
  br label %161

156:                                              ; preds = %148
  %157 = load i64, i64* @smooth_ci_z_line, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  store i64 %157, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %151
  br label %176

162:                                              ; preds = %141, %135
  %163 = load i64, i64* %3, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i64, i64* @smooth_rgba_line, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  store i64 %166, i64* %169, align 8
  br label %175

170:                                              ; preds = %162
  %171 = load i64, i64* @smooth_ci_line, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  store i64 %171, i64* %174, align 8
  br label %175

175:                                              ; preds = %170, %165
  br label %176

176:                                              ; preds = %175, %161
  br label %225

177:                                              ; preds = %122
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %177
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %183
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @GL_NICEST, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %189, %177
  %197 = load i64, i64* %3, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i64, i64* @flat_rgba_z_line, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  store i64 %200, i64* %203, align 8
  br label %209

204:                                              ; preds = %196
  %205 = load i64, i64* @flat_ci_z_line, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  store i64 %205, i64* %208, align 8
  br label %209

209:                                              ; preds = %204, %199
  br label %224

210:                                              ; preds = %189, %183
  %211 = load i64, i64* %3, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load i64, i64* @flat_rgba_line, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  store i64 %214, i64* %217, align 8
  br label %223

218:                                              ; preds = %210
  %219 = load i64, i64* @flat_ci_line, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  store i64 %219, i64* %222, align 8
  br label %223

223:                                              ; preds = %218, %213
  br label %224

224:                                              ; preds = %223, %209
  br label %225

225:                                              ; preds = %224, %176
  br label %226

226:                                              ; preds = %225, %121
  br label %227

227:                                              ; preds = %226, %61
  br label %228

228:                                              ; preds = %227, %30
  br label %246

229:                                              ; preds = %1
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @GL_FEEDBACK, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load i64, i64* @feedback_line, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  store i64 %236, i64* %239, align 8
  br label %245

240:                                              ; preds = %229
  %241 = load i64, i64* @select_line, align 8
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  store i64 %241, i64* %244, align 8
  br label %245

245:                                              ; preds = %240, %235
  br label %246

246:                                              ; preds = %19, %245, %228
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
