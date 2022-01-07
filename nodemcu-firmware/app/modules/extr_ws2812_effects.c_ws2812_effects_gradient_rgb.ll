; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_gradient_rgb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_gradient_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32* }

@state = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @ws2812_effects_gradient_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_gradient_rgb(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
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
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = udiv i64 %23, %26
  %28 = sub i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %13, align 4
  store i32 3, i32* %15, align 4
  br label %47

47:                                               ; preds = %58, %2
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  %57 = load i8, i8* %55, align 1
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %47

61:                                               ; preds = %47
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32* %65, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %189, %61
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %192

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  %76 = load i8, i8* %74, align 1
  %77 = sext i8 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %3, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  %84 = load i8, i8* %82, align 1
  %85 = sext i8 %84 to i32
  store i32 %85, i32* %13, align 4
  store i32 3, i32* %15, align 4
  br label %86

86:                                               ; preds = %97, %70
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %3, align 8
  %96 = load i8, i8* %94, align 1
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %86

100:                                              ; preds = %86
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 %111, 1
  %113 = mul nsw i32 %110, %112
  %114 = sub nsw i32 %109, %113
  store i32 %114, i32* %18, align 4
  br label %115

115:                                              ; preds = %106, %100
  %116 = load i32, i32* %18, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %185, %115
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %188

122:                                              ; preds = %118
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* %14, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %19, align 4
  %130 = sdiv i32 %128, %129
  %131 = add nsw i32 %123, %130
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %131, %134
  %136 = sdiv i32 %135, 255
  %137 = load i32*, i32** %17, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %17, align 8
  store i32 %136, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* %14, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %19, align 4
  %146 = sdiv i32 %144, %145
  %147 = add nsw i32 %139, %146
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %147, %150
  %152 = sdiv i32 %151, 255
  %153 = load i32*, i32** %17, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %17, align 8
  store i32 %152, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32, i32* %14, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* %19, align 4
  %162 = sdiv i32 %160, %161
  %163 = add nsw i32 %155, %162
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %163, %166
  %168 = sdiv i32 %167, 255
  %169 = load i32*, i32** %17, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %17, align 8
  store i32 %168, i32* %169, align 4
  store i32 3, i32* %15, align 4
  br label %171

171:                                              ; preds = %181, %122
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ult i64 %173, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load i32*, i32** %17, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %17, align 8
  store i32 0, i32* %179, align 4
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %171

184:                                              ; preds = %171
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %118

188:                                              ; preds = %118
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %66

192:                                              ; preds = %66
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
