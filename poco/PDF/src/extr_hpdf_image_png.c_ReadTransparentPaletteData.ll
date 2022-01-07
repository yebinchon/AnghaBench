; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_ReadTransparentPaletteData.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_ReadTransparentPaletteData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_FAILD_TO_ALLOC_MEM = common dso_local global i64 0, align 8
@HPDF_INVALID_PNG_IMAGE = common dso_local global i64 0, align 8
@HPDF_FILE_IO_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i32, i32*, i32*, i32)* @ReadTransparentPaletteData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadTransparentPaletteData(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i64, i64* @HPDF_OK, align 8
  store i64 %21, i64* %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @png_get_image_height(i32 %22, i32 %23)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @png_get_image_width(i32 %25, i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i8* @HPDF_GetMem(i32 %30, i32 %34)
  %36 = bitcast i8* %35 to i32**
  store i32** %36, i32*** %17, align 8
  %37 = load i32**, i32*** %17, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %6
  %40 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %40, i64* %7, align 8
  br label %198

41:                                               ; preds = %6
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @png_get_rowbytes(i32 %42, i32 %43)
  store i32 %44, i32* %20, align 4
  store i64 0, i64* %15, align 8
  br label %45

45:                                               ; preds = %89, %41
  %46 = load i64, i64* %15, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %20, align 4
  %55 = call i8* @HPDF_GetMem(i32 %53, i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load i32**, i32*** %17, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  store i32* %56, i32** %59, align 8
  %60 = load i32**, i32*** %17, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %88, label %65

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i64, i64* %15, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32**, i32*** %17, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 (i32, ...) @HPDF_FreeMem(i32 %72, i32* %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i64, i64* %15, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %15, align 8
  br label %66

81:                                               ; preds = %66
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32**, i32*** %17, align 8
  %86 = call i32 (i32, ...) @HPDF_FreeMem(i32 %84, i32** %85)
  %87 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %87, i64* %7, align 8
  br label %198

88:                                               ; preds = %50
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %15, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %15, align 8
  br label %45

92:                                               ; preds = %45
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32**, i32*** %17, align 8
  %96 = call i32 @png_read_image(i32 %94, i32** %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @HPDF_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i64, i64* @HPDF_INVALID_PNG_IMAGE, align 8
  store i64 %105, i64* %14, align 8
  br label %173

106:                                              ; preds = %93
  store i64 0, i64* %16, align 8
  br label %107

107:                                              ; preds = %169, %106
  %108 = load i64, i64* %16, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ult i64 %108, %110
  br i1 %111, label %112, label %172

112:                                              ; preds = %107
  store i64 0, i64* %15, align 8
  br label %113

113:                                              ; preds = %151, %112
  %114 = load i64, i64* %15, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %118, label %154

118:                                              ; preds = %113
  %119 = load i32**, i32*** %17, align 8
  %120 = load i64, i64* %16, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %118
  %129 = load i32*, i32** %12, align 8
  %130 = load i32**, i32*** %17, align 8
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %15, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %129, i64 %137
  %139 = load i32, i32* %138, align 4
  br label %141

140:                                              ; preds = %118
  br label %141

141:                                              ; preds = %140, %128
  %142 = phi i32 [ %139, %128 ], [ 255, %140 ]
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %16, align 8
  %147 = mul i64 %145, %146
  %148 = load i64, i64* %15, align 8
  %149 = add i64 %147, %148
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  store i32 %142, i32* %150, align 4
  br label %151

151:                                              ; preds = %141
  %152 = load i64, i64* %15, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %15, align 8
  br label %113

154:                                              ; preds = %113
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32**, i32*** %17, align 8
  %159 = load i64, i64* %16, align 8
  %160 = getelementptr inbounds i32*, i32** %158, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %19, align 4
  %163 = call i64 @HPDF_Stream_Write(i32 %157, i32* %161, i32 %162)
  %164 = load i64, i64* @HPDF_OK, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = load i64, i64* @HPDF_FILE_IO_ERROR, align 8
  store i64 %167, i64* %14, align 8
  br label %173

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %16, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %16, align 8
  br label %107

172:                                              ; preds = %107
  br label %173

173:                                              ; preds = %172, %166, %104
  store i64 0, i64* %15, align 8
  br label %174

174:                                              ; preds = %188, %173
  %175 = load i64, i64* %15, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp ult i64 %175, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %174
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32**, i32*** %17, align 8
  %184 = load i64, i64* %15, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 (i32, ...) @HPDF_FreeMem(i32 %182, i32* %186)
  br label %188

188:                                              ; preds = %179
  %189 = load i64, i64* %15, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %15, align 8
  br label %174

191:                                              ; preds = %174
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32**, i32*** %17, align 8
  %196 = call i32 (i32, ...) @HPDF_FreeMem(i32 %194, i32** %195)
  %197 = load i64, i64* %14, align 8
  store i64 %197, i64* %7, align 8
  br label %198

198:                                              ; preds = %191, %81, %39
  %199 = load i64, i64* %7, align 8
  ret i64 %199
}

declare dso_local i32 @png_get_image_height(i32, i32) #1

declare dso_local i32 @png_get_image_width(i32, i32) #1

declare dso_local i8* @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @png_get_rowbytes(i32, i32) #1

declare dso_local i32 @HPDF_FreeMem(i32, ...) #1

declare dso_local i32 @png_read_image(i32, i32**) #1

declare dso_local i64 @HPDF_Stream_Write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
