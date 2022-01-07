; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_check_op_axes.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_check_op_axes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"If 'op_axes' or 'itershape' is not NULL in the iterator constructor, 'oa_ndim' must be zero or greater\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Cannot construct an iterator with more than %d dimensions (%d were requested for op_axes)\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"If 'oa_ndim' is zero or greater in the iterator constructor, then op_axes cannot be NULL\00", align 1
@.str.3 = private unnamed_addr constant [94 x i8] c"The 'op_axes' provided to the iterator constructor for operand %d contained invalid values %d\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"The 'op_axes' provided to the iterator constructor for operand %d contained duplicate value %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32**, i32*)* @npyiter_check_op_axes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_check_op_axes(i32 %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @NPY_MAXDIMS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load i32**, i32*** %8, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @PyExc_ValueError, align 4
  %31 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %30, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %113

32:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %113

33:                                               ; preds = %4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NPY_MAXDIMS, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @PyExc_ValueError, align 4
  %39 = load i32, i32* @NPY_MAXDIMS, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %38, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %113

42:                                               ; preds = %33
  %43 = load i32**, i32*** %8, align 8
  %44 = icmp eq i32** %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @PyExc_ValueError, align 4
  %47 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %46, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %113

48:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %109, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %112

53:                                               ; preds = %49
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %15, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %108

61:                                               ; preds = %53
  %62 = load i32, i32* @NPY_MAXDIMS, align 4
  %63 = call i32 @memset(i8* %20, i32 0, i32 %62)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %104, %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %64
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %68
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @NPY_MAXDIMS, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @PyExc_ValueError, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %81, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %113

85:                                               ; preds = %76
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %20, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32, i32* @PyExc_ValueError, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %93, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %95)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %113

97:                                               ; preds = %85
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %20, i64 %99
  store i8 1, i8* %100, align 1
  br label %101

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102, %68
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %64

107:                                              ; preds = %64
  br label %108

108:                                              ; preds = %107, %53
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %49

112:                                              ; preds = %49
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %113

113:                                              ; preds = %112, %92, %80, %45, %37, %32, %29
  %114 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PyErr_Format(i32, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
