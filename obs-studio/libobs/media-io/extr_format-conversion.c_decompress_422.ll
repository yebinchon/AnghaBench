; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_decompress_422.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_decompress_422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_422(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @min_uint32(i32 %22, i32 %23)
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %7
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %16, align 4
  br label %30

30:                                               ; preds = %75, %28
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %17, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %18, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32* %50, i32** %19, align 8
  br label %51

51:                                               ; preds = %55, %34
  %52 = load i32*, i32** %17, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32*, i32** %19, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %20, align 4
  %62 = and i32 %61, -256
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = ashr i32 %63, 16
  %65 = load i32, i32* %20, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %19, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32* %71, i32** %19, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %17, align 8
  br label %51

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %30

78:                                               ; preds = %30
  br label %131

79:                                               ; preds = %7
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %127, %79
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %130

85:                                               ; preds = %81
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  store i32* %91, i32** %17, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32* %95, i32** %18, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32* %101, i32** %19, align 8
  br label %102

102:                                              ; preds = %106, %85
  %103 = load i32*, i32** %17, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = icmp ult i32* %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %102
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32*, i32** %19, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %21, align 4
  %113 = and i32 %112, -65281
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = ashr i32 %114, 16
  %116 = and i32 %115, 65280
  %117 = load i32, i32* %21, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32*, i32** %19, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %19, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  store i32* %123, i32** %19, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %17, align 8
  br label %102

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %81

130:                                              ; preds = %81
  br label %131

131:                                              ; preds = %130, %78
  ret void
}

declare dso_local i32 @min_uint32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
