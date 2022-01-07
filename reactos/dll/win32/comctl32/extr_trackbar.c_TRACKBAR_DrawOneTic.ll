; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_DrawOneTic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_DrawOneTic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@TBS_VERT = common dso_local global i32 0, align 4
@TBS_TOP = common dso_local global i32 0, align 4
@TBS_LEFT = common dso_local global i32 0, align 4
@TIC_SELECTIONMARK = common dso_local global i32 0, align 4
@TIC_SELECTIONMARKMIN = common dso_local global i32 0, align 4
@TIC_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32)* @TRACKBAR_DrawOneTic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TRACKBAR_DrawOneTic(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
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
  %18 = alloca %struct.TYPE_10__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  store i32 3, i32* %16, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @TBS_VERT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %29, %33
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @SetRect(%struct.TYPE_10__* %18, i32 %40, i32 %46, i32 %51, i32 %58)
  br label %95

60:                                               ; preds = %4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %64, %68
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %17, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %17, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 2
  %94 = call i32 @SetRect(%struct.TYPE_10__* %18, i32 %76, i32 %81, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %60, %25
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @TBS_TOP, align 4
  %98 = load i32, i32* @TBS_LEFT, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %10, align 4
  store i32 -1, i32* %14, align 4
  br label %112

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %9, align 4
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp sle i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 1, i32* %13, align 4
  br label %123

123:                                              ; preds = %122, %112
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @TIC_SELECTIONMARK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @TIC_SELECTIONMARKMIN, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 -1, i32 1
  store i32 %134, i32* %15, align 4
  br label %144

135:                                              ; preds = %123
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @TIC_EDGE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %140, %135
  br label %144

144:                                              ; preds = %143, %128
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @TBS_VERT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %151, %153
  store i32 %154, i32* %19, align 4
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %158, %161
  %163 = mul nsw i32 %157, %162
  %164 = load i32, i32* %13, align 4
  %165 = sdiv i32 %163, %164
  %166 = add nsw i32 %156, %165
  store i32 %166, i32* %10, align 4
  br label %185

167:                                              ; preds = %144
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %169, %171
  store i32 %172, i32* %20, align 4
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %176, %179
  %181 = mul nsw i32 %175, %180
  %182 = load i32, i32* %13, align 4
  %183 = sdiv i32 %181, %182
  %184 = add nsw i32 %174, %183
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %167, %149
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @MoveToEx(i32 %188, i32 %189, i32 %190, i32 0)
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @TBS_VERT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %185
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %14, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %9, align 4
  br label %208

202:                                              ; preds = %185
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %14, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %10, align 4
  br label %208

208:                                              ; preds = %202, %196
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @LineTo(i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @TIC_SELECTIONMARK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %258

217:                                              ; preds = %208
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @TBS_VERT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %9, align 4
  %225 = sub nsw i32 %224, %223
  store i32 %225, i32* %9, align 4
  br label %230

226:                                              ; preds = %217
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %10, align 4
  %229 = sub nsw i32 %228, %227
  store i32 %229, i32* %10, align 4
  br label %230

230:                                              ; preds = %226, %222
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @MoveToEx(i32 %231, i32 %232, i32 %233, i32 0)
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @TBS_VERT, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %230
  %240 = load i32, i32* %15, align 4
  %241 = mul nsw i32 2, %240
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %10, align 4
  br label %249

244:                                              ; preds = %230
  %245 = load i32, i32* %15, align 4
  %246 = mul nsw i32 2, %245
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %9, align 4
  br label %249

249:                                              ; preds = %244, %239
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %10, align 4
  %253 = call i32 @LineTo(i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* %12, align 4
  %257 = call i32 @LineTo(i32 %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %249, %208
  ret void
}

declare dso_local i32 @SetRect(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @MoveToEx(i32, i32, i32, i32) #1

declare dso_local i32 @LineTo(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
