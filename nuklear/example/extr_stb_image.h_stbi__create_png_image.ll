; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__create_png_image.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__create_png_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@__const.stbi__create_png_image.xorig = private unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@__const.stbi__create_png_image.yorig = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@__const.stbi__create_png_image.xspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@__const.stbi__create_png_image.yspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32)* @stbi__create_png_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__create_png_image(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [7 x i32], align 16
  %19 = alloca [7 x i32], align 16
  %20 = alloca [7 x i32], align 16
  %21 = alloca [7 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %7
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @stbi__create_png_image_raw(%struct.TYPE_6__* %32, i32* %33, i32 %34, i32 %35, i32 %40, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %239

49:                                               ; preds = %7
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = load i32, i32* %12, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i64 @stbi__malloc(i32 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %232, %49
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %66, 7
  br i1 %67, label %68, label %235

68:                                               ; preds = %65
  %69 = bitcast [7 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 16 bitcast ([7 x i32]* @__const.stbi__create_png_image.xorig to i8*), i64 28, i1 false)
  %70 = bitcast [7 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %70, i8* align 16 bitcast ([7 x i32]* @__const.stbi__create_png_image.yorig to i8*), i64 28, i1 false)
  %71 = bitcast [7 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %71, i8* align 16 bitcast ([7 x i32]* @__const.stbi__create_png_image.xspc to i8*), i64 28, i1 false)
  %72 = bitcast [7 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %72, i8* align 16 bitcast ([7 x i32]* @__const.stbi__create_png_image.yspc to i8*), i64 28, i1 false)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %77, %81
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %82, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %88, %92
  store i32 %93, i32* %24, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [7 x i32], [7 x i32]* %19, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %98, %102
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [7 x i32], [7 x i32]* %21, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %103, %107
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [7 x i32], [7 x i32]* %21, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %109, %113
  store i32 %114, i32* %25, align 4
  %115 = load i32, i32* %24, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %231

117:                                              ; preds = %68
  %118 = load i32, i32* %25, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %231

120:                                              ; preds = %117
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %24, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* %13, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %129, 7
  %131 = ashr i32 %130, 3
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* %25, align 4
  %134 = mul nsw i32 %132, %133
  store i32 %134, i32* %26, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @stbi__create_png_image_raw(%struct.TYPE_6__* %135, i32* %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %120
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @STBI_FREE(i32* %146)
  store i32 0, i32* %8, align 4
  br label %239

148:                                              ; preds = %120
  store i32 0, i32* %23, align 4
  br label %149

149:                                              ; preds = %216, %148
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* %25, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %219

153:                                              ; preds = %149
  store i32 0, i32* %22, align 4
  br label %154

154:                                              ; preds = %212, %153
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %24, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %215

158:                                              ; preds = %154
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [7 x i32], [7 x i32]* %21, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %159, %163
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [7 x i32], [7 x i32]* %19, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %164, %168
  store i32 %169, i32* %27, align 4
  %170 = load i32, i32* %22, align 4
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %170, %174
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %175, %179
  store i32 %180, i32* %28, align 4
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* %27, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %182, %187
  %189 = load i32, i32* %12, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %181, i64 %191
  %193 = load i32, i32* %28, align 4
  %194 = load i32, i32* %12, align 4
  %195 = mul nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %24, align 4
  %203 = mul nsw i32 %201, %202
  %204 = load i32, i32* %22, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %12, align 4
  %207 = mul nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %200, i64 %208
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @memcpy(i32* %197, i32* %209, i32 %210)
  br label %212

212:                                              ; preds = %158
  %213 = load i32, i32* %22, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %22, align 4
  br label %154

215:                                              ; preds = %154
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %23, align 4
  br label %149

219:                                              ; preds = %149
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @STBI_FREE(i32* %222)
  %224 = load i32, i32* %26, align 4
  %225 = load i32*, i32** %10, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32* %227, i32** %10, align 8
  %228 = load i32, i32* %26, align 4
  %229 = load i32, i32* %11, align 4
  %230 = sub nsw i32 %229, %228
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %219, %117, %68
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %17, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %17, align 4
  br label %65

235:                                              ; preds = %65
  %236 = load i32*, i32** %16, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  store i32* %236, i32** %238, align 8
  store i32 1, i32* %8, align 4
  br label %239

239:                                              ; preds = %235, %145, %31
  %240 = load i32, i32* %8, align 4
  ret i32 %240
}

declare dso_local i32 @stbi__create_png_image_raw(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @stbi__malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STBI_FREE(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
