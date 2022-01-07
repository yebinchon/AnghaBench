; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_rect.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_color = type { i32 }
%struct.nk_vec2i = type { i16, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i16, i32)* @nk_rawfb_fill_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_fill_rect(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca %struct.rawfb_context*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca [12 x %struct.nk_vec2i], align 16
  %21 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %6, i32* %21, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %9, align 8
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  %22 = load i16, i16* %14, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %15, align 4
  %28 = load i16, i16* %13, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %33 = load i16, i16* %10, align 2
  %34 = load i16, i16* %11, align 2
  %35 = sext i16 %34 to i32
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %35, %36
  %38 = trunc i32 %37 to i16
  %39 = load i16, i16* %10, align 2
  %40 = sext i16 %39 to i32
  %41 = load i16, i16* %12, align 2
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %40, %42
  %44 = trunc i32 %43 to i16
  %45 = load i16, i16* %11, align 2
  %46 = sext i16 %45 to i32
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %46, %47
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %32, i16 signext %33, i16 signext %38, i16 signext %44, i16 signext %49, i32 1, i32 %51)
  br label %53

53:                                               ; preds = %31
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %26

56:                                               ; preds = %26
  br label %301

57:                                               ; preds = %7
  %58 = load i16, i16* %10, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16, i16* %14, align 2
  %61 = sext i16 %60 to i32
  %62 = add nsw i32 %59, %61
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %16, align 2
  %64 = load i16, i16* %11, align 2
  %65 = sext i16 %64 to i32
  %66 = load i16, i16* %14, align 2
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %17, align 2
  %70 = load i16, i16* %12, align 2
  %71 = sext i16 %70 to i32
  %72 = load i16, i16* %14, align 2
  %73 = sext i16 %72 to i32
  %74 = mul nsw i32 2, %73
  %75 = sub nsw i32 %71, %74
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %18, align 2
  %77 = load i16, i16* %13, align 2
  %78 = sext i16 %77 to i32
  %79 = load i16, i16* %14, align 2
  %80 = sext i16 %79 to i32
  %81 = mul nsw i32 2, %80
  %82 = sub nsw i32 %78, %81
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %19, align 2
  %84 = load i16, i16* %10, align 2
  %85 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 0
  %86 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %85, i32 0, i32 0
  store i16 %84, i16* %86, align 16
  %87 = load i16, i16* %17, align 2
  %88 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 0
  %89 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %88, i32 0, i32 1
  store i16 %87, i16* %89, align 2
  %90 = load i16, i16* %16, align 2
  %91 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 1
  %92 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %91, i32 0, i32 0
  store i16 %90, i16* %92, align 4
  %93 = load i16, i16* %17, align 2
  %94 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 1
  %95 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %94, i32 0, i32 1
  store i16 %93, i16* %95, align 2
  %96 = load i16, i16* %16, align 2
  %97 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 2
  %98 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %97, i32 0, i32 0
  store i16 %96, i16* %98, align 8
  %99 = load i16, i16* %11, align 2
  %100 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 2
  %101 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %100, i32 0, i32 1
  store i16 %99, i16* %101, align 2
  %102 = load i16, i16* %16, align 2
  %103 = sext i16 %102 to i32
  %104 = load i16, i16* %18, align 2
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %103, %105
  %107 = trunc i32 %106 to i16
  %108 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 3
  %109 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %108, i32 0, i32 0
  store i16 %107, i16* %109, align 4
  %110 = load i16, i16* %11, align 2
  %111 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 3
  %112 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %111, i32 0, i32 1
  store i16 %110, i16* %112, align 2
  %113 = load i16, i16* %16, align 2
  %114 = sext i16 %113 to i32
  %115 = load i16, i16* %18, align 2
  %116 = sext i16 %115 to i32
  %117 = add nsw i32 %114, %116
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 4
  %120 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %119, i32 0, i32 0
  store i16 %118, i16* %120, align 16
  %121 = load i16, i16* %17, align 2
  %122 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 4
  %123 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %122, i32 0, i32 1
  store i16 %121, i16* %123, align 2
  %124 = load i16, i16* %10, align 2
  %125 = sext i16 %124 to i32
  %126 = load i16, i16* %12, align 2
  %127 = sext i16 %126 to i32
  %128 = add nsw i32 %125, %127
  %129 = trunc i32 %128 to i16
  %130 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 5
  %131 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %130, i32 0, i32 0
  store i16 %129, i16* %131, align 4
  %132 = load i16, i16* %17, align 2
  %133 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 5
  %134 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %133, i32 0, i32 1
  store i16 %132, i16* %134, align 2
  %135 = load i16, i16* %10, align 2
  %136 = sext i16 %135 to i32
  %137 = load i16, i16* %12, align 2
  %138 = sext i16 %137 to i32
  %139 = add nsw i32 %136, %138
  %140 = trunc i32 %139 to i16
  %141 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 6
  %142 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %141, i32 0, i32 0
  store i16 %140, i16* %142, align 8
  %143 = load i16, i16* %17, align 2
  %144 = sext i16 %143 to i32
  %145 = load i16, i16* %19, align 2
  %146 = sext i16 %145 to i32
  %147 = add nsw i32 %144, %146
  %148 = trunc i32 %147 to i16
  %149 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 6
  %150 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %149, i32 0, i32 1
  store i16 %148, i16* %150, align 2
  %151 = load i16, i16* %16, align 2
  %152 = sext i16 %151 to i32
  %153 = load i16, i16* %18, align 2
  %154 = sext i16 %153 to i32
  %155 = add nsw i32 %152, %154
  %156 = trunc i32 %155 to i16
  %157 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 7
  %158 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %157, i32 0, i32 0
  store i16 %156, i16* %158, align 4
  %159 = load i16, i16* %17, align 2
  %160 = sext i16 %159 to i32
  %161 = load i16, i16* %19, align 2
  %162 = sext i16 %161 to i32
  %163 = add nsw i32 %160, %162
  %164 = trunc i32 %163 to i16
  %165 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 7
  %166 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %165, i32 0, i32 1
  store i16 %164, i16* %166, align 2
  %167 = load i16, i16* %16, align 2
  %168 = sext i16 %167 to i32
  %169 = load i16, i16* %18, align 2
  %170 = sext i16 %169 to i32
  %171 = add nsw i32 %168, %170
  %172 = trunc i32 %171 to i16
  %173 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 8
  %174 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %173, i32 0, i32 0
  store i16 %172, i16* %174, align 16
  %175 = load i16, i16* %11, align 2
  %176 = sext i16 %175 to i32
  %177 = load i16, i16* %13, align 2
  %178 = sext i16 %177 to i32
  %179 = add nsw i32 %176, %178
  %180 = trunc i32 %179 to i16
  %181 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 8
  %182 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %181, i32 0, i32 1
  store i16 %180, i16* %182, align 2
  %183 = load i16, i16* %16, align 2
  %184 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 9
  %185 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %184, i32 0, i32 0
  store i16 %183, i16* %185, align 4
  %186 = load i16, i16* %11, align 2
  %187 = sext i16 %186 to i32
  %188 = load i16, i16* %13, align 2
  %189 = sext i16 %188 to i32
  %190 = add nsw i32 %187, %189
  %191 = trunc i32 %190 to i16
  %192 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 9
  %193 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %192, i32 0, i32 1
  store i16 %191, i16* %193, align 2
  %194 = load i16, i16* %16, align 2
  %195 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 10
  %196 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %195, i32 0, i32 0
  store i16 %194, i16* %196, align 8
  %197 = load i16, i16* %17, align 2
  %198 = sext i16 %197 to i32
  %199 = load i16, i16* %19, align 2
  %200 = sext i16 %199 to i32
  %201 = add nsw i32 %198, %200
  %202 = trunc i32 %201 to i16
  %203 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 10
  %204 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %203, i32 0, i32 1
  store i16 %202, i16* %204, align 2
  %205 = load i16, i16* %10, align 2
  %206 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 11
  %207 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %206, i32 0, i32 0
  store i16 %205, i16* %207, align 4
  %208 = load i16, i16* %17, align 2
  %209 = sext i16 %208 to i32
  %210 = load i16, i16* %19, align 2
  %211 = sext i16 %210 to i32
  %212 = add nsw i32 %209, %211
  %213 = trunc i32 %212 to i16
  %214 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 11
  %215 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %214, i32 0, i32 1
  store i16 %213, i16* %215, align 2
  %216 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %217 = getelementptr inbounds [12 x %struct.nk_vec2i], [12 x %struct.nk_vec2i]* %20, i64 0, i64 0
  %218 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @nk_rawfb_fill_polygon(%struct.rawfb_context* %216, %struct.nk_vec2i* %217, i32 12, i32 %219)
  %221 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %222 = load i16, i16* %16, align 2
  %223 = sext i16 %222 to i32
  %224 = load i16, i16* %18, align 2
  %225 = sext i16 %224 to i32
  %226 = add nsw i32 %223, %225
  %227 = load i16, i16* %14, align 2
  %228 = sext i16 %227 to i32
  %229 = sub nsw i32 %226, %228
  %230 = trunc i32 %229 to i16
  %231 = load i16, i16* %11, align 2
  %232 = load i16, i16* %14, align 2
  %233 = sext i16 %232 to i32
  %234 = mul i32 %233, 2
  %235 = load i16, i16* %14, align 2
  %236 = sext i16 %235 to i32
  %237 = mul i32 %236, 2
  %238 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @nk_rawfb_fill_arc(%struct.rawfb_context* %221, i16 signext %230, i16 signext %231, i32 %234, i32 %237, i32 0, i32 %239)
  %241 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %242 = load i16, i16* %10, align 2
  %243 = load i16, i16* %11, align 2
  %244 = load i16, i16* %14, align 2
  %245 = sext i16 %244 to i32
  %246 = mul i32 %245, 2
  %247 = load i16, i16* %14, align 2
  %248 = sext i16 %247 to i32
  %249 = mul i32 %248, 2
  %250 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @nk_rawfb_fill_arc(%struct.rawfb_context* %241, i16 signext %242, i16 signext %243, i32 %246, i32 %249, i32 90, i32 %251)
  %253 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %254 = load i16, i16* %10, align 2
  %255 = load i16, i16* %17, align 2
  %256 = sext i16 %255 to i32
  %257 = load i16, i16* %19, align 2
  %258 = sext i16 %257 to i32
  %259 = add nsw i32 %256, %258
  %260 = load i16, i16* %14, align 2
  %261 = sext i16 %260 to i32
  %262 = sub nsw i32 %259, %261
  %263 = trunc i32 %262 to i16
  %264 = load i16, i16* %14, align 2
  %265 = sext i16 %264 to i32
  %266 = mul i32 %265, 2
  %267 = load i16, i16* %14, align 2
  %268 = sext i16 %267 to i32
  %269 = mul i32 %268, 2
  %270 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @nk_rawfb_fill_arc(%struct.rawfb_context* %253, i16 signext %254, i16 signext %263, i32 %266, i32 %269, i32 270, i32 %271)
  %273 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %274 = load i16, i16* %16, align 2
  %275 = sext i16 %274 to i32
  %276 = load i16, i16* %18, align 2
  %277 = sext i16 %276 to i32
  %278 = add nsw i32 %275, %277
  %279 = load i16, i16* %14, align 2
  %280 = sext i16 %279 to i32
  %281 = sub nsw i32 %278, %280
  %282 = trunc i32 %281 to i16
  %283 = load i16, i16* %17, align 2
  %284 = sext i16 %283 to i32
  %285 = load i16, i16* %19, align 2
  %286 = sext i16 %285 to i32
  %287 = add nsw i32 %284, %286
  %288 = load i16, i16* %14, align 2
  %289 = sext i16 %288 to i32
  %290 = sub nsw i32 %287, %289
  %291 = trunc i32 %290 to i16
  %292 = load i16, i16* %14, align 2
  %293 = sext i16 %292 to i32
  %294 = mul i32 %293, 2
  %295 = load i16, i16* %14, align 2
  %296 = sext i16 %295 to i32
  %297 = mul i32 %296, 2
  %298 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @nk_rawfb_fill_arc(%struct.rawfb_context* %273, i16 signext %282, i16 signext %291, i32 %294, i32 %297, i32 180, i32 %299)
  br label %301

301:                                              ; preds = %57, %56
  ret void
}

declare dso_local i32 @nk_rawfb_stroke_line(%struct.rawfb_context*, i16 signext, i16 signext, i16 signext, i16 signext, i32, i32) #1

declare dso_local i32 @nk_rawfb_fill_polygon(%struct.rawfb_context*, %struct.nk_vec2i*, i32, i32) #1

declare dso_local i32 @nk_rawfb_fill_arc(%struct.rawfb_context*, i16 signext, i16 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
