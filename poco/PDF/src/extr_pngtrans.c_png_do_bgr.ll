; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngtrans.c_png_do_bgr.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngtrans.c_png_do_bgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"in png_do_bgr\0A\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_bgr(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %178

25:                                               ; preds = %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %91

33:                                               ; preds = %25
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  store i64 0, i64* %7, align 8
  %40 = load i32*, i32** %4, align 8
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %55, %39
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %7, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32* %59, i32** %6, align 8
  br label %41

60:                                               ; preds = %41
  br label %90

61:                                               ; preds = %33
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  %68 = load i32*, i32** %4, align 8
  store i32* %68, i32** %9, align 8
  br label %69

69:                                               ; preds = %83, %67
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %73
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %10, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32* %87, i32** %9, align 8
  br label %69

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89, %60
  br label %177

91:                                               ; preds = %25
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 16
  br i1 %95, label %96, label %176

96:                                               ; preds = %91
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %135

102:                                              ; preds = %96
  store i64 0, i64* %13, align 8
  %103 = load i32*, i32** %4, align 8
  store i32* %103, i32** %12, align 8
  br label %104

104:                                              ; preds = %129, %102
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %104
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %14, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %12, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %14, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %108
  %130 = load i64, i64* %13, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %13, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 6
  store i32* %133, i32** %12, align 8
  br label %104

134:                                              ; preds = %104
  br label %175

135:                                              ; preds = %96
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %174

141:                                              ; preds = %135
  store i64 0, i64* %16, align 8
  %142 = load i32*, i32** %4, align 8
  store i32* %142, i32** %15, align 8
  br label %143

143:                                              ; preds = %168, %141
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %143
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %17, align 4
  %150 = load i32*, i32** %15, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %15, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  store i32 %154, i32* %156, align 4
  %157 = load i32*, i32** %15, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %17, align 4
  %160 = load i32*, i32** %15, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %15, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32*, i32** %15, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 5
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %147
  %169 = load i64, i64* %16, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %16, align 8
  %171 = load i32*, i32** %15, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 8
  store i32* %172, i32** %15, align 8
  br label %143

173:                                              ; preds = %143
  br label %174

174:                                              ; preds = %173, %135
  br label %175

175:                                              ; preds = %174, %134
  br label %176

176:                                              ; preds = %175, %91
  br label %177

177:                                              ; preds = %176, %90
  br label %178

178:                                              ; preds = %177, %2
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
