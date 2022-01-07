; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_blit_gif_frame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_blit_gif_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@GUID_WICPixelFormat32bppBGRA = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i64)* @blit_gif_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blit_gif_frame(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @get_gif_frame_rect(i32* %19, i32* %10, i32* %11, i32* %12, i32* %13)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %4, align 4
  br label %147

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @WICConvertBitmapSource(i32* @GUID_WICPixelFormat32bppBGRA, i32* %27, i32** %14)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %4, align 4
  br label %147

34:                                               ; preds = %26
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 %35, %36
  %38 = mul nsw i32 %37, 4
  %39 = call i32* @heap_alloc_zero(i32 %38)
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %43, i32* %4, align 4
  br label %147

44:                                               ; preds = %34
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %46, 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %48, %49
  %51 = mul nsw i32 %50, 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @IWICBitmapSource_CopyPixels(i32* %45, i32* null, i32 %47, i32 %51, i32* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @IWICBitmapSource_Release(i32* %54)
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %44
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @heap_free(i32* %60)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %4, align 4
  br label %147

63:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %140, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br label %76

76:                                               ; preds = %68, %64
  %77 = phi i1 [ false, %64 ], [ %75, %68 ]
  br i1 %77, label %78, label %143

78:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %136, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br label %91

91:                                               ; preds = %83, %79
  %92 = phi i1 [ false, %79 ], [ %90, %83 ]
  br i1 %92, label %93, label %139

93:                                               ; preds = %91
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %95, %96
  %98 = mul nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32* %104, i32** %17, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %108, %109
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %107, %115
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %117, %118
  %120 = mul nsw i32 %119, 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %116, %121
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %18, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %93
  %127 = load i32*, i32** %17, align 8
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 24
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126, %93
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %18, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %126
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %79

139:                                              ; preds = %91
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %64

143:                                              ; preds = %76
  %144 = load i32*, i32** %15, align 8
  %145 = call i32 @heap_free(i32* %144)
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %59, %42, %32, %24
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @get_gif_frame_rect(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WICConvertBitmapSource(i32*, i32*, i32**) #1

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32 @IWICBitmapSource_CopyPixels(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @IWICBitmapSource_Release(i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
