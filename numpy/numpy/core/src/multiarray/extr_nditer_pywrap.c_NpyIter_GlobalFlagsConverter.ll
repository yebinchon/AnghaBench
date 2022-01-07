; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_NpyIter_GlobalFlagsConverter.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_NpyIter_GlobalFlagsConverter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_None = common dso_local global i32* null, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Iterator global flags must be a list or tuple of strings\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"buffered\00", align 1
@NPY_ITER_BUFFERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"c_index\00", align 1
@NPY_ITER_C_INDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"copy_if_overlap\00", align 1
@NPY_ITER_COPY_IF_OVERLAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"common_dtype\00", align 1
@NPY_ITER_COMMON_DTYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"delay_bufalloc\00", align 1
@NPY_ITER_DELAY_BUFALLOC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"external_loop\00", align 1
@NPY_ITER_EXTERNAL_LOOP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"f_index\00", align 1
@NPY_ITER_F_INDEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"grow_inner\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"growinner\00", align 1
@NPY_ITER_GROWINNER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"multi_index\00", align 1
@NPY_ITER_MULTI_INDEX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"ranged\00", align 1
@NPY_ITER_RANGED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"refs_ok\00", align 1
@NPY_ITER_REFS_OK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"reduce_ok\00", align 1
@NPY_ITER_REDUCE_OK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"zerosize_ok\00", align 1
@NPY_ITER_ZEROSIZE_OK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"Unexpected iterator global flag \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @NpyIter_GlobalFlagsConverter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NpyIter_GlobalFlagsConverter(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** @Py_None, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %2
  store i32 1, i32* %3, align 4
  br label %203

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @PyTuple_Check(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @PyList_Check(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @PyExc_ValueError, align 4
  %31 = call i32 @PyErr_SetString(i32 %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %203

32:                                               ; preds = %25, %21
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @PySequence_Size(i32* %33)
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %195, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %198

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @PySequence_GetItem(i32* %40, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %203

46:                                               ; preds = %39
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @PyUnicode_Check(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @PyUnicode_AsASCIIString(i32* %51)
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @Py_DECREF(i32* %56)
  store i32 0, i32* %3, align 4
  br label %203

58:                                               ; preds = %50
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @Py_DECREF(i32* %59)
  %61 = load i32*, i32** %13, align 8
  store i32* %61, i32** %9, align 8
  br label %62

62:                                               ; preds = %58, %46
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @PyBytes_AsStringAndSize(i32* %63, i8** %10, i32* %11)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @Py_DECREF(i32* %67)
  store i32 0, i32* %3, align 4
  br label %203

69:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %179 [
    i32 98, label %74
    i32 99, label %81
    i32 100, label %112
    i32 101, label %119
    i32 102, label %126
    i32 103, label %133
    i32 109, label %144
    i32 114, label %151
    i32 122, label %172
  ]

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @NPY_ITER_BUFFERED, align 4
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %78, %74
  br label %179

81:                                               ; preds = %69
  %82 = load i32, i32* %11, align 4
  %83 = icmp sge i32 %82, 6
  br i1 %83, label %84, label %111

84:                                               ; preds = %81
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 5
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %110 [
    i32 101, label %89
    i32 105, label %96
    i32 110, label %103
  ]

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @NPY_ITER_C_INDEX, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %93, %89
  br label %110

96:                                               ; preds = %84
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @NPY_ITER_COPY_IF_OVERLAP, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %100, %96
  br label %110

103:                                              ; preds = %84
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @NPY_ITER_COMMON_DTYPE, align 4
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %107, %103
  br label %110

110:                                              ; preds = %84, %109, %102, %95
  br label %111

111:                                              ; preds = %110, %81
  br label %179

112:                                              ; preds = %69
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @NPY_ITER_DELAY_BUFALLOC, align 4
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %116, %112
  br label %179

119:                                              ; preds = %69
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @NPY_ITER_EXTERNAL_LOOP, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %123, %119
  br label %179

126:                                              ; preds = %69
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @NPY_ITER_F_INDEX, align 4
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %130, %126
  br label %179

133:                                              ; preds = %69
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137, %133
  %142 = load i32, i32* @NPY_ITER_GROWINNER, align 4
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %141, %137
  br label %179

144:                                              ; preds = %69
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @NPY_ITER_MULTI_INDEX, align 4
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %148, %144
  br label %179

151:                                              ; preds = %69
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @NPY_ITER_RANGED, align 4
  store i32 %156, i32* %12, align 4
  br label %171

157:                                              ; preds = %151
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @NPY_ITER_REFS_OK, align 4
  store i32 %162, i32* %12, align 4
  br label %170

163:                                              ; preds = %157
  %164 = load i8*, i8** %10, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @NPY_ITER_REDUCE_OK, align 4
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %167, %163
  br label %170

170:                                              ; preds = %169, %161
  br label %171

171:                                              ; preds = %170, %155
  br label %179

172:                                              ; preds = %69
  %173 = load i8*, i8** %10, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @NPY_ITER_ZEROSIZE_OK, align 4
  store i32 %177, i32* %12, align 4
  br label %178

178:                                              ; preds = %176, %172
  br label %179

179:                                              ; preds = %69, %178, %171, %150, %143, %132, %125, %118, %111, %80
  %180 = load i32, i32* %12, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i32, i32* @PyExc_ValueError, align 4
  %184 = load i8*, i8** %10, align 8
  %185 = call i32 @PyErr_Format(i32 %183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i8* %184)
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @Py_DECREF(i32* %186)
  store i32 0, i32* %3, align 4
  br label %203

188:                                              ; preds = %179
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %6, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %188
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @Py_DECREF(i32* %193)
  br label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %35

198:                                              ; preds = %35
  %199 = load i32, i32* %6, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %199
  store i32 %202, i32* %200, align 4
  store i32 1, i32* %3, align 4
  br label %203

203:                                              ; preds = %198, %182, %66, %55, %45, %29, %20
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @PyTuple_Check(i32*) #1

declare dso_local i32 @PyList_Check(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PySequence_Size(i32*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i32) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsASCIIString(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyBytes_AsStringAndSize(i32*, i8**, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
