; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__parse_axis_arg.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__parse_axis_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32**, i32, i32**)* @_parse_axis_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_parse_axis_arg(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32** %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @PyArray_PyIntAsInt(i32* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i64 @error_converting(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %133

29:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %129, %29
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %132

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32**, i32*** %13, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  br label %129

46:                                               ; preds = %34
  %47 = load i32**, i32*** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32**, i32*** %11, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PyArray_NDIM(i32* %58)
  store i32 %59, i32* %18, align 4
  br label %63

60:                                               ; preds = %46
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i64 @check_and_adjust_axis(i32* %19, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 -1, i32* %7, align 4
  br label %133

69:                                               ; preds = %63
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32**, i32*** %13, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  br label %129

79:                                               ; preds = %69
  %80 = load i32, i32* %19, align 4
  %81 = load i32**, i32*** %13, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %80, i32* %89, align 4
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %104, %79
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i32, i32* %17, align 4
  %96 = load i32**, i32*** %13, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %95, i32* %103, align 4
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %90

107:                                              ; preds = %90
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %125, %107
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %18, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32**, i32*** %13, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %116, i32* %124, align 4
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %17, align 4
  br label %109

128:                                              ; preds = %109
  br label %129

129:                                              ; preds = %128, %74, %41
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %30

132:                                              ; preds = %30
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %132, %68, %28
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @PyArray_PyIntAsInt(i32*) #1

declare dso_local i64 @error_converting(i32) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i64 @check_and_adjust_axis(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
