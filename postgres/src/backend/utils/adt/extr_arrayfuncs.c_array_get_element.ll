; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_get_element.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_get_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXDIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_get_element(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i8 signext %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [1 x i32], align 4
  %24 = alloca [1 x i32], align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8 %6, i8* %16, align 1
  store i32* %7, i32** %17, align 8
  %29 = load i32, i32* %13, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %8
  store i32 1, i32* %19, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sdiv i32 %32, %33
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %23, i64 0, i64 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %24, i64 0, i64 0
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %23, i64 0, i64 0
  store i32* %37, i32** %20, align 8
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %24, i64 0, i64 0
  store i32* %38, i32** %21, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @DatumGetPointer(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %25, align 8
  store i32* null, i32** %27, align 8
  br label %71

42:                                               ; preds = %8
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @DatumGetPointer(i32 %43)
  %45 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i8, i8* %16, align 1
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @array_get_element_expanded(i32 %48, i32 %49, i32* %50, i32 %51, i32 %52, i32 %53, i8 signext %54, i32* %55)
  store i32 %56, i32* %9, align 4
  br label %150

57:                                               ; preds = %42
  %58 = load i32, i32* %10, align 4
  %59 = call i32* @DatumGetArrayTypeP(i32 %58)
  store i32* %59, i32** %28, align 8
  %60 = load i32*, i32** %28, align 8
  %61 = call i32 @ARR_NDIM(i32* %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32*, i32** %28, align 8
  %63 = call i32* @ARR_DIMS(i32* %62)
  store i32* %63, i32** %20, align 8
  %64 = load i32*, i32** %28, align 8
  %65 = call i32* @ARR_LBOUND(i32* %64)
  store i32* %65, i32** %21, align 8
  %66 = load i32*, i32** %28, align 8
  %67 = call i8* @ARR_DATA_PTR(i32* %66)
  store i8* %67, i8** %25, align 8
  %68 = load i32*, i32** %28, align 8
  %69 = call i32* @ARR_NULLBITMAP(i32* %68)
  store i32* %69, i32** %27, align 8
  br label %70

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %31
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %19, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @MAXDIM, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %75, %71
  %83 = load i32*, i32** %17, align 8
  store i32 1, i32* %83, align 4
  store i32 0, i32* %9, align 4
  br label %150

84:                                               ; preds = %78
  store i32 0, i32* %18, align 4
  br label %85

85:                                               ; preds = %122, %84
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %125

89:                                               ; preds = %85
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %21, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %94, %99
  br i1 %100, label %119, label %101

101:                                              ; preds = %89
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %20, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %21, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %111, %116
  %118 = icmp sge i32 %106, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %101, %89
  %120 = load i32*, i32** %17, align 8
  store i32 1, i32* %120, align 4
  store i32 0, i32* %9, align 4
  br label %150

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %18, align 4
  br label %85

125:                                              ; preds = %85
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %20, align 8
  %128 = load i32*, i32** %21, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @ArrayGetOffset(i32 %126, i32* %127, i32* %128, i32* %129)
  store i32 %130, i32* %22, align 4
  %131 = load i32*, i32** %27, align 8
  %132 = load i32, i32* %22, align 4
  %133 = call i64 @array_get_isnull(i32* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i32*, i32** %17, align 8
  store i32 1, i32* %136, align 4
  store i32 0, i32* %9, align 4
  br label %150

137:                                              ; preds = %125
  %138 = load i32*, i32** %17, align 8
  store i32 0, i32* %138, align 4
  %139 = load i8*, i8** %25, align 8
  %140 = load i32*, i32** %27, align 8
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i8, i8* %16, align 1
  %145 = call i8* @array_seek(i8* %139, i32 0, i32* %140, i32 %141, i32 %142, i32 %143, i8 signext %144)
  store i8* %145, i8** %26, align 8
  %146 = load i8*, i8** %26, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @ArrayCast(i8* %146, i32 %147, i32 %148)
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %137, %135, %119, %82, %47
  %151 = load i32, i32* %9, align 4
  ret i32 %151
}

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i64) #1

declare dso_local i32 @array_get_element_expanded(i32, i32, i32*, i32, i32, i32, i8 signext, i32*) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32* @ARR_LBOUND(i32*) #1

declare dso_local i8* @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @ARR_NULLBITMAP(i32*) #1

declare dso_local i32 @ArrayGetOffset(i32, i32*, i32*, i32*) #1

declare dso_local i64 @array_get_isnull(i32*, i32) #1

declare dso_local i8* @array_seek(i8*, i32, i32*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @ArrayCast(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
