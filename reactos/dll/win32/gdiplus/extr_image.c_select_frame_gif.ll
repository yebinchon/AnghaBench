; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_select_frame_gif.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_select_frame_gif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }

@select_frame_gif.disposalW = internal constant [9 x i8] c"Disposal\00", align 1
@FALSE = common dso_local global i64 0, align 8
@GUID_MetadataFormatGCE = common dso_local global i32 0, align 4
@GIF_DISPOSE_RESTORE_TO_BKGND = common dso_local global i32 0, align 4
@GIF_DISPOSE_RESTORE_TO_PREV = common dso_local global i32 0, align 4
@GIF_DISPOSE_UNSPECIFIED = common dso_local global i32 0, align 4
@GIF_DISPOSE_DO_NOT_DISPOSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @select_frame_gif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_frame_gif(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = bitcast %struct.TYPE_8__* %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %8, align 4
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IWICBitmapDecoder_GetFrame(i32 %32, i32 %35, i32** %7)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @hresult_to_status(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %224

43:                                               ; preds = %28
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @get_gif_frame_property(i32* %44, i32* @GUID_MetadataFormatGCE, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @select_frame_gif.disposalW, i64 0, i64 0))
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @IWICBitmapFrameDecode_Release(i32* %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @GIF_DISPOSE_RESTORE_TO_BKGND, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  br label %65

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @GIF_DISPOSE_RESTORE_TO_PREV, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %2
  br label %67

67:                                               ; preds = %186, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %191

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @IWICBitmapDecoder_GetFrame(i32 %75, i32 %76, i32** %7)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @FAILED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @hresult_to_status(i32 %82)
  store i32 %83, i32* %3, align 4
  br label %224

84:                                               ; preds = %71
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @get_gif_frame_property(i32* %85, i32* @GUID_MetadataFormatGCE, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @select_frame_gif.disposalW, i64 0, i64 0))
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @GIF_DISPOSE_UNSPECIFIED, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @GIF_DISPOSE_DO_NOT_DISPOSE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90, %84
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @blit_gif_frame(%struct.TYPE_9__* %95, i32* %96, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i64 @FAILED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @hresult_to_status(i32 %105)
  store i32 %106, i32* %3, align 4
  br label %224

107:                                              ; preds = %94
  br label %186

108:                                              ; preds = %90
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @GIF_DISPOSE_RESTORE_TO_BKGND, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %185

112:                                              ; preds = %108
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = call i32 @get_gif_background_color(%struct.TYPE_9__* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i64, i64* @TRUE, align 8
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @get_gif_frame_rect(i32* %120, i32* %13, i32* %14, i32* %15, i32* %16)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @FAILED(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @hresult_to_status(i32 %126)
  store i32 %127, i32* %3, align 4
  br label %224

128:                                              ; preds = %119
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %181, %128
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %132, %133
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br label %142

142:                                              ; preds = %136, %130
  %143 = phi i1 [ false, %130 ], [ %141, %136 ]
  br i1 %143, label %144, label %184

144:                                              ; preds = %142
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %17, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %147, %153
  %155 = inttoptr i64 %154 to i32*
  store i32* %155, i32** %19, align 8
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %18, align 4
  br label %157

157:                                              ; preds = %177, %144
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %159, %160
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32, i32* %18, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br label %169

169:                                              ; preds = %163, %157
  %170 = phi i1 [ false, %157 ], [ %168, %163 ]
  br i1 %170, label %171, label %180

171:                                              ; preds = %169
  %172 = load i32, i32* %11, align 4
  %173 = load i32*, i32** %19, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %157

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %17, align 4
  br label %130

184:                                              ; preds = %142
  br label %185

185:                                              ; preds = %184, %108
  br label %186

186:                                              ; preds = %185, %107
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @IWICBitmapFrameDecode_Release(i32* %187)
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %67

191:                                              ; preds = %67
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @IWICBitmapDecoder_GetFrame(i32 %195, i32 %196, i32** %7)
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i64 @FAILED(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %191
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @hresult_to_status(i32 %202)
  store i32 %203, i32* %3, align 4
  br label %224

204:                                              ; preds = %191
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %206 = load i32*, i32** %7, align 8
  %207 = load i32, i32* %8, align 4
  %208 = icmp eq i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @blit_gif_frame(%struct.TYPE_9__* %205, i32* %206, i32 %209)
  store i32 %210, i32* %12, align 4
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @IWICBitmapFrameDecode_Release(i32* %211)
  %213 = load i32, i32* %12, align 4
  %214 = call i64 @FAILED(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %204
  %217 = load i32, i32* %12, align 4
  %218 = call i32 @hresult_to_status(i32 %217)
  store i32 %218, i32* %3, align 4
  br label %224

219:                                              ; preds = %204
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* @Ok, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %219, %216, %201, %125, %104, %81, %40
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @IWICBitmapDecoder_GetFrame(i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @hresult_to_status(i32) #1

declare dso_local i32 @get_gif_frame_property(i32*, i32*, i8*) #1

declare dso_local i32 @IWICBitmapFrameDecode_Release(i32*) #1

declare dso_local i32 @blit_gif_frame(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @get_gif_background_color(%struct.TYPE_9__*) #1

declare dso_local i32 @get_gif_frame_rect(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
