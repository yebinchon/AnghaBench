; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_ufunc_get_types.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_ufunc_get_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @ufunc_get_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ufunc_get_types(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32* @PyList_New(i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %113

27:                                               ; preds = %1
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %28, %29
  %31 = add nsw i32 %30, 2
  %32 = call i8* @PyArray_malloc(i32 %31)
  store i8* %32, i8** %12, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %106, %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %109

37:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call signext i8 @_typecharfromnum(i32 %49)
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %50, i8* %54, align 1
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 45, i8* %64, align 1
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 62, i8* %69, align 1
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %92, %60
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call signext i8 @_typecharfromnum(i32 %81)
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 2
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  store i8 %82, i8* %89, align 1
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %70

95:                                               ; preds = %70
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %97, %98
  %100 = add nsw i32 %99, 2
  %101 = call i32* @PyUString_FromStringAndSize(i8* %96, i32 %100)
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @PyList_SET_ITEM(i32* %102, i32 %103, i32* %104)
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %33

109:                                              ; preds = %33
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @PyArray_free(i8* %110)
  %112 = load i32*, i32** %4, align 8
  store i32* %112, i32** %2, align 8
  br label %113

113:                                              ; preds = %109, %26
  %114 = load i32*, i32** %2, align 8
  ret i32* %114
}

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i8* @PyArray_malloc(i32) #1

declare dso_local signext i8 @_typecharfromnum(i32) #1

declare dso_local i32* @PyUString_FromStringAndSize(i8*, i32) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i32, i32*) #1

declare dso_local i32 @PyArray_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
