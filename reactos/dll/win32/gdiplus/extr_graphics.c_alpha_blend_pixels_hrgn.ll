; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_alpha_blend_pixels_hrgn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_alpha_blend_pixels_hrgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@Ok = common dso_local global i64 0, align 8
@ImageTypeBitmap = common dso_local global i64 0, align 8
@OutOfMemory = common dso_local global i64 0, align 8
@RGN_AND = common dso_local global i32 0, align 4
@ImageTypeMetafile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"This should not be used for metafiles; fix caller\0A\00", align 1
@NotImplemented = common dso_local global i64 0, align 8
@RGN_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i32, i32, i32*, i32, i32, i32, i64, i32)* @alpha_blend_pixels_hrgn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpha_blend_pixels_hrgn(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %29 = load i64, i64* @Ok, align 8
  store i64 %29, i64* %20, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %186

34:                                               ; preds = %9
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ImageTypeBitmap, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %186

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i64 @CreateRectRgn(i32 %43, i32 %44, i32 %47, i32 %50)
  store i64 %51, i64* %25, align 8
  %52 = load i64, i64* %25, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %42
  %55 = load i64, i64* @OutOfMemory, align 8
  store i64 %55, i64* %10, align 8
  br label %248

56:                                               ; preds = %42
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %58 = call i64 @get_clip_hrgn(%struct.TYPE_17__* %57, i64* %26)
  store i64 %58, i64* %20, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* @Ok, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, i64* %25, align 8
  %64 = call i32 @DeleteObject(i64 %63)
  %65 = load i64, i64* %20, align 8
  store i64 %65, i64* %10, align 8
  br label %248

66:                                               ; preds = %56
  %67 = load i64, i64* %26, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i64, i64* %25, align 8
  %71 = load i64, i64* %25, align 8
  %72 = load i64, i64* %26, align 8
  %73 = load i32, i32* @RGN_AND, align 4
  %74 = call i32 @CombineRgn(i64 %70, i64 %71, i64 %72, i32 %73)
  %75 = load i64, i64* %26, align 8
  %76 = call i32 @DeleteObject(i64 %75)
  br label %77

77:                                               ; preds = %69, %66
  %78 = load i64, i64* %18, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* %25, align 8
  %82 = load i64, i64* %25, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load i32, i32* @RGN_AND, align 4
  %85 = call i32 @CombineRgn(i64 %81, i64 %82, i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i64, i64* %25, align 8
  %88 = call i32 @GetRegionData(i64 %87, i32 0, %struct.TYPE_15__* null)
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %22, align 4
  %90 = call %struct.TYPE_15__* @heap_alloc_zero(i32 %89)
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %23, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %92 = icmp ne %struct.TYPE_15__* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load i64, i64* %25, align 8
  %95 = call i32 @DeleteObject(i64 %94)
  %96 = load i64, i64* @OutOfMemory, align 8
  store i64 %96, i64* %10, align 8
  br label %248

97:                                               ; preds = %86
  %98 = load i64, i64* %25, align 8
  %99 = load i32, i32* %22, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %101 = call i32 @GetRegionData(i64 %98, i32 %99, %struct.TYPE_15__* %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %24, align 8
  store i64 0, i64* %21, align 8
  br label %106

106:                                              ; preds = %177, %97
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* @Ok, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i64, i64* %21, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ult i64 %111, %115
  br label %117

117:                                              ; preds = %110, %106
  %118 = phi i1 [ false, %106 ], [ %116, %110 ]
  br i1 %118, label %119, label %180

119:                                              ; preds = %117
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %122 = load i64, i64* %21, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %127 = load i64, i64* %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %14, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %133 = load i64, i64* %21, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %136, %137
  %139 = mul nsw i32 %138, 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %141 = load i64, i64* %21, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load i32, i32* %17, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %139, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %131, i64 %150
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %153 = load i64, i64* %21, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %158 = load i64, i64* %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %156, %161
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %164 = load i64, i64* %21, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %169 = load i64, i64* %21, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %167, %172
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %19, align 4
  %176 = call i64 @alpha_blend_bmp_pixels(%struct.TYPE_17__* %120, i32 %125, i32 %130, i32* %151, i32 %162, i32 %173, i32 %174, i32 %175)
  store i64 %176, i64* %20, align 8
  br label %177

177:                                              ; preds = %119
  %178 = load i64, i64* %21, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %21, align 8
  br label %106

180:                                              ; preds = %117
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %182 = call i32 @heap_free(%struct.TYPE_15__* %181)
  %183 = load i64, i64* %25, align 8
  %184 = call i32 @DeleteObject(i64 %183)
  %185 = load i64, i64* %20, align 8
  store i64 %185, i64* %10, align 8
  br label %248

186:                                              ; preds = %34, %9
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = icmp ne %struct.TYPE_14__* %189, null
  br i1 %190, label %191, label %202

191:                                              ; preds = %186
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @ImageTypeMetafile, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = call i32 @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %201 = load i64, i64* @NotImplemented, align 8
  store i64 %201, i64* %10, align 8
  br label %248

202:                                              ; preds = %191, %186
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %204 = call i64 @get_clip_hrgn(%struct.TYPE_17__* %203, i64* %27)
  store i64 %204, i64* %20, align 8
  %205 = load i64, i64* %20, align 8
  %206 = load i64, i64* @Ok, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i64, i64* %20, align 8
  store i64 %209, i64* %10, align 8
  br label %248

210:                                              ; preds = %202
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @SaveDC(i32 %213)
  store i32 %214, i32* %28, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i64, i64* %27, align 8
  %219 = load i32, i32* @RGN_COPY, align 4
  %220 = call i32 @ExtSelectClipRgn(i32 %217, i64 %218, i32 %219)
  %221 = load i64, i64* %18, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %210
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i64, i64* %18, align 8
  %228 = load i32, i32* @RGN_AND, align 4
  %229 = call i32 @ExtSelectClipRgn(i32 %226, i64 %227, i32 %228)
  br label %230

230:                                              ; preds = %223, %210
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %13, align 4
  %234 = load i32*, i32** %14, align 8
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %19, align 4
  %239 = call i64 @alpha_blend_hdc_pixels(%struct.TYPE_17__* %231, i32 %232, i32 %233, i32* %234, i32 %235, i32 %236, i32 %237, i32 %238)
  store i64 %239, i64* %20, align 8
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %28, align 4
  %244 = call i32 @RestoreDC(i32 %242, i32 %243)
  %245 = load i64, i64* %27, align 8
  %246 = call i32 @DeleteObject(i64 %245)
  %247 = load i64, i64* %20, align 8
  store i64 %247, i64* %10, align 8
  br label %248

248:                                              ; preds = %230, %208, %199, %180, %93, %62, %54
  %249 = load i64, i64* %10, align 8
  ret i64 %249
}

declare dso_local i64 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i64 @get_clip_hrgn(%struct.TYPE_17__*, i64*) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @CombineRgn(i64, i64, i64, i32) #1

declare dso_local i32 @GetRegionData(i64, i32, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @heap_alloc_zero(i32) #1

declare dso_local i64 @alpha_blend_bmp_pixels(%struct.TYPE_17__*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_15__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @SaveDC(i32) #1

declare dso_local i32 @ExtSelectClipRgn(i32, i64, i32) #1

declare dso_local i64 @alpha_blend_hdc_pixels(%struct.TYPE_17__*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @RestoreDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
