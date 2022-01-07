; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_crop.c_gdImageCropAuto.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_crop.c_gdImageCropAuto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gdImageCropAuto(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @gdImageSX(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @gdImageSY(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %36 [
    i32 129, label %23
    i32 132, label %26
    i32 128, label %29
    i32 130, label %32
    i32 131, label %35
  ]

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @gdImageGetTransparent(i32* %24)
  store i32 %25, i32* %10, align 4
  br label %39

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @gdImageColorClosestAlpha(i32* %27, i32 0, i32 0, i32 0, i32 0)
  store i32 %28, i32* %10, align 4
  br label %39

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @gdImageColorClosestAlpha(i32* %30, i32 255, i32 255, i32 255, i32 0)
  store i32 %31, i32* %10, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @gdGuessBackgroundColorFromCorners(i32* %33, i32* %10)
  br label %39

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %2, %35
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @gdImageGetTransparent(i32* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %32, %29, %26, %23
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %72, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %75

49:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %71

59:                                               ; preds = %57
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @gdImageGetPixel(i32* %60, i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %50

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %40

75:                                               ; preds = %47
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32* null, i32** %3, align 8
  br label %215

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  store i32 1, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %115, %79
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp sge i32 %89, 0
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i1 [ false, %85 ], [ %90, %88 ]
  br i1 %92, label %93, label %118

93:                                               ; preds = %91
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %111, %93
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %98, %99
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i1 [ false, %94 ], [ %100, %97 ]
  br i1 %102, label %103, label %114

103:                                              ; preds = %101
  %104 = load i32, i32* %10, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @gdImageGetPixel(i32* %105, i32 %106, i32 %107)
  %109 = icmp eq i32 %104, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %94

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %9, align 4
  br label %85

118:                                              ; preds = %91
  %119 = load i32, i32* %9, align 4
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %119, %121
  %123 = add nsw i32 %122, 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %123, i32* %124, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %160, %118
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %129, %130
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi i1 [ false, %125 ], [ %131, %128 ]
  br i1 %133, label %134, label %163

134:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %156, %134
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %141, %143
  %145 = icmp slt i32 %139, %144
  br label %146

146:                                              ; preds = %138, %135
  %147 = phi i1 [ false, %135 ], [ %145, %138 ]
  br i1 %147, label %148, label %159

148:                                              ; preds = %146
  %149 = load i32, i32* %10, align 4
  %150 = load i32*, i32** %4, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @gdImageGetPixel(i32* %150, i32 %151, i32 %152)
  %154 = icmp eq i32 %149, %153
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %135

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %125

163:                                              ; preds = %132
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %164, 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  store i32 1, i32* %11, align 4
  %167 = load i32, i32* %6, align 4
  %168 = sub nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %203, %163
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %8, align 4
  %174 = icmp sge i32 %173, 0
  br label %175

175:                                              ; preds = %172, %169
  %176 = phi i1 [ false, %169 ], [ %174, %172 ]
  br i1 %176, label %177, label %206

177:                                              ; preds = %175
  store i32 0, i32* %9, align 4
  br label %178

178:                                              ; preds = %199, %177
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load i32, i32* %9, align 4
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %184, %186
  %188 = icmp slt i32 %182, %187
  br label %189

189:                                              ; preds = %181, %178
  %190 = phi i1 [ false, %178 ], [ %188, %181 ]
  br i1 %190, label %191, label %202

191:                                              ; preds = %189
  %192 = load i32, i32* %10, align 4
  %193 = load i32*, i32** %4, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @gdImageGetPixel(i32* %193, i32 %194, i32 %195)
  %197 = icmp eq i32 %192, %196
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %178

202:                                              ; preds = %189
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %8, align 4
  br label %169

206:                                              ; preds = %175
  %207 = load i32, i32* %8, align 4
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %207, %209
  %211 = add nsw i32 %210, 2
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 %211, i32* %212, align 4
  %213 = load i32*, i32** %4, align 8
  %214 = call i32* @gdImageCrop(i32* %213, %struct.TYPE_3__* %12)
  store i32* %214, i32** %3, align 8
  br label %215

215:                                              ; preds = %206, %78
  %216 = load i32*, i32** %3, align 8
  ret i32* %216
}

declare dso_local i32 @gdImageSX(i32*) #1

declare dso_local i32 @gdImageSY(i32*) #1

declare dso_local i32 @gdImageGetTransparent(i32*) #1

declare dso_local i32 @gdImageColorClosestAlpha(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gdGuessBackgroundColorFromCorners(i32*, i32*) #1

declare dso_local i32 @gdImageGetPixel(i32*, i32, i32) #1

declare dso_local i32* @gdImageCrop(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
