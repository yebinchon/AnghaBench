; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFillToBorder.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFillToBorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageFillToBorder(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
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
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %5
  br label %247

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %36, %29
  br label %247

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %69

64:                                               ; preds = %48
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %64
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %85

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %75
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %105, %85
  %88 = load i32, i32* %14, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @gdImageGetPixel(%struct.TYPE_5__* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %108

98:                                               ; preds = %90
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @gdImageSetPixel(%struct.TYPE_5__* %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %14, align 4
  br label %87

108:                                              ; preds = %97, %87
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %247

115:                                              ; preds = %108
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %140, %115
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @gdImageGetPixel(%struct.TYPE_5__* %126, i32 %127, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %143

133:                                              ; preds = %125
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @gdImageSetPixel(%struct.TYPE_5__* %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %119

143:                                              ; preds = %132, %119
  %144 = load i32, i32* %8, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %191

146:                                              ; preds = %143
  store i32 1, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %187, %146
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %190

152:                                              ; preds = %148
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %155, 1
  %157 = call i32 @gdImageGetPixel(%struct.TYPE_5__* %153, i32 %154, i32 %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %152
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %160
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 1
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  call void @gdImageFillToBorder(%struct.TYPE_5__* %169, i32 %170, i32 %172, i32 %173, i32 %174)
  store i32 0, i32* %11, align 4
  br label %175

175:                                              ; preds = %168, %164, %160
  br label %186

176:                                              ; preds = %152
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %176
  store i32 1, i32* %11, align 4
  br label %185

185:                                              ; preds = %184, %180
  br label %186

186:                                              ; preds = %185, %175
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %148

190:                                              ; preds = %148
  br label %191

191:                                              ; preds = %190, %143
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  %197 = icmp slt i32 %192, %196
  br i1 %197, label %198, label %243

198:                                              ; preds = %191
  store i32 1, i32* %11, align 4
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %14, align 4
  br label %200

200:                                              ; preds = %239, %198
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp sle i32 %201, %202
  br i1 %203, label %204, label %242

204:                                              ; preds = %200
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 @gdImageGetPixel(%struct.TYPE_5__* %205, i32 %206, i32 %208)
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %204
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %212
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  call void @gdImageFillToBorder(%struct.TYPE_5__* %221, i32 %222, i32 %224, i32 %225, i32 %226)
  store i32 0, i32* %11, align 4
  br label %227

227:                                              ; preds = %220, %216, %212
  br label %238

228:                                              ; preds = %204
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* %9, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %232, %228
  store i32 1, i32* %11, align 4
  br label %237

237:                                              ; preds = %236, %232
  br label %238

238:                                              ; preds = %237, %227
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %200

242:                                              ; preds = %200
  br label %243

243:                                              ; preds = %242, %191
  %244 = load i32, i32* %15, align 4
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %243, %111, %46, %23
  ret void
}

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
