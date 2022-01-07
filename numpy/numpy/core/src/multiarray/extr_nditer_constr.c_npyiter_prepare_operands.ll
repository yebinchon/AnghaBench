; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_prepare_operands.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_prepare_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_ITER_ARRAYMASK = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Only one iterator operand may receive an ARRAYMASK flag\00", align 1
@NPY_ITER_WRITEMASKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"At least one iterator operand must be non-NULL\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"An iterator operand was flagged as WRITEMASKED, but no ARRAYMASK operand was given to supply the mask\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"An iterator operand was flagged as the ARRAYMASK, but no WRITEMASKED operands were given to use the mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32**, i8**, i32**, i32**, i32, i32*, i32*, i32*)* @npyiter_prepare_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_prepare_operands(i32 %0, i32** %1, i32** %2, i8** %3, i32** %4, i32** %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32** %1, i32*** %13, align 8
  store i32** %2, i32*** %14, align 8
  store i8** %3, i8*** %15, align 8
  store i32** %4, i32*** %16, align 8
  store i32** %5, i32*** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 -1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %22, align 4
  br label %27

27:                                               ; preds = %130, %10
  %28 = load i32, i32* %22, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %133

31:                                               ; preds = %27
  %32 = load i32**, i32*** %13, align 8
  %33 = load i32, i32* %22, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32**, i32*** %14, align 8
  %38 = load i32, i32* %22, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* %36, i32** %40, align 8
  %41 = load i32**, i32*** %14, align 8
  %42 = load i32, i32* %22, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @Py_XINCREF(i32* %45)
  %47 = load i32**, i32*** %17, align 8
  %48 = load i32, i32* %22, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = load i32, i32* %22, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %20, align 8
  %57 = load i32, i32* %22, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @npyiter_check_per_op_flags(i32 %55, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %31
  br label %185

63:                                               ; preds = %31
  %64 = load i32*, i32** %19, align 8
  %65 = load i32, i32* %22, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NPY_ITER_ARRAYMASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %63
  %73 = load i32, i32* %24, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @PyExc_ValueError, align 4
  %77 = call i32 @PyErr_SetString(i32 %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %185

78:                                               ; preds = %72
  %79 = load i32, i32* %22, align 4
  store i32 %79, i32* %24, align 4
  %80 = load i32, i32* %22, align 4
  %81 = load i32*, i32** %21, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %63
  %83 = load i32*, i32** %19, align 8
  %84 = load i32, i32* %22, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NPY_ITER_WRITEMASKED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 1, i32* %25, align 4
  br label %92

92:                                               ; preds = %91, %82
  %93 = load i32**, i32*** %14, align 8
  %94 = load i32, i32* %22, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i8**, i8*** %15, align 8
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i32**, i32*** %16, align 8
  %102 = icmp ne i32** %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load i32**, i32*** %16, align 8
  %105 = load i32, i32* %22, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  br label %110

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %103
  %111 = phi i32* [ %108, %103 ], [ null, %109 ]
  %112 = load i32**, i32*** %17, align 8
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32, i32* %18, align 4
  %117 = load i32*, i32** %19, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %20, align 8
  %123 = load i32, i32* %22, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i32 @npyiter_prepare_one_operand(i32** %96, i8** %100, i32* %111, i32** %115, i32 %116, i32 %121, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %110
  br label %185

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %22, align 4
  br label %27

133:                                              ; preds = %27
  %134 = load i32**, i32*** %14, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %162

138:                                              ; preds = %133
  store i32 1, i32* %26, align 4
  store i32 1, i32* %22, align 4
  br label %139

139:                                              ; preds = %152, %138
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = load i32**, i32*** %14, align 8
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 0, i32* %26, align 4
  br label %155

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  br label %139

155:                                              ; preds = %150, %139
  %156 = load i32, i32* %26, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* @PyExc_ValueError, align 4
  %160 = call i32 @PyErr_SetString(i32 %159, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %182

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %133
  %163 = load i32, i32* %25, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* %24, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* @PyExc_ValueError, align 4
  %170 = call i32 @PyErr_SetString(i32 %169, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0))
  br label %182

171:                                              ; preds = %165, %162
  %172 = load i32, i32* %25, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %24, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* @PyExc_ValueError, align 4
  %179 = call i32 @PyErr_SetString(i32 %178, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0))
  br label %182

180:                                              ; preds = %174, %171
  br label %181

181:                                              ; preds = %180
  store i32 1, i32* %11, align 4
  br label %208

182:                                              ; preds = %177, %168, %158
  %183 = load i32, i32* %12, align 4
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %22, align 4
  br label %185

185:                                              ; preds = %182, %128, %75, %62
  store i32 0, i32* %23, align 4
  br label %186

186:                                              ; preds = %204, %185
  %187 = load i32, i32* %23, align 4
  %188 = load i32, i32* %22, align 4
  %189 = add nsw i32 %188, 1
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %207

191:                                              ; preds = %186
  %192 = load i32**, i32*** %14, align 8
  %193 = load i32, i32* %23, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @Py_XDECREF(i32* %196)
  %198 = load i32**, i32*** %17, align 8
  %199 = load i32, i32* %23, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @Py_XDECREF(i32* %202)
  br label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %23, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %23, align 4
  br label %186

207:                                              ; preds = %186
  store i32 0, i32* %11, align 4
  br label %208

208:                                              ; preds = %207, %181
  %209 = load i32, i32* %11, align 4
  ret i32 %209
}

declare dso_local i32 @Py_XINCREF(i32*) #1

declare dso_local i32 @npyiter_check_per_op_flags(i32, i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @npyiter_prepare_one_operand(i32**, i8**, i32*, i32**, i32, i32, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
