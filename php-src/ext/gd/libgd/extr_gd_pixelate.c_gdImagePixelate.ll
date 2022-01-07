; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_pixelate.c_gdImagePixelate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_pixelate.c_gdImagePixelate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdImagePixelate(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %195

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %195

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %193 [
    i32 128, label %29
    i32 129, label %78
  ]

29:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %73, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %68, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @gdImageBoundsSafe(%struct.TYPE_11__* %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @gdImageGetPixel(%struct.TYPE_11__* %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @gdImageFilledRectangle(%struct.TYPE_11__* %54, i32 %55, i32 %56, i32 %60, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %49, %43
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %37

72:                                               ; preds = %37
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %30

77:                                               ; preds = %30
  br label %194

78:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %188, %78
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %192

85:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %183, %85
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %187

92:                                               ; preds = %86
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %148, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %151

97:                                               ; preds = %93
  store i32 0, i32* %17, align 4
  br label %98

98:                                               ; preds = %144, %97
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %147

102:                                              ; preds = %98
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i32 @gdImageBoundsSafe(%struct.TYPE_11__* %103, i32 %106, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %102
  br label %144

113:                                              ; preds = %102
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @gdImageGetPixel(%struct.TYPE_11__* %114, i32 %117, i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @gdImageAlpha(%struct.TYPE_11__* %122, i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %11, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @gdImageRed(%struct.TYPE_11__* %127, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @gdImageGreen(%struct.TYPE_11__* %132, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @gdImageBlue(%struct.TYPE_11__* %137, i32 %138)
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %113, %112
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %17, align 4
  br label %98

147:                                              ; preds = %98
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %18, align 4
  br label %93

151:                                              ; preds = %93
  %152 = load i32, i32* %16, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %182

154:                                              ; preds = %151
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %16, align 4
  %158 = sdiv i32 %156, %157
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %16, align 4
  %161 = sdiv i32 %159, %160
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %16, align 4
  %164 = sdiv i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %16, align 4
  %167 = sdiv i32 %165, %166
  %168 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_11__* %155, i32 %158, i32 %161, i32 %164, i32 %167)
  store i32 %168, i32* %15, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %172, %173
  %175 = sub nsw i32 %174, 1
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @gdImageFilledRectangle(%struct.TYPE_11__* %169, i32 %170, i32 %171, i32 %175, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %154, %151
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %8, align 4
  br label %86

187:                                              ; preds = %86
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %9, align 4
  br label %79

192:                                              ; preds = %79
  br label %194

193:                                              ; preds = %27
  store i32 0, i32* %4, align 4
  br label %195

194:                                              ; preds = %192, %77
  store i32 1, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %193, %25, %21
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @gdImageBoundsSafe(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @gdImageFilledRectangle(%struct.TYPE_11__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageAlpha(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdImageRed(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdImageGreen(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdImageBlue(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdImageColorResolveAlpha(%struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
