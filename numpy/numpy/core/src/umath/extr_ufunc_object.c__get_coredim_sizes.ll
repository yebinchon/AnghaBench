; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__get_coredim_sizes.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__get_coredim_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32 }

@UFUNC_CORE_DIM_MISSING = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"%s: %s operand %d has a mismatch in its core dimension %d, with gufunc signature %s (size %zd is different from %zd)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"%s: Output operand %d has core dimension %d unspecified, with gufunc signature %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32*, i32*, i64*, i32**)* @_get_coredim_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_coredim_sizes(%struct.TYPE_4__* %0, i32** %1, i32* %2, i32* %3, i64* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32** %5, i32*** %13, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %181, %6
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %184

42:                                               ; preds = %38
  %43 = load i32**, i32*** %9, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %180

49:                                               ; preds = %42
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %19, align 4
  %57 = load i32**, i32*** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @PyArray_NDIM(i32* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %62, %67
  store i32 %68, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp sge i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  store i32 0, i32* %18, align 4
  br label %73

73:                                               ; preds = %176, %49
  %74 = load i32, i32* %18, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %74, %81
  br i1 %82, label %83, label %179

83:                                               ; preds = %73
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %22, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %22, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %23, align 4
  %94 = load i64*, i64** %12, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %24, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %23, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UFUNC_CORE_DIM_MISSING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %83
  store i64 1, i64* %25, align 8
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %124

110:                                              ; preds = %83
  %111 = load i32**, i32*** %9, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %21, align 4
  %121 = sub nsw i32 %119, %120
  %122 = call i32 @REMAP_AXIS(i32 %116, i32 %121)
  %123 = call i64 @PyArray_DIM(i32* %115, i32 %122)
  store i64 %123, i64* %25, align 8
  br label %124

124:                                              ; preds = %110, %107
  %125 = load i64*, i64** %12, align 8
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i64, i64* %25, align 8
  %133 = load i64*, i64** %12, align 8
  %134 = load i32, i32* %23, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 %132, i64* %136, align 8
  br label %175

137:                                              ; preds = %124
  %138 = load i64, i64* %25, align 8
  %139 = load i64, i64* %24, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %174

141:                                              ; preds = %137
  %142 = load i32, i32* @PyExc_ValueError, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %144 = call i32 @ufunc_get_name_cstr(%struct.TYPE_4__* %143)
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp slt i32 %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %141
  %154 = load i32, i32* %14, align 4
  br label %159

155:                                              ; preds = %141
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %15, align 4
  %158 = sub nsw i32 %156, %157
  br label %159

159:                                              ; preds = %155, %153
  %160 = phi i32 [ %154, %153 ], [ %158, %155 ]
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %21, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %25, align 8
  %168 = load i64*, i64** %12, align 8
  %169 = load i32, i32* %23, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i32 (i32, i8*, i32, ...) @PyErr_Format(i32 %142, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %144, i8* %149, i32 %160, i32 %163, i32 %166, i64 %167, i64 %172)
  store i32 -1, i32* %7, align 4
  br label %245

174:                                              ; preds = %137
  br label %175

175:                                              ; preds = %174, %131
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %18, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %18, align 4
  br label %73

179:                                              ; preds = %73
  br label %180

180:                                              ; preds = %179, %42
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %38

184:                                              ; preds = %38
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %241, %184
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %17, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %244

190:                                              ; preds = %186
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %198

198:                                              ; preds = %237, %190
  %199 = load i32, i32* %26, align 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %199, %206
  br i1 %207, label %208, label %240

208:                                              ; preds = %198
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %27, align 4
  %213 = load i32, i32* %26, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %211, i64 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %28, align 4
  %218 = load i64*, i64** %12, align 8
  %219 = load i32, i32* %28, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %208
  %225 = load i32, i32* @PyExc_ValueError, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %227 = call i32 @ufunc_get_name_cstr(%struct.TYPE_4__* %226)
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %15, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load i32, i32* %26, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (i32, i8*, i32, ...) @PyErr_Format(i32 %225, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %227, i32 %230, i32 %231, i32 %234)
  store i32 -1, i32* %7, align 4
  br label %245

236:                                              ; preds = %208
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %26, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %26, align 4
  br label %198

240:                                              ; preds = %198
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %186

244:                                              ; preds = %186
  store i32 0, i32* %7, align 4
  br label %245

245:                                              ; preds = %244, %224, %159
  %246 = load i32, i32* %7, align 4
  ret i32 %246
}

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @REMAP_AXIS(i32, i32) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32, ...) #1

declare dso_local i32 @ufunc_get_name_cstr(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
