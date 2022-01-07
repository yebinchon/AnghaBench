; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz_simple_api.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz_simple_api.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kFuzzPxLimit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @WebPGetInfo(i32* %24, i64 %25, i32* %6, i32* %7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %245

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %31, %33
  %35 = load i64, i64* @kFuzzPxLimit, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %245

38:                                               ; preds = %29
  %39 = load i32*, i32** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @FuzzHash(i32* %39, i64 %40)
  store i32 %41, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 22
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32* @WebPDecodeRGBA(i32* %45, i64 %46, i32* %6, i32* %7)
  store i32* %47, i32** %9, align 8
  br label %238

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 43
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32* @WebPDecodeARGB(i32* %52, i64 %53, i32* %6, i32* %7)
  store i32* %54, i32** %9, align 8
  br label %237

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 64
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32* @WebPDecodeBGRA(i32* %59, i64 %60, i32* %6, i32* %7)
  store i32* %61, i32** %9, align 8
  br label %236

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 85
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32* @WebPDecodeRGB(i32* %66, i64 %67, i32* %6, i32* %7)
  store i32* %68, i32** %9, align 8
  br label %235

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 106
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32* @WebPDecodeBGR(i32* %73, i64 %74, i32* %6, i32* %7)
  store i32* %75, i32** %9, align 8
  br label %234

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 127
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32* @WebPDecodeYUV(i32* %80, i64 %81, i32* %6, i32* %7, i32** %10, i32** %11, i32* %12, i32* %13)
  store i32* %82, i32** %9, align 8
  br label %233

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 232
  br i1 %85, label %86, label %159

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 190
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 4, i32 3
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %15, align 8
  %97 = load i32, i32* %8, align 4
  %98 = srem i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load i64, i64* %15, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %15, align 8
  br label %103

103:                                              ; preds = %100, %86
  %104 = load i64, i64* %15, align 8
  %105 = call i64 @malloc(i64 %104)
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %16, align 8
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 148
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32*, i32** %4, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @WebPDecodeRGBAInto(i32* %110, i64 %111, i32* %112, i64 %113, i32 %114)
  br label %156

116:                                              ; preds = %103
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 169
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32*, i32** %4, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @WebPDecodeARGBInto(i32* %120, i64 %121, i32* %122, i64 %123, i32 %124)
  br label %155

126:                                              ; preds = %116
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 190
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32*, i32** %4, align 8
  %131 = load i64, i64* %5, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @WebPDecodeBGRAInto(i32* %130, i64 %131, i32* %132, i64 %133, i32 %134)
  br label %154

136:                                              ; preds = %126
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 211
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32*, i32** %4, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load i32*, i32** %16, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @WebPDecodeRGBInto(i32* %140, i64 %141, i32* %142, i64 %143, i32 %144)
  br label %153

146:                                              ; preds = %136
  %147 = load i32*, i32** %4, align 8
  %148 = load i64, i64* %5, align 8
  %149 = load i32*, i32** %16, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @WebPDecodeBGRInto(i32* %147, i64 %148, i32* %149, i64 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %139
  br label %154

154:                                              ; preds = %153, %129
  br label %155

155:                                              ; preds = %154, %119
  br label %156

156:                                              ; preds = %155, %109
  %157 = load i32*, i32** %16, align 8
  %158 = call i32 @free(i32* %157)
  br label %232

159:                                              ; preds = %83
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %17, align 8
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  %166 = sdiv i32 %165, 2
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  %170 = mul nsw i32 %167, %169
  %171 = sdiv i32 %170, 2
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %19, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  %176 = mul nsw i32 %173, %175
  %177 = sdiv i32 %176, 2
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %20, align 8
  %179 = load i32, i32* %8, align 4
  %180 = srem i32 %179, 16
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %159
  %183 = load i64, i64* %5, align 8
  %184 = and i64 %183, 1
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i64, i64* %17, align 8
  %188 = add i64 %187, -1
  store i64 %188, i64* %17, align 8
  br label %189

189:                                              ; preds = %186, %182
  %190 = load i64, i64* %5, align 8
  %191 = and i64 %190, 2
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i64, i64* %19, align 8
  %195 = add i64 %194, -1
  store i64 %195, i64* %19, align 8
  br label %196

196:                                              ; preds = %193, %189
  %197 = load i64, i64* %5, align 8
  %198 = and i64 %197, 4
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i64, i64* %20, align 8
  %202 = add i64 %201, -1
  store i64 %202, i64* %20, align 8
  br label %203

203:                                              ; preds = %200, %196
  br label %204

204:                                              ; preds = %203, %159
  %205 = load i64, i64* %17, align 8
  %206 = call i64 @malloc(i64 %205)
  %207 = inttoptr i64 %206 to i32*
  store i32* %207, i32** %21, align 8
  %208 = load i64, i64* %19, align 8
  %209 = call i64 @malloc(i64 %208)
  %210 = inttoptr i64 %209 to i32*
  store i32* %210, i32** %22, align 8
  %211 = load i64, i64* %20, align 8
  %212 = call i64 @malloc(i64 %211)
  %213 = inttoptr i64 %212 to i32*
  store i32* %213, i32** %23, align 8
  %214 = load i32*, i32** %4, align 8
  %215 = load i64, i64* %5, align 8
  %216 = load i32*, i32** %21, align 8
  %217 = load i64, i64* %17, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32*, i32** %22, align 8
  %220 = load i64, i64* %19, align 8
  %221 = load i32, i32* %18, align 4
  %222 = load i32*, i32** %23, align 8
  %223 = load i64, i64* %20, align 8
  %224 = load i32, i32* %18, align 4
  %225 = call i32 @WebPDecodeYUVInto(i32* %214, i64 %215, i32* %216, i64 %217, i32 %218, i32* %219, i64 %220, i32 %221, i32* %222, i64 %223, i32 %224)
  %226 = load i32*, i32** %21, align 8
  %227 = call i32 @free(i32* %226)
  %228 = load i32*, i32** %22, align 8
  %229 = call i32 @free(i32* %228)
  %230 = load i32*, i32** %23, align 8
  %231 = call i32 @free(i32* %230)
  br label %232

232:                                              ; preds = %204, %156
  br label %233

233:                                              ; preds = %232, %79
  br label %234

234:                                              ; preds = %233, %72
  br label %235

235:                                              ; preds = %234, %65
  br label %236

236:                                              ; preds = %235, %58
  br label %237

237:                                              ; preds = %236, %51
  br label %238

238:                                              ; preds = %237, %44
  %239 = load i32*, i32** %9, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32*, i32** %9, align 8
  %243 = call i32 @WebPFree(i32* %242)
  br label %244

244:                                              ; preds = %241, %238
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %37, %28
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @WebPGetInfo(i32*, i64, i32*, i32*) #1

declare dso_local i32 @FuzzHash(i32*, i64) #1

declare dso_local i32* @WebPDecodeRGBA(i32*, i64, i32*, i32*) #1

declare dso_local i32* @WebPDecodeARGB(i32*, i64, i32*, i32*) #1

declare dso_local i32* @WebPDecodeBGRA(i32*, i64, i32*, i32*) #1

declare dso_local i32* @WebPDecodeRGB(i32*, i64, i32*, i32*) #1

declare dso_local i32* @WebPDecodeBGR(i32*, i64, i32*, i32*) #1

declare dso_local i32* @WebPDecodeYUV(i32*, i64, i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @WebPDecodeRGBAInto(i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @WebPDecodeARGBInto(i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @WebPDecodeBGRAInto(i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @WebPDecodeRGBInto(i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @WebPDecodeBGRInto(i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @WebPDecodeYUVInto(i32*, i64, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32) #1

declare dso_local i32 @WebPFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
