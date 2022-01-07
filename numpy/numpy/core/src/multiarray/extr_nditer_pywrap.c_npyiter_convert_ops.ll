; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_convert_ops.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_convert_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Must provide at least one operand\00", align 1
@NPY_MAXARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Too many operands\00", align 1
@Py_None = common dso_local global i32* null, align 8
@NPY_ITER_WRITEONLY = common dso_local global i32 0, align 4
@NPY_ITER_ALLOCATE = common dso_local global i32 0, align 4
@NPY_ITER_READONLY = common dso_local global i32 0, align 4
@NPY_ITER_READWRITE = common dso_local global i32 0, align 4
@NPY_ARRAY_WRITEBACKIFCOPY = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [111 x i8] c"Iterator operand is flagged as writeable, but is an object which cannot be written back to via WRITEBACKIFCOPY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i32*, i32*)* @npyiter_convert_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_convert_ops(i32* %0, i32* %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @PyTuple_Check(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @PyList_Check(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %85

25:                                               ; preds = %21, %5
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @PySequence_Size(i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @PyExc_ValueError, align 4
  %32 = call i32 @PyErr_SetString(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %237

33:                                               ; preds = %25
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @NPY_MAXARGS, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @PyExc_ValueError, align 4
  %39 = call i32 @PyErr_SetString(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %237

40:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %81, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32* @PySequence_GetItem(i32* %46, i32 %47)
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32**, i32*** %9, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @Py_XDECREF(i32* %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %52

66:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %237

67:                                               ; preds = %45
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** @Py_None, align 8
  %70 = icmp eq i32* %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @Py_DECREF(i32* %72)
  store i32* null, i32** %14, align 8
  br label %74

74:                                               ; preds = %71, %67
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %14, align 8
  %77 = load i32**, i32*** %9, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  store i32* %76, i32** %80, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %41

84:                                               ; preds = %41
  br label %91

85:                                               ; preds = %21
  store i32 1, i32* %13, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @Py_INCREF(i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32**, i32*** %9, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  store i32* %88, i32** %90, align 8
  br label %91

91:                                               ; preds = %85, %84
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** @Py_None, align 8
  %99 = icmp eq i32* %97, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %96, %91
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load i32**, i32*** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load i32, i32* @NPY_ITER_WRITEONLY, align 4
  %114 = load i32, i32* @NPY_ITER_ALLOCATE, align 4
  %115 = or i32 %113, %114
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  br label %126

120:                                              ; preds = %105
  %121 = load i32, i32* @NPY_ITER_READONLY, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %112
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %101

130:                                              ; preds = %101
  br label %155

131:                                              ; preds = %96
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @npyiter_convert_op_flags_array(i32* %132, i32* %133, i32 %134)
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %149, %137
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i32**, i32*** %9, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @Py_XDECREF(i32* %147)
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %138

152:                                              ; preds = %138
  %153 = load i32*, i32** %11, align 8
  store i32 0, i32* %153, align 4
  store i32 0, i32* %6, align 4
  br label %237

154:                                              ; preds = %131
  br label %155

155:                                              ; preds = %154, %130
  store i32 0, i32* %12, align 4
  br label %156

156:                                              ; preds = %233, %155
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %236

160:                                              ; preds = %156
  %161 = load i32**, i32*** %9, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %232

167:                                              ; preds = %160
  store i32 0, i32* %17, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @NPY_ITER_READWRITE, align 4
  %174 = load i32, i32* @NPY_ITER_WRITEONLY, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %167
  %179 = load i32, i32* @NPY_ARRAY_WRITEBACKIFCOPY, align 4
  %180 = load i32, i32* %17, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %178, %167
  %183 = load i32**, i32*** %9, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = call i64 @PyArray_FROM_OF(i32* %187, i32 %188)
  %190 = inttoptr i64 %189 to i32*
  store i32* %190, i32** %16, align 8
  %191 = load i32*, i32** %16, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %220

193:                                              ; preds = %182
  %194 = call i64 (...) @PyErr_Occurred()
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load i32, i32* @PyExc_TypeError, align 4
  %198 = call i64 @PyErr_ExceptionMatches(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i32, i32* @PyExc_TypeError, align 4
  %202 = call i32 @PyErr_SetString(i32 %201, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %196, %193
  store i32 0, i32* %12, align 4
  br label %204

204:                                              ; preds = %215, %203
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = load i32**, i32*** %9, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @Py_DECREF(i32* %213)
  br label %215

215:                                              ; preds = %208
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %12, align 4
  br label %204

218:                                              ; preds = %204
  %219 = load i32*, i32** %11, align 8
  store i32 0, i32* %219, align 4
  store i32 0, i32* %6, align 4
  br label %237

220:                                              ; preds = %182
  %221 = load i32**, i32*** %9, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @Py_DECREF(i32* %225)
  %227 = load i32*, i32** %16, align 8
  %228 = load i32**, i32*** %9, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  store i32* %227, i32** %231, align 8
  br label %232

232:                                              ; preds = %220, %160
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %156

236:                                              ; preds = %156
  store i32 1, i32* %6, align 4
  br label %237

237:                                              ; preds = %236, %218, %152, %66, %37, %30
  %238 = load i32, i32* %6, align 4
  ret i32 %238
}

declare dso_local i64 @PyTuple_Check(i32*) #1

declare dso_local i64 @PyList_Check(i32*) #1

declare dso_local i32 @PySequence_Size(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @npyiter_convert_op_flags_array(i32*, i32*, i32) #1

declare dso_local i64 @PyArray_FROM_OF(i32*, i32) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i64 @PyErr_ExceptionMatches(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
