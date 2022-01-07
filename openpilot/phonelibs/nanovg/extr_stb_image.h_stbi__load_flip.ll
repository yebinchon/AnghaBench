; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__load_flip.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__load_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stbi__vertically_flip_on_load = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i32*, i32)* @stbi__load_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__load_flip(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i8* @stbi__load_main(i32* %19, i32* %20, i32* %21, i32* %22, i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i64, i64* @stbi__vertically_flip_on_load, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %129

27:                                               ; preds = %5
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %129

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  store i32 %43, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %125, %42
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %13, align 4
  %47 = ashr i32 %46, 1
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %128

49:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %121, %49
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %117, %54
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %120

59:                                               ; preds = %55
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %60, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %18, align 1
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %14, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %73, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %12, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %14, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %89, i64 %99
  store i8 %88, i8* %100, align 1
  %101 = load i8, i8* %18, align 1
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* %12, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %102, i64 %115
  store i8 %101, i8* %116, align 1
  br label %117

117:                                              ; preds = %59
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %55

120:                                              ; preds = %55
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %50

124:                                              ; preds = %50
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %44

128:                                              ; preds = %44
  br label %129

129:                                              ; preds = %128, %27, %5
  %130 = load i8*, i8** %11, align 8
  ret i8* %130
}

declare dso_local i8* @stbi__load_main(i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
