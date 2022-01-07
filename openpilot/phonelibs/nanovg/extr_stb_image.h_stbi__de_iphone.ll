; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__de_iphone.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__de_iphone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32 }

@stbi__unpremultiply_on_load = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @stbi__de_iphone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__de_iphone(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = mul nsw i64 %16, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %51

28:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32* %46, i32** %6, align 8
  br label %47

47:                                               ; preds = %33
  %48 = load i64, i64* %4, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %29

50:                                               ; preds = %29
  br label %137

51:                                               ; preds = %1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 4
  %56 = zext i1 %55 to i32
  %57 = call i32 @STBI_ASSERT(i32 %56)
  %58 = load i64, i64* @stbi__unpremultiply_on_load, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %113

60:                                               ; preds = %51
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %109, %60
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %112

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %65
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 255
  %79 = load i32, i32* %8, align 4
  %80 = sdiv i32 %78, %79
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 255
  %87 = load i32, i32* %8, align 4
  %88 = sdiv i32 %86, %87
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %91, 255
  %93 = load i32, i32* %8, align 4
  %94 = sdiv i32 %92, %93
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 %94, i32* %96, align 4
  br label %106

97:                                               ; preds = %65
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %97, %74
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32* %108, i32** %6, align 8
  br label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %4, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %4, align 8
  br label %61

112:                                              ; preds = %61
  br label %136

113:                                              ; preds = %51
  store i64 0, i64* %4, align 8
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32* %131, i32** %6, align 8
  br label %132

132:                                              ; preds = %118
  %133 = load i64, i64* %4, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %4, align 8
  br label %114

135:                                              ; preds = %114
  br label %136

136:                                              ; preds = %135, %112
  br label %137

137:                                              ; preds = %136, %50
  ret void
}

declare dso_local i32 @STBI_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
