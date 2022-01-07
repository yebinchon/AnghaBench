; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_unshift.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_unshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_do_unshift\0A\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_unshift(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %25 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %249

31:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %73
  store i32 %70, i32* %74, align 4
  br label %87

75:                                               ; preds = %31
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %75, %41
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %87
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %94, %87
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %123, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %119
  store i32 0, i32* %120, align 4
  br label %122

121:                                              ; preds = %111
  store i32 1, i32* %10, align 4
  br label %122

122:                                              ; preds = %121, %117
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %107

126:                                              ; preds = %107
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %249

130:                                              ; preds = %126
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %248 [
    i32 2, label %134
    i32 4, label %155
    i32 8, label %187
    i32 16, label %211
  ]

134:                                              ; preds = %130
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  %138 = load i32*, i32** %5, align 8
  store i32* %138, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %151, %134
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i32*, i32** %12, align 8
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %12, align 8
  %149 = load i32, i32* %147, align 4
  %150 = and i32 %149, 85
  store i32 %150, i32* %147, align 4
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %139

154:                                              ; preds = %139
  br label %248

155:                                              ; preds = %130
  %156 = load i32*, i32** %5, align 8
  store i32* %156, i32** %15, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %17, align 4
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %161 = load i32, i32* %160, align 16
  %162 = ashr i32 240, %161
  %163 = and i32 %162, 240
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %165 = load i32, i32* %164, align 16
  %166 = ashr i32 15, %165
  %167 = or i32 %163, %166
  store i32 %167, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %168

168:                                              ; preds = %183, %155
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %168
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %174 = load i32, i32* %173, align 16
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, %174
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load i32*, i32** %15, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %15, align 8
  %181 = load i32, i32* %179, align 4
  %182 = and i32 %181, %178
  store i32 %182, i32* %179, align 4
  br label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %16, align 4
  br label %168

186:                                              ; preds = %168
  br label %248

187:                                              ; preds = %130
  %188 = load i32*, i32** %5, align 8
  store i32* %188, i32** %19, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %8, align 4
  %191 = mul nsw i32 %189, %190
  store i32 %191, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %192

192:                                              ; preds = %207, %187
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %21, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %192
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* %8, align 4
  %199 = srem i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %19, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %19, align 8
  %205 = load i32, i32* %203, align 4
  %206 = ashr i32 %205, %202
  store i32 %206, i32* %203, align 4
  br label %207

207:                                              ; preds = %196
  %208 = load i32, i32* %20, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %20, align 4
  br label %192

210:                                              ; preds = %192
  br label %248

211:                                              ; preds = %130
  %212 = load i32*, i32** %5, align 8
  store i32* %212, i32** %22, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %11, align 4
  %215 = mul nsw i32 %213, %214
  store i32 %215, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %216

216:                                              ; preds = %244, %211
  %217 = load i32, i32* %23, align 4
  %218 = load i32, i32* %24, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %247

220:                                              ; preds = %216
  %221 = load i32*, i32** %22, align 8
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 8
  %224 = load i32*, i32** %22, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %223, %226
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %8, align 4
  %230 = srem i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %10, align 4
  %235 = ashr i32 %234, %233
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = ashr i32 %236, 8
  %238 = load i32*, i32** %22, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %22, align 8
  store i32 %237, i32* %238, align 4
  %240 = load i32, i32* %10, align 4
  %241 = and i32 %240, 255
  %242 = load i32*, i32** %22, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %22, align 8
  store i32 %241, i32* %242, align 4
  br label %244

244:                                              ; preds = %220
  %245 = load i32, i32* %23, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %23, align 4
  br label %216

247:                                              ; preds = %216
  br label %248

248:                                              ; preds = %130, %247, %210, %186, %154
  br label %249

249:                                              ; preds = %129, %248, %3
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
