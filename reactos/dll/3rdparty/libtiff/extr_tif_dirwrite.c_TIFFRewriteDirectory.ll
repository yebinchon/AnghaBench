; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFRewriteDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFRewriteDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i8*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@TIFFRewriteDirectory.module = internal constant [21 x i8] c"TIFFRewriteDirectory\00", align 16
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error updating TIFF header\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error fetching directory count\00", align 1
@TIFF_SWAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error fetching directory link\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Sanity check on tag count failed, likely corrupt TIFF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFRewriteDirectory(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = call i32 @TIFFWriteDirectory(%struct.TYPE_14__* %18)
  store i32 %19, i32* %2, align 4
  br label %287

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TIFF_BIGTIFF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %151, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %27
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @TIFFSeekFile(%struct.TYPE_14__* %44, i32 4, i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = bitcast i64* %51 to i32*
  %53 = call i32 @WriteOK(%struct.TYPE_14__* %47, i32* %52, i32 4)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %37
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @TIFFErrorExt(i32 %58, i8* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

63:                                               ; preds = %37
  br label %150

64:                                               ; preds = %27
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %147
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @SeekOK(%struct.TYPE_14__* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = call i32 @ReadOK(%struct.TYPE_14__* %77, i32* %5, i32 2)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @TIFFErrorExt(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFRewriteDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

85:                                               ; preds = %76
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TIFF_SWAB, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 @TIFFSwabShort(i32* %5)
  br label %94

94:                                               ; preds = %92, %85
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 2
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %98, 12
  %100 = add nsw i32 %97, %99
  %101 = load i32, i32* @SEEK_SET, align 4
  %102 = call i32 @TIFFSeekFile(%struct.TYPE_14__* %95, i32 %100, i32 %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = call i32 @ReadOK(%struct.TYPE_14__* %103, i32* %6, i32 4)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %94
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @TIFFErrorExt(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFRewriteDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

111:                                              ; preds = %94
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TIFF_SWAB, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = call i32 @TIFFSwabLong(i32* %6)
  br label %120

120:                                              ; preds = %118, %111
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 2
  %131 = load i32, i32* %5, align 4
  %132 = mul nsw i32 %131, 12
  %133 = add nsw i32 %130, %132
  %134 = load i32, i32* @SEEK_SET, align 4
  %135 = call i32 @TIFFSeekFile(%struct.TYPE_14__* %128, i32 %133, i32 %134)
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = call i32 @WriteOK(%struct.TYPE_14__* %136, i32* %7, i32 4)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %127
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @TIFFErrorExt(i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFRewriteDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

144:                                              ; preds = %127
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  br label %149

147:                                              ; preds = %120
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %4, align 4
  br label %71

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %149, %63
  br label %284

151:                                              ; preds = %20
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %188

161:                                              ; preds = %151
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %169 = load i32, i32* @SEEK_SET, align 4
  %170 = call i32 @TIFFSeekFile(%struct.TYPE_14__* %168, i32 8, i32 %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = bitcast i64* %175 to i32*
  %177 = call i32 @WriteOK(%struct.TYPE_14__* %171, i32* %176, i32 8)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %161
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @TIFFErrorExt(i32 %182, i8* %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

187:                                              ; preds = %161
  br label %283

188:                                              ; preds = %151
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %188, %280
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @SeekOK(%struct.TYPE_14__* %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %202 = call i32 @ReadOK(%struct.TYPE_14__* %201, i32* %9, i32 8)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %200, %195
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @TIFFErrorExt(i32 %207, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFRewriteDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

209:                                              ; preds = %200
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @TIFF_SWAB, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = call i32 @TIFFSwabLong8(i32* %9)
  br label %218

218:                                              ; preds = %216, %209
  %219 = load i32, i32* %9, align 4
  %220 = icmp sgt i32 %219, 65535
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @TIFFErrorExt(i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFRewriteDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

226:                                              ; preds = %218
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %10, align 4
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 8
  %231 = load i32, i32* %10, align 4
  %232 = mul nsw i32 %231, 20
  %233 = add nsw i32 %230, %232
  %234 = load i32, i32* @SEEK_SET, align 4
  %235 = call i32 @TIFFSeekFile(%struct.TYPE_14__* %228, i32 %233, i32 %234)
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %237 = call i32 @ReadOK(%struct.TYPE_14__* %236, i32* %11, i32 8)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %226
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @TIFFErrorExt(i32 %242, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFRewriteDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

244:                                              ; preds = %226
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @TIFF_SWAB, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %244
  %252 = call i32 @TIFFSwabLong8(i32* %11)
  br label %253

253:                                              ; preds = %251, %244
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp eq i64 %255, %258
  br i1 %259, label %260, label %280

260:                                              ; preds = %253
  store i32 0, i32* %12, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 8
  %264 = load i32, i32* %10, align 4
  %265 = mul nsw i32 %264, 20
  %266 = add nsw i32 %263, %265
  %267 = load i32, i32* @SEEK_SET, align 4
  %268 = call i32 @TIFFSeekFile(%struct.TYPE_14__* %261, i32 %266, i32 %267)
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %270 = call i32 @WriteOK(%struct.TYPE_14__* %269, i32* %12, i32 8)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %260
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @TIFFErrorExt(i32 %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFRewriteDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

277:                                              ; preds = %260
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 0
  store i64 0, i64* %279, align 8
  br label %282

280:                                              ; preds = %253
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %8, align 4
  br label %195

282:                                              ; preds = %277
  br label %283

283:                                              ; preds = %282, %187
  br label %284

284:                                              ; preds = %283, %150
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %286 = call i32 @TIFFWriteDirectory(%struct.TYPE_14__* %285)
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %284, %272, %239, %221, %204, %179, %139, %106, %80, %55, %17
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @TIFFWriteDirectory(%struct.TYPE_14__*) #1

declare dso_local i32 @TIFFSeekFile(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @WriteOK(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @SeekOK(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ReadOK(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @TIFFSwabShort(i32*) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @TIFFSwabLong8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
