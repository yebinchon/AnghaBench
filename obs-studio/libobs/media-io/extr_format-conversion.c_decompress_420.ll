; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_decompress_420.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_decompress_420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_420(i32** %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %13, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %16, align 4
  br label %34

34:                                               ; preds = %136, %6
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %139

38:                                               ; preds = %34
  %39 = load i32**, i32*** %7, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  store i32* %48, i32** %17, align 8
  %49 = load i32**, i32*** %7, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  store i32* %58, i32** %18, align 8
  %59 = load i32**, i32*** %7, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = mul nsw i32 %62, 2
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %61, i64 %68
  store i32* %69, i32** %19, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32* %75, i32** %20, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %16, align 4
  %78 = mul nsw i32 %77, 2
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32* %82, i32** %21, align 8
  %83 = load i32*, i32** %21, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %87

87:                                               ; preds = %132, %38
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %87
  %92 = load i32*, i32** %17, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %17, align 8
  %94 = load i32, i32* %92, align 4
  %95 = shl i32 %94, 8
  %96 = load i32*, i32** %18, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %18, align 8
  %98 = load i32, i32* %96, align 4
  %99 = or i32 %95, %98
  store i32 %99, i32* %24, align 4
  %100 = load i32*, i32** %19, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %19, align 8
  %102 = load i32, i32* %100, align 4
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %24, align 4
  %105 = or i32 %103, %104
  %106 = load i32*, i32** %21, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %21, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32*, i32** %19, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %19, align 8
  %110 = load i32, i32* %108, align 4
  %111 = shl i32 %110, 16
  %112 = load i32, i32* %24, align 4
  %113 = or i32 %111, %112
  %114 = load i32*, i32** %21, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %21, align 8
  store i32 %113, i32* %114, align 4
  %116 = load i32*, i32** %20, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %20, align 8
  %118 = load i32, i32* %116, align 4
  %119 = shl i32 %118, 16
  %120 = load i32, i32* %24, align 4
  %121 = or i32 %119, %120
  %122 = load i32*, i32** %22, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %22, align 8
  store i32 %121, i32* %122, align 4
  %124 = load i32*, i32** %20, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %20, align 8
  %126 = load i32, i32* %124, align 4
  %127 = shl i32 %126, 16
  %128 = load i32, i32* %24, align 4
  %129 = or i32 %127, %128
  %130 = load i32*, i32** %22, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %22, align 8
  store i32 %129, i32* %130, align 4
  br label %132

132:                                              ; preds = %91
  %133 = load i32, i32* %23, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %23, align 4
  br label %87

135:                                              ; preds = %87
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %34

139:                                              ; preds = %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
