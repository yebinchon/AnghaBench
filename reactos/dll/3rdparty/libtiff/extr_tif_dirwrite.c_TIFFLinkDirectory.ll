; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFLinkDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFLinkDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i8*, i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@TIFFLinkDirectory.module = internal constant [18 x i8] c"TIFFLinkDirectory\00", align 16
@SEEK_END = common dso_local global i32 0, align 4
@TIFF_INSUBIFD = common dso_local global i32 0, align 4
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error writing SubIFD directory link\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error writing TIFF header\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error fetching directory count\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error fetching directory link\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Sanity check on tag count failed, likely corrupt TIFF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @TIFFLinkDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFLinkDirectory(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load i32, i32* @SEEK_END, align 4
  %17 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %15, i32 0, i32 %16)
  %18 = add nsw i32 %17, 1
  %19 = and i32 %18, -2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TIFF_INSUBIFD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %127

28:                                               ; preds = %1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TIFF_BIGTIFF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TIFF_SWAB, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = call i32 @TIFFSwabLong(i32* %4)
  br label %47

47:                                               ; preds = %45, %35
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %48, i32 %51, i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = call i32 @WriteOK(%struct.TYPE_13__* %54, i32* %4, i32 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @TIFFErrorExt(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

62:                                               ; preds = %47
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %70, align 8
  br label %80

73:                                               ; preds = %62
  %74 = load i32, i32* @TIFF_INSUBIFD, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %68
  store i32 1, i32* %2, align 4
  br label %388

81:                                               ; preds = %28
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %5, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TIFF_SWAB, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = call i32 @TIFFSwabLong8(i32* %5)
  br label %93

93:                                               ; preds = %91, %81
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %94, i32 %97, i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = call i32 @WriteOK(%struct.TYPE_13__* %100, i32* %5, i32 8)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %93
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @TIFFErrorExt(i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

108:                                              ; preds = %93
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %110, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 8
  store i32 %118, i32* %116, align 8
  br label %126

119:                                              ; preds = %108
  %120 = load i32, i32* @TIFF_INSUBIFD, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %119, %114
  store i32 1, i32* %2, align 4
  br label %388

127:                                              ; preds = %1
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TIFF_BIGTIFF, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %257, label %134

134:                                              ; preds = %127
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %6, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TIFF_SWAB, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = call i32 @TIFFSwabLong(i32* %6)
  br label %146

146:                                              ; preds = %144, %134
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %146
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i64 %157, i64* %161, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = load i32, i32* @SEEK_SET, align 4
  %164 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %162, i32 4, i32 %163)
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = call i32 @WriteOK(%struct.TYPE_13__* %165, i32* %6, i32 4)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %153
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @TIFFErrorExt(i32 %171, i8* %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

176:                                              ; preds = %153
  store i32 1, i32* %2, align 4
  br label %388

177:                                              ; preds = %146
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %177, %254
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @SeekOK(%struct.TYPE_13__* %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %191 = call i32 @ReadOK(%struct.TYPE_13__* %190, i32* %8, i32 2)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @TIFFErrorExt(i32 %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

198:                                              ; preds = %189
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @TIFF_SWAB, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = call i32 @TIFFSwabShort(i32* %8)
  br label %207

207:                                              ; preds = %205, %198
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 2
  %211 = load i32, i32* %8, align 4
  %212 = mul nsw i32 %211, 12
  %213 = add nsw i32 %210, %212
  %214 = load i32, i32* @SEEK_SET, align 4
  %215 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %208, i32 %213, i32 %214)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %217 = call i32 @ReadOK(%struct.TYPE_13__* %216, i32* %9, i32 4)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %207
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @TIFFErrorExt(i32 %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

224:                                              ; preds = %207
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @TIFF_SWAB, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = call i32 @TIFFSwabLong(i32* %9)
  br label %233

233:                                              ; preds = %231, %224
  %234 = load i32, i32* %9, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %254

236:                                              ; preds = %233
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, 2
  %240 = load i32, i32* %8, align 4
  %241 = mul nsw i32 %240, 12
  %242 = add nsw i32 %239, %241
  %243 = load i32, i32* @SEEK_SET, align 4
  %244 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %237, i32 %242, i32 %243)
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = call i32 @WriteOK(%struct.TYPE_13__* %245, i32* %6, i32 4)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %236
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @TIFFErrorExt(i32 %251, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

253:                                              ; preds = %236
  br label %256

254:                                              ; preds = %233
  %255 = load i32, i32* %9, align 4
  store i32 %255, i32* %7, align 4
  br label %184

256:                                              ; preds = %253
  br label %387

257:                                              ; preds = %127
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %10, align 4
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @TIFF_SWAB, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %257
  %268 = call i32 @TIFFSwabLong8(i32* %10)
  br label %269

269:                                              ; preds = %267, %257
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %299

276:                                              ; preds = %269
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  store i32 %279, i32* %283, align 8
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %285 = load i32, i32* @SEEK_SET, align 4
  %286 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %284, i32 8, i32 %285)
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %288 = call i32 @WriteOK(%struct.TYPE_13__* %287, i32* %10, i32 8)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %276
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @TIFFErrorExt(i32 %293, i8* %296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

298:                                              ; preds = %276
  store i32 1, i32* %2, align 4
  br label %388

299:                                              ; preds = %269
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %11, align 4
  br label %305

305:                                              ; preds = %299, %384
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %307 = load i32, i32* %11, align 4
  %308 = call i32 @SeekOK(%struct.TYPE_13__* %306, i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %305
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %312 = call i32 @ReadOK(%struct.TYPE_13__* %311, i32* %12, i32 8)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %310, %305
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @TIFFErrorExt(i32 %317, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

319:                                              ; preds = %310
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @TIFF_SWAB, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %319
  %327 = call i32 @TIFFSwabLong8(i32* %12)
  br label %328

328:                                              ; preds = %326, %319
  %329 = load i32, i32* %12, align 4
  %330 = icmp sgt i32 %329, 65535
  br i1 %330, label %331, label %336

331:                                              ; preds = %328
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @TIFFErrorExt(i32 %334, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

336:                                              ; preds = %328
  %337 = load i32, i32* %12, align 4
  store i32 %337, i32* %13, align 4
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %339 = load i32, i32* %11, align 4
  %340 = add nsw i32 %339, 8
  %341 = load i32, i32* %13, align 4
  %342 = mul nsw i32 %341, 20
  %343 = add nsw i32 %340, %342
  %344 = load i32, i32* @SEEK_SET, align 4
  %345 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %338, i32 %343, i32 %344)
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %347 = call i32 @ReadOK(%struct.TYPE_13__* %346, i32* %14, i32 8)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %354, label %349

349:                                              ; preds = %336
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @TIFFErrorExt(i32 %352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

354:                                              ; preds = %336
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @TIFF_SWAB, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %354
  %362 = call i32 @TIFFSwabLong8(i32* %14)
  br label %363

363:                                              ; preds = %361, %354
  %364 = load i32, i32* %14, align 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %384

366:                                              ; preds = %363
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %368 = load i32, i32* %11, align 4
  %369 = add nsw i32 %368, 8
  %370 = load i32, i32* %13, align 4
  %371 = mul nsw i32 %370, 20
  %372 = add nsw i32 %369, %371
  %373 = load i32, i32* @SEEK_SET, align 4
  %374 = call i32 @TIFFSeekFile(%struct.TYPE_13__* %367, i32 %372, i32 %373)
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %376 = call i32 @WriteOK(%struct.TYPE_13__* %375, i32* %10, i32 8)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %383, label %378

378:                                              ; preds = %366
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @TIFFErrorExt(i32 %381, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFLinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %388

383:                                              ; preds = %366
  br label %386

384:                                              ; preds = %363
  %385 = load i32, i32* %14, align 4
  store i32 %385, i32* %11, align 4
  br label %305

386:                                              ; preds = %383
  br label %387

387:                                              ; preds = %386, %256
  store i32 1, i32* %2, align 4
  br label %388

388:                                              ; preds = %387, %378, %349, %331, %314, %298, %290, %248, %219, %193, %176, %168, %126, %103, %80, %57
  %389 = load i32, i32* %2, align 4
  ret i32 %389
}

declare dso_local i32 @TIFFSeekFile(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @WriteOK(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @TIFFSwabLong8(i32*) #1

declare dso_local i32 @SeekOK(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ReadOK(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @TIFFSwabShort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
