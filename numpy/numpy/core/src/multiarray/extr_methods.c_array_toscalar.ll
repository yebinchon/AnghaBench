; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_toscalar.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_toscalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"can only convert an array of size 1 to a Python scalar\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"incorrect number of indices for array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @array_toscalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_toscalar(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i32, i32* @NPY_MAXDIMS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @PyTuple_GET_SIZE(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @PyArray_NDIM(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @PyTuple_GET_ITEM(i32* %27, i32 0)
  %29 = call i64 @PyTuple_Check(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @PyTuple_GET_ITEM(i32* %32, i32 0)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @PyTuple_GET_SIZE(i32* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %26, %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @PyArray_SIZE(i32* %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %52, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %19, i64 %50
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %44

55:                                               ; preds = %44
  br label %59

56:                                               ; preds = %39
  %57 = load i32, i32* @PyExc_ValueError, align 4
  %58 = call i32 @PyErr_SetString(i32 %57, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %146

59:                                               ; preds = %55
  br label %143

60:                                               ; preds = %36
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %111

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %111

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = call i32* @PyArray_SHAPE(i32* %67)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @PyArray_SIZE(i32* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i32* @PyTuple_GET_ITEM(i32* %71, i32 0)
  %73 = call i32 @PyArray_PyIntAsIntp(i32* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @error_converting(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %146

78:                                               ; preds = %66
  %79 = load i32, i32* %14, align 4
  %80 = call i64 @check_and_adjust_index(i32* %13, i32 %79, i32 -1, i32* null)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %146

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %107, %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %90, %95
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %19, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = sdiv i32 %105, %104
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %89
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %9, align 4
  br label %86

110:                                              ; preds = %86
  br label %142

111:                                              ; preds = %63, %60
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32* @PyTuple_GET_ITEM(i32* %121, i32 %122)
  %124 = call i32 @PyArray_PyIntAsIntp(i32* %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i64 @error_converting(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %146

129:                                              ; preds = %120
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %19, i64 %132
  store i32 %130, i32* %133, align 4
  br label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %116

137:                                              ; preds = %116
  br label %141

138:                                              ; preds = %111
  %139 = load i32, i32* @PyExc_ValueError, align 4
  %140 = call i32 @PyErr_SetString(i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %146

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %110
  br label %143

143:                                              ; preds = %142, %59
  %144 = load i32*, i32** %4, align 8
  %145 = call i32* @PyArray_MultiIndexGetItem(i32* %144, i32* %19)
  store i32* %145, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %146

146:                                              ; preds = %143, %138, %128, %82, %77, %56
  %147 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32*, i32** %3, align 8
  ret i32* %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local i64 @PyTuple_Check(i32*) #2

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #2

declare dso_local i32 @PyArray_SIZE(i32*) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32* @PyArray_SHAPE(i32*) #2

declare dso_local i32 @PyArray_PyIntAsIntp(i32*) #2

declare dso_local i64 @error_converting(i32) #2

declare dso_local i64 @check_and_adjust_index(i32*, i32, i32, i32*) #2

declare dso_local i32* @PyArray_MultiIndexGetItem(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
