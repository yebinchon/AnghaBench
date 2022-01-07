; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_crop.c_gdImageCropThreshold.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_crop.c_gdImageCropThreshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gdImageCropThreshold(i32* %0, i32 %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @gdImageSX(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @gdImageSY(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load float, float* %7, align 4
  %23 = fpext float %22 to double
  %24 = fcmp ogt double %23, 1.000000e+02
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %223

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @gdImageTrueColor(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @gdImageColorsTotal(i32* %32)
  %34 = icmp uge i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32* null, i32** %4, align 8
  br label %223

36:                                               ; preds = %30, %26
  store i32 1, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %71, %36
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %74

46:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %70

56:                                               ; preds = %54
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @gdImageGetPixel(i32* %59, i32 %60, i32 %61)
  %63 = load float, float* %7, align 4
  %64 = call i64 @gdColorMatch(i32* %57, i32 %58, i32 %62, float %63)
  %65 = icmp sgt i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %47

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %37

74:                                               ; preds = %44
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32* null, i32** %4, align 8
  br label %223

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  store i32 1, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %117, %78
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = icmp sge i32 %88, 0
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i1 [ false, %84 ], [ %89, %87 ]
  br i1 %91, label %92, label %120

92:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %113, %92
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i1 [ false, %93 ], [ %99, %96 ]
  br i1 %101, label %102, label %116

102:                                              ; preds = %100
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @gdImageGetPixel(i32* %105, i32 %106, i32 %107)
  %109 = load float, float* %7, align 4
  %110 = call i64 @gdColorMatch(i32* %103, i32 %104, i32 %108, float %109)
  %111 = icmp sgt i64 %110, 0
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %93

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %11, align 4
  br label %84

120:                                              ; preds = %90
  %121 = load i32, i32* %11, align 4
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %121, %123
  %125 = add nsw i32 %124, 2
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i32 %125, i32* %126, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %165, %120
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %131, %132
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i1 [ false, %127 ], [ %133, %130 ]
  br i1 %135, label %136, label %168

136:                                              ; preds = %134
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %161, %136
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %143, %145
  %147 = icmp slt i32 %141, %146
  br label %148

148:                                              ; preds = %140, %137
  %149 = phi i1 [ false, %137 ], [ %147, %140 ]
  br i1 %149, label %150, label %164

150:                                              ; preds = %148
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @gdImageGetPixel(i32* %153, i32 %154, i32 %155)
  %157 = load float, float* %7, align 4
  %158 = call i64 @gdColorMatch(i32* %151, i32 %152, i32 %156, float %157)
  %159 = icmp sgt i64 %158, 0
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %150
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %137

164:                                              ; preds = %148
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %127

168:                                              ; preds = %134
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %169, 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %170, i32* %171, align 4
  store i32 1, i32* %12, align 4
  %172 = load i32, i32* %8, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %211, %168
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = icmp sge i32 %178, 0
  br label %180

180:                                              ; preds = %177, %174
  %181 = phi i1 [ false, %174 ], [ %179, %177 ]
  br i1 %181, label %182, label %214

182:                                              ; preds = %180
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %207, %182
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load i32, i32* %11, align 4
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %189, %191
  %193 = icmp slt i32 %187, %192
  br label %194

194:                                              ; preds = %186, %183
  %195 = phi i1 [ false, %183 ], [ %193, %186 ]
  br i1 %195, label %196, label %210

196:                                              ; preds = %194
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @gdImageGetPixel(i32* %199, i32 %200, i32 %201)
  %203 = load float, float* %7, align 4
  %204 = call i64 @gdColorMatch(i32* %197, i32 %198, i32 %202, float %203)
  %205 = icmp sgt i64 %204, 0
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %12, align 4
  br label %207

207:                                              ; preds = %196
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %183

210:                                              ; preds = %194
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %10, align 4
  br label %174

214:                                              ; preds = %180
  %215 = load i32, i32* %10, align 4
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %215, %217
  %219 = add nsw i32 %218, 2
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %219, i32* %220, align 4
  %221 = load i32*, i32** %5, align 8
  %222 = call i32* @gdImageCrop(i32* %221, %struct.TYPE_3__* %13)
  store i32* %222, i32** %4, align 8
  br label %223

223:                                              ; preds = %214, %77, %35, %25
  %224 = load i32*, i32** %4, align 8
  ret i32* %224
}

declare dso_local i32 @gdImageSX(i32*) #1

declare dso_local i32 @gdImageSY(i32*) #1

declare dso_local i32 @gdImageTrueColor(i32*) #1

declare dso_local i32 @gdImageColorsTotal(i32*) #1

declare dso_local i64 @gdColorMatch(i32*, i32, i32, float) #1

declare dso_local i32 @gdImageGetPixel(i32*, i32, i32) #1

declare dso_local i32* @gdImageCrop(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
