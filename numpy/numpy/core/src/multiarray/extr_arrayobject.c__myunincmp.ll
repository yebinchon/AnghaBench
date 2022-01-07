; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayobject.c__myunincmp.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayobject.c__myunincmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32, i32)* @_myunincmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_myunincmp(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i64*, i64** %5, align 8
  store i64* %15, i64** %10, align 8
  %16 = load i64*, i64** %6, align 8
  store i64* %16, i64** %11, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = ptrtoint i64* %17 to i32
  %19 = sext i32 %18 to i64
  %20 = urem i64 %19, 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64* @malloc(i32 %27)
  store i64* %28, i64** %10, align 8
  %29 = load i64*, i64** %10, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @memcpy(i64* %29, i64* %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %4
  %34 = load i64*, i64** %6, align 8
  %35 = ptrtoint i64* %34 to i32
  %36 = sext i32 %35 to i64
  %37 = urem i64 %36, 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i64* @malloc(i32 %44)
  store i64* %45, i64** %11, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @memcpy(i64* %46, i64* %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %33
  %51 = load i64*, i64** %10, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @PyArray_MIN(i32 %53, i32 %54)
  %56 = call i32 @PyArray_CompareUCS4(i64* %51, i64* %52, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %50
  br label %98

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i64*, i64** %11, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64* %72, i64** %9, align 8
  store i32 -1, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %14, align 4
  br label %84

76:                                               ; preds = %64
  %77 = load i64*, i64** %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64* %80, i64** %9, align 8
  store i32 1, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %76, %68
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %14, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %98

94:                                               ; preds = %89
  %95 = load i64*, i64** %9, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %9, align 8
  br label %85

97:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %93, %63
  %99 = load i64*, i64** %10, align 8
  %100 = load i64*, i64** %5, align 8
  %101 = icmp ne i64* %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64*, i64** %10, align 8
  %104 = call i32 @free(i64* %103)
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i64*, i64** %11, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = icmp ne i64* %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i64*, i64** %11, align 8
  %111 = call i32 @free(i64* %110)
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i32, i32* %12, align 4
  ret i32 %113
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @PyArray_CompareUCS4(i64*, i64*, i32) #1

declare dso_local i32 @PyArray_MIN(i32, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
