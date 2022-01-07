; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_setscalar.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_setscalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"itemset must have at least one argument\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"assignment destination\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"can only convert an array of size 1 to a Python scalar\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"incorrect number of indices for array\00", align 1
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @array_setscalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_setscalar(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load i32, i32* @NPY_MAXDIMS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @PyTuple_GET_SIZE(i32* %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @PyArray_NDIM(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @PyExc_ValueError, align 4
  %30 = call i32 @PyErr_SetString(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %168

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @PyArray_FailUnlessWriteable(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %168

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32* @PyTuple_GET_ITEM(i32* %37, i32 %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @PyTuple_GET_ITEM(i32* %43, i32 0)
  %45 = call i64 @PyTuple_Check(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @PyTuple_GET_ITEM(i32* %48, i32 0)
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @PyTuple_GET_SIZE(i32* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %42, %36
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @PyArray_SIZE(i32* %56)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %68, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %20, i64 %66
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %60

71:                                               ; preds = %60
  br label %75

72:                                               ; preds = %55
  %73 = load i32, i32* @PyExc_ValueError, align 4
  %74 = call i32 @PyErr_SetString(i32 %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %71
  br label %159

76:                                               ; preds = %52
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %127

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  %84 = call i32* @PyArray_SHAPE(i32* %83)
  store i32* %84, i32** %13, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @PyArray_SIZE(i32* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32* @PyTuple_GET_ITEM(i32* %87, i32 0)
  %89 = call i32 @PyArray_PyIntAsIntp(i32* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @error_converting(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %168

94:                                               ; preds = %82
  %95 = load i32, i32* %15, align 4
  %96 = call i64 @check_and_adjust_index(i32* %14, i32 %95, i32 -1, i32* null)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %168

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %123, %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = srem i32 %106, %111
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %20, i64 %114
  store i32 %112, i32* %115, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = sdiv i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %105
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %9, align 4
  br label %102

126:                                              ; preds = %102
  br label %158

127:                                              ; preds = %79, %76
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %127
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %150, %131
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32* @PyTuple_GET_ITEM(i32* %137, i32 %138)
  %140 = call i32 @PyArray_PyIntAsIntp(i32* %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i64 @error_converting(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %168

145:                                              ; preds = %136
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %20, i64 %148
  store i32 %146, i32* %149, align 4
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %132

153:                                              ; preds = %132
  br label %157

154:                                              ; preds = %127
  %155 = load i32, i32* @PyExc_ValueError, align 4
  %156 = call i32 @PyErr_SetString(i32 %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %168

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157, %126
  br label %159

159:                                              ; preds = %158, %75
  %160 = load i32*, i32** %4, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = call i64 @PyArray_MultiIndexSetItem(i32* %160, i32* %20, i32* %161)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %167

167:                                              ; preds = %165
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %167, %164, %154, %144, %98, %93, %35, %28
  %169 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %12, align 4
  switch i32 %170, label %173 [
    i32 0, label %171
    i32 1, label %171
  ]

171:                                              ; preds = %168, %168
  %172 = load i32*, i32** %3, align 8
  ret i32* %172

173:                                              ; preds = %168
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i64 @PyArray_FailUnlessWriteable(i32*, i8*) #2

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #2

declare dso_local i64 @PyTuple_Check(i32*) #2

declare dso_local i32 @PyArray_SIZE(i32*) #2

declare dso_local i32* @PyArray_SHAPE(i32*) #2

declare dso_local i32 @PyArray_PyIntAsIntp(i32*) #2

declare dso_local i64 @error_converting(i32) #2

declare dso_local i64 @check_and_adjust_index(i32*, i32, i32, i32*) #2

declare dso_local i64 @PyArray_MultiIndexSetItem(i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
