; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_priorityq.c___gl_pqSortInit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_priorityq.c___gl_pqSortInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32**, i32, i32, i32* }
%struct.anon = type { i32**, i32** }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqInit(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [50 x %struct.anon], align 16
  %10 = alloca %struct.anon*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds [50 x %struct.anon], [50 x %struct.anon]* %9, i64 0, i64 0
  store %struct.anon* %12, %struct.anon** %10, align 8
  store i64 2016473283, i64* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = call i64 @memAlloc(i64 %18)
  %20 = inttoptr i64 %19 to i32**
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32** %20, i32*** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = icmp eq i32** %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %264

28:                                               ; preds = %1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  store i32** %31, i32*** %4, align 8
  %32 = load i32**, i32*** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %32, i64 %36
  %38 = getelementptr inbounds i32*, i32** %37, i64 -1
  store i32** %38, i32*** %5, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %8, align 8
  %42 = load i32**, i32*** %4, align 8
  store i32** %42, i32*** %6, align 8
  br label %43

43:                                               ; preds = %50, %28
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32**, i32*** %5, align 8
  %46 = icmp ule i32** %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32**, i32*** %6, align 8
  store i32* %48, i32** %49, align 8
  br label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  %53 = load i32**, i32*** %6, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i32 1
  store i32** %54, i32*** %6, align 8
  br label %43

55:                                               ; preds = %43
  %56 = load i32**, i32*** %4, align 8
  %57 = load %struct.anon*, %struct.anon** %10, align 8
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  store i32** %56, i32*** %58, align 8
  %59 = load i32**, i32*** %5, align 8
  %60 = load %struct.anon*, %struct.anon** %10, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 1
  store i32** %59, i32*** %61, align 8
  %62 = load %struct.anon*, %struct.anon** %10, align 8
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 1
  store %struct.anon* %63, %struct.anon** %10, align 8
  br label %64

64:                                               ; preds = %221, %55
  %65 = load %struct.anon*, %struct.anon** %10, align 8
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 -1
  store %struct.anon* %66, %struct.anon** %10, align 8
  %67 = getelementptr inbounds [50 x %struct.anon], [50 x %struct.anon]* %9, i64 0, i64 0
  %68 = icmp uge %struct.anon* %66, %67
  br i1 %68, label %69, label %222

69:                                               ; preds = %64
  %70 = load %struct.anon*, %struct.anon** %10, align 8
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  store i32** %72, i32*** %4, align 8
  %73 = load %struct.anon*, %struct.anon** %10, align 8
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  store i32** %75, i32*** %5, align 8
  br label %76

76:                                               ; preds = %180, %69
  %77 = load i32**, i32*** %5, align 8
  %78 = load i32**, i32*** %4, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 10
  %80 = icmp ugt i32** %77, %79
  br i1 %80, label %81, label %181

81:                                               ; preds = %76
  %82 = load i64, i64* %11, align 8
  %83 = mul i64 %82, 1539415821
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  %85 = load i32**, i32*** %4, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i32**, i32*** %5, align 8
  %88 = load i32**, i32*** %4, align 8
  %89 = ptrtoint i32** %87 to i64
  %90 = ptrtoint i32** %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 8
  %93 = add nsw i64 %92, 1
  %94 = urem i64 %86, %93
  %95 = getelementptr inbounds i32*, i32** %85, i64 %94
  store i32** %95, i32*** %6, align 8
  %96 = load i32**, i32*** %6, align 8
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %8, align 8
  %98 = load i32**, i32*** %4, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i32**, i32*** %6, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i32**, i32*** %4, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i32**, i32*** %4, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 -1
  store i32** %104, i32*** %6, align 8
  %105 = load i32**, i32*** %5, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  store i32** %106, i32*** %7, align 8
  br label %107

107:                                              ; preds = %135, %81
  br label %108

108:                                              ; preds = %111, %107
  %109 = load i32**, i32*** %6, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i32 1
  store i32** %110, i32*** %6, align 8
  br label %111

111:                                              ; preds = %108
  %112 = load i32**, i32*** %6, align 8
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @GT(i32 %114, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %108, label %119

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %123, %119
  %121 = load i32**, i32*** %7, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i32 -1
  store i32** %122, i32*** %7, align 8
  br label %123

123:                                              ; preds = %120
  %124 = load i32**, i32*** %7, align 8
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @LT(i32 %126, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %120, label %131

131:                                              ; preds = %123
  %132 = load i32**, i32*** %6, align 8
  %133 = load i32**, i32*** %7, align 8
  %134 = call i32 @Swap(i32** %132, i32** %133)
  br label %135

135:                                              ; preds = %131
  %136 = load i32**, i32*** %6, align 8
  %137 = load i32**, i32*** %7, align 8
  %138 = icmp ult i32** %136, %137
  br i1 %138, label %107, label %139

139:                                              ; preds = %135
  %140 = load i32**, i32*** %6, align 8
  %141 = load i32**, i32*** %7, align 8
  %142 = call i32 @Swap(i32** %140, i32** %141)
  %143 = load i32**, i32*** %6, align 8
  %144 = load i32**, i32*** %4, align 8
  %145 = ptrtoint i32** %143 to i64
  %146 = ptrtoint i32** %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 8
  %149 = load i32**, i32*** %5, align 8
  %150 = load i32**, i32*** %7, align 8
  %151 = ptrtoint i32** %149 to i64
  %152 = ptrtoint i32** %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 8
  %155 = icmp slt i64 %148, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %139
  %157 = load i32**, i32*** %7, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 1
  %159 = load %struct.anon*, %struct.anon** %10, align 8
  %160 = getelementptr inbounds %struct.anon, %struct.anon* %159, i32 0, i32 0
  store i32** %158, i32*** %160, align 8
  %161 = load i32**, i32*** %5, align 8
  %162 = load %struct.anon*, %struct.anon** %10, align 8
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %162, i32 0, i32 1
  store i32** %161, i32*** %163, align 8
  %164 = load %struct.anon*, %struct.anon** %10, align 8
  %165 = getelementptr inbounds %struct.anon, %struct.anon* %164, i32 1
  store %struct.anon* %165, %struct.anon** %10, align 8
  %166 = load i32**, i32*** %6, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 -1
  store i32** %167, i32*** %5, align 8
  br label %180

168:                                              ; preds = %139
  %169 = load i32**, i32*** %4, align 8
  %170 = load %struct.anon*, %struct.anon** %10, align 8
  %171 = getelementptr inbounds %struct.anon, %struct.anon* %170, i32 0, i32 0
  store i32** %169, i32*** %171, align 8
  %172 = load i32**, i32*** %6, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 -1
  %174 = load %struct.anon*, %struct.anon** %10, align 8
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %174, i32 0, i32 1
  store i32** %173, i32*** %175, align 8
  %176 = load %struct.anon*, %struct.anon** %10, align 8
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %176, i32 1
  store %struct.anon* %177, %struct.anon** %10, align 8
  %178 = load i32**, i32*** %7, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 1
  store i32** %179, i32*** %4, align 8
  br label %180

180:                                              ; preds = %168, %156
  br label %76

181:                                              ; preds = %76
  %182 = load i32**, i32*** %4, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 1
  store i32** %183, i32*** %6, align 8
  br label %184

184:                                              ; preds = %218, %181
  %185 = load i32**, i32*** %6, align 8
  %186 = load i32**, i32*** %5, align 8
  %187 = icmp ule i32** %185, %186
  br i1 %187, label %188, label %221

188:                                              ; preds = %184
  %189 = load i32**, i32*** %6, align 8
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %8, align 8
  %191 = load i32**, i32*** %6, align 8
  store i32** %191, i32*** %7, align 8
  br label %192

192:                                              ; preds = %212, %188
  %193 = load i32**, i32*** %7, align 8
  %194 = load i32**, i32*** %4, align 8
  %195 = icmp ugt i32** %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load i32**, i32*** %7, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 -1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @LT(i32 %200, i32 %202)
  %204 = icmp ne i64 %203, 0
  br label %205

205:                                              ; preds = %196, %192
  %206 = phi i1 [ false, %192 ], [ %204, %196 ]
  br i1 %206, label %207, label %215

207:                                              ; preds = %205
  %208 = load i32**, i32*** %7, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 -1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32**, i32*** %7, align 8
  store i32* %210, i32** %211, align 8
  br label %212

212:                                              ; preds = %207
  %213 = load i32**, i32*** %7, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i32 -1
  store i32** %214, i32*** %7, align 8
  br label %192

215:                                              ; preds = %205
  %216 = load i32*, i32** %8, align 8
  %217 = load i32**, i32*** %7, align 8
  store i32* %216, i32** %217, align 8
  br label %218

218:                                              ; preds = %215
  %219 = load i32**, i32*** %6, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i32 1
  store i32** %220, i32*** %6, align 8
  br label %184

221:                                              ; preds = %184
  br label %64

222:                                              ; preds = %64
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @TRUE, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @__gl_pqHeapInit(i32 %233)
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 2
  %237 = load i32**, i32*** %236, align 8
  store i32** %237, i32*** %4, align 8
  %238 = load i32**, i32*** %4, align 8
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %238, i64 %242
  %244 = getelementptr inbounds i32*, i32** %243, i64 -1
  store i32** %244, i32*** %5, align 8
  %245 = load i32**, i32*** %4, align 8
  store i32** %245, i32*** %6, align 8
  br label %246

246:                                              ; preds = %260, %222
  %247 = load i32**, i32*** %6, align 8
  %248 = load i32**, i32*** %5, align 8
  %249 = icmp ult i32** %247, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %246
  %251 = load i32**, i32*** %6, align 8
  %252 = getelementptr inbounds i32*, i32** %251, i64 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %253, align 4
  %255 = load i32**, i32*** %6, align 8
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @LEQ(i32 %254, i32 %257)
  %259 = call i32 @assert(i32 %258)
  br label %260

260:                                              ; preds = %250
  %261 = load i32**, i32*** %6, align 8
  %262 = getelementptr inbounds i32*, i32** %261, i32 1
  store i32** %262, i32*** %6, align 8
  br label %246

263:                                              ; preds = %246
  store i32 1, i32* %2, align 4
  br label %264

264:                                              ; preds = %263, %27
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i64 @memAlloc(i64) #1

declare dso_local i64 @GT(i32, i32) #1

declare dso_local i64 @LT(i32, i32) #1

declare dso_local i32 @Swap(i32**, i32**) #1

declare dso_local i32 @__gl_pqHeapInit(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LEQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
