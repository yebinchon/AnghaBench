; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_screenblt.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_screenblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_Bpp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_screenblt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = call i64 @bs_warp_coords(i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %261

22:                                               ; preds = %7
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %139

25:                                               ; preds = %22
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  br label %32

32:                                               ; preds = %59, %29
  %33 = load i32, i32* %16, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i8* @get_bs_ptr(i32 %36, i32 %39)
  store i8* %40, i8** %18, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i8* @get_bs_ptr(i32 %41, i32 %44)
  store i8* %45, i8** %19, align 8
  %46 = load i8*, i8** %18, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %35
  %49 = load i8*, i8** %19, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i8*, i8** %19, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @g_Bpp, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i32 @bs_copy_mem(i8* %52, i8* %53, i32 %56)
  br label %58

58:                                               ; preds = %51, %48, %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %16, align 4
  br label %32

62:                                               ; preds = %32
  br label %138

63:                                               ; preds = %25
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67, %63
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %100, %71
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i8* @get_bs_ptr(i32 %77, i32 %80)
  store i8* %81, i8** %18, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %83, %84
  %86 = call i8* @get_bs_ptr(i32 %82, i32 %85)
  store i8* %86, i8** %19, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load i8*, i8** %19, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i8*, i8** %19, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @g_Bpp, align 4
  %97 = mul nsw i32 %95, %96
  %98 = call i32 @bs_copy_mem(i8* %93, i8* %94, i32 %97)
  br label %99

99:                                               ; preds = %92, %89, %76
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %72

103:                                              ; preds = %72
  br label %137

104:                                              ; preds = %67
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %133, %104
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i8* @get_bs_ptr(i32 %110, i32 %113)
  store i8* %114, i8** %18, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %116, %117
  %119 = call i8* @get_bs_ptr(i32 %115, i32 %118)
  store i8* %119, i8** %19, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %109
  %123 = load i8*, i8** %19, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i8*, i8** %19, align 8
  %127 = load i8*, i8** %18, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @g_Bpp, align 4
  %130 = mul nsw i32 %128, %129
  %131 = call i32 @bs_copy_memb(i8* %126, i8* %127, i32 %130)
  br label %132

132:                                              ; preds = %125, %122, %109
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  br label %105

136:                                              ; preds = %105
  br label %137

137:                                              ; preds = %136, %103
  br label %138

138:                                              ; preds = %137, %62
  br label %260

139:                                              ; preds = %22
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %179

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %175, %143
  %147 = load i32, i32* %16, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %178

149:                                              ; preds = %146
  store i32 0, i32* %17, align 4
  br label %150

150:                                              ; preds = %171, %149
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %150
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i32 @bs_get_pixel(i32 %157, i32 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @bs_set_pixel(i32 %164, i32 %167, i32 %168, i32 %169, i32 0)
  br label %171

171:                                              ; preds = %154
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %150

174:                                              ; preds = %150
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %16, align 4
  br label %146

178:                                              ; preds = %146
  br label %259

179:                                              ; preds = %139
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %222

187:                                              ; preds = %183, %179
  store i32 0, i32* %16, align 4
  br label %188

188:                                              ; preds = %218, %187
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %221

192:                                              ; preds = %188
  store i32 0, i32* %17, align 4
  br label %193

193:                                              ; preds = %214, %192
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %217

197:                                              ; preds = %193
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %17, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %201, %202
  %204 = call i32 @bs_get_pixel(i32 %200, i32 %203)
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @bs_set_pixel(i32 %207, i32 %210, i32 %211, i32 %212, i32 0)
  br label %214

214:                                              ; preds = %197
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  br label %193

217:                                              ; preds = %193
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %16, align 4
  br label %188

221:                                              ; preds = %188
  br label %258

222:                                              ; preds = %183
  store i32 0, i32* %16, align 4
  br label %223

223:                                              ; preds = %254, %222
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %12, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %257

227:                                              ; preds = %223
  %228 = load i32, i32* %11, align 4
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %17, align 4
  br label %230

230:                                              ; preds = %250, %227
  %231 = load i32, i32* %17, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %253

233:                                              ; preds = %230
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %17, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %237, %238
  %240 = call i32 @bs_get_pixel(i32 %236, i32 %239)
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %17, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %244, %245
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @bs_set_pixel(i32 %243, i32 %246, i32 %247, i32 %248, i32 0)
  br label %250

250:                                              ; preds = %233
  %251 = load i32, i32* %17, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %17, align 4
  br label %230

253:                                              ; preds = %230
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %16, align 4
  br label %223

257:                                              ; preds = %223
  br label %258

258:                                              ; preds = %257, %221
  br label %259

259:                                              ; preds = %258, %178
  br label %260

260:                                              ; preds = %259, %138
  br label %261

261:                                              ; preds = %260, %7
  ret void
}

declare dso_local i64 @bs_warp_coords(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @get_bs_ptr(i32, i32) #1

declare dso_local i32 @bs_copy_mem(i8*, i8*, i32) #1

declare dso_local i32 @bs_copy_memb(i8*, i8*, i32) #1

declare dso_local i32 @bs_get_pixel(i32, i32) #1

declare dso_local i32 @bs_set_pixel(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
