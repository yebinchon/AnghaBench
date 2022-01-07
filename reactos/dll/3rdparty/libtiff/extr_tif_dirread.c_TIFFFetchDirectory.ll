; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFFetchDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFFetchDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }

@TIFFFetchDirectory.module = internal constant [19 x i8] c"TIFFFetchDirectory\00", align 16
@.str = private unnamed_addr constant [40 x i8] c"%s: Seek error accessing TIFF directory\00", align 1
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Can not read TIFF directory count\00", align 1
@TIFF_SWAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"Sanity check on directory count failed, this is probably not a valid IFD offset\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"to read TIFF directory\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%.100s: Can not read TIFF directory\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Can not read TIFF directory count\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"Sanity check on directory count failed, zero tag directories not supported\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Can not read TIFF directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, %struct.TYPE_12__**, i32*)* @TIFFFetchDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFFetchDirectory(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_12__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %24 = call i32 @assert(%struct.TYPE_12__** %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = call i32 @isMapped(%struct.TYPE_13__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %195, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @SeekOK(%struct.TYPE_13__* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %5, align 4
  br label %578

51:                                               ; preds = %36
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TIFF_BIGTIFF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %88, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = call i32 @ReadOK(%struct.TYPE_13__* %59, i32* %11, i32 4)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 0, i32* %5, align 4
  br label %578

70:                                               ; preds = %58
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TIFF_SWAB, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 @TIFFSwabShort(i32* %11)
  br label %79

79:                                               ; preds = %77, %70
  %80 = load i32, i32* %11, align 4
  %81 = icmp sgt i32 %80, 4096
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %578

87:                                               ; preds = %79
  store i32 12, i32* %12, align 4
  br label %119

88:                                               ; preds = %51
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = call i32 @ReadOK(%struct.TYPE_13__* %89, i32* %17, i32 4)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  store i32 0, i32* %5, align 4
  br label %578

100:                                              ; preds = %88
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TIFF_SWAB, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = call i32 @TIFFSwabLong8(i32* %17)
  br label %109

109:                                              ; preds = %107, %100
  %110 = load i32, i32* %17, align 4
  %111 = icmp sgt i32 %110, 4096
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %578

117:                                              ; preds = %109
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %11, align 4
  store i32 20, i32* %12, align 4
  br label %119

119:                                              ; preds = %117, %87
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i8* @_TIFFCheckMalloc(%struct.TYPE_13__* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i8* %123, i8** %10, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %578

127:                                              ; preds = %119
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = mul nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = trunc i64 %134 to i32
  %136 = call i32 @ReadOK(%struct.TYPE_13__* %128, i32* %130, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %127
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @_TIFFfree(i8* %146)
  store i32 0, i32* %5, align 4
  br label %578

148:                                              ; preds = %127
  %149 = load i32*, i32** %9, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %194

151:                                              ; preds = %148
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @TIFF_BIGTIFF, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %151
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %160 = call i32 @ReadOK(%struct.TYPE_13__* %159, i32* %18, i32 4)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  store i32 0, i32* %18, align 4
  br label %163

163:                                              ; preds = %162, %158
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @TIFF_SWAB, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = call i32 @TIFFSwabLong(i32* %18)
  br label %172

172:                                              ; preds = %170, %163
  %173 = load i32, i32* %18, align 4
  %174 = load i32*, i32** %9, align 8
  store i32 %173, i32* %174, align 4
  br label %193

175:                                              ; preds = %151
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @ReadOK(%struct.TYPE_13__* %176, i32* %177, i32 4)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load i32*, i32** %9, align 8
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %180, %175
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @TIFF_SWAB, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @TIFFSwabLong8(i32* %190)
  br label %192

192:                                              ; preds = %189, %182
  br label %193

193:                                              ; preds = %192, %172
  br label %194

194:                                              ; preds = %193, %148
  br label %460

195:                                              ; preds = %32
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %20, align 8
  %200 = load i64, i64* %20, align 8
  %201 = trunc i64 %200 to i32
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %201, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %195
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %578

211:                                              ; preds = %195
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @TIFF_BIGTIFF, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %265, label %218

218:                                              ; preds = %211
  %219 = load i64, i64* %20, align 8
  %220 = add i64 %219, 4
  store i64 %220, i64* %19, align 8
  %221 = load i64, i64* %19, align 8
  %222 = load i64, i64* %20, align 8
  %223 = icmp slt i64 %221, %222
  br i1 %223, label %233, label %224

224:                                              ; preds = %218
  %225 = load i64, i64* %19, align 8
  %226 = icmp slt i64 %225, 4
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  %228 = load i64, i64* %19, align 8
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = icmp sgt i64 %228, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227, %224, %218
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %578

238:                                              ; preds = %227
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %20, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @_TIFFmemcpy(i32* %11, i64 %243, i32 4)
  br label %245

245:                                              ; preds = %238
  %246 = load i64, i64* %20, align 8
  %247 = add i64 %246, 4
  store i64 %247, i64* %20, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @TIFF_SWAB, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %245
  %255 = call i32 @TIFFSwabShort(i32* %11)
  br label %256

256:                                              ; preds = %254, %245
  %257 = load i32, i32* %11, align 4
  %258 = icmp sgt i32 %257, 4096
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %578

264:                                              ; preds = %256
  store i32 12, i32* %12, align 4
  br label %313

265:                                              ; preds = %211
  %266 = load i64, i64* %20, align 8
  %267 = add i64 %266, 4
  store i64 %267, i64* %19, align 8
  %268 = load i64, i64* %19, align 8
  %269 = load i64, i64* %20, align 8
  %270 = icmp slt i64 %268, %269
  br i1 %270, label %280, label %271

271:                                              ; preds = %265
  %272 = load i64, i64* %19, align 8
  %273 = icmp slt i64 %272, 4
  br i1 %273, label %280, label %274

274:                                              ; preds = %271
  %275 = load i64, i64* %19, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp sgt i64 %275, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %274, %271, %265
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %283, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %578

285:                                              ; preds = %274
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %20, align 8
  %290 = add nsw i64 %288, %289
  %291 = call i32 @_TIFFmemcpy(i32* %21, i64 %290, i32 4)
  br label %292

292:                                              ; preds = %285
  %293 = load i64, i64* %20, align 8
  %294 = add i64 %293, 4
  store i64 %294, i64* %20, align 8
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @TIFF_SWAB, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %292
  %302 = call i32 @TIFFSwabLong8(i32* %21)
  br label %303

303:                                              ; preds = %301, %292
  %304 = load i32, i32* %21, align 4
  %305 = icmp sgt i32 %304, 4096
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %309, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %578

311:                                              ; preds = %303
  %312 = load i32, i32* %21, align 4
  store i32 %312, i32* %11, align 4
  store i32 20, i32* %12, align 4
  br label %313

313:                                              ; preds = %311, %264
  %314 = load i32, i32* %11, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %313
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %319, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %578

321:                                              ; preds = %313
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %12, align 4
  %325 = call i8* @_TIFFCheckMalloc(%struct.TYPE_13__* %322, i32 %323, i32 %324, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i8* %325, i8** %10, align 8
  %326 = load i8*, i8** %10, align 8
  %327 = icmp eq i8* %326, null
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  store i32 0, i32* %5, align 4
  br label %578

329:                                              ; preds = %321
  %330 = load i64, i64* %20, align 8
  %331 = load i32, i32* %11, align 4
  %332 = load i32, i32* %12, align 4
  %333 = mul nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %330, %334
  store i64 %335, i64* %19, align 8
  %336 = load i64, i64* %19, align 8
  %337 = load i64, i64* %20, align 8
  %338 = icmp slt i64 %336, %337
  br i1 %338, label %352, label %339

339:                                              ; preds = %329
  %340 = load i64, i64* %19, align 8
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %12, align 4
  %343 = mul nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = icmp slt i64 %340, %344
  br i1 %345, label %352, label %346

346:                                              ; preds = %339
  %347 = load i64, i64* %19, align 8
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = icmp sgt i64 %347, %350
  br i1 %351, label %352, label %359

352:                                              ; preds = %346, %339, %329
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %355, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFFetchDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %357 = load i8*, i8** %10, align 8
  %358 = call i32 @_TIFFfree(i8* %357)
  store i32 0, i32* %5, align 4
  br label %578

359:                                              ; preds = %346
  %360 = load i8*, i8** %10, align 8
  %361 = bitcast i8* %360 to i32*
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 3
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* %20, align 8
  %366 = add nsw i64 %364, %365
  %367 = load i32, i32* %11, align 4
  %368 = load i32, i32* %12, align 4
  %369 = mul nsw i32 %367, %368
  %370 = call i32 @_TIFFmemcpy(i32* %361, i64 %366, i32 %369)
  br label %371

371:                                              ; preds = %359
  %372 = load i32*, i32** %9, align 8
  %373 = icmp ne i32* %372, null
  br i1 %373, label %374, label %459

374:                                              ; preds = %371
  %375 = load i32, i32* %11, align 4
  %376 = load i32, i32* %12, align 4
  %377 = mul nsw i32 %375, %376
  %378 = sext i32 %377 to i64
  %379 = load i64, i64* %20, align 8
  %380 = add nsw i64 %379, %378
  store i64 %380, i64* %20, align 8
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @TIFF_BIGTIFF, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %422, label %387

387:                                              ; preds = %374
  %388 = load i64, i64* %20, align 8
  %389 = add i64 %388, 4
  store i64 %389, i64* %19, align 8
  %390 = load i64, i64* %19, align 8
  %391 = load i64, i64* %20, align 8
  %392 = icmp slt i64 %390, %391
  br i1 %392, label %402, label %393

393:                                              ; preds = %387
  %394 = load i64, i64* %19, align 8
  %395 = icmp slt i64 %394, 4
  br i1 %395, label %402, label %396

396:                                              ; preds = %393
  %397 = load i64, i64* %19, align 8
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  %401 = icmp sgt i64 %397, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %396, %393, %387
  store i32 0, i32* %22, align 4
  br label %410

403:                                              ; preds = %396
  %404 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* %20, align 8
  %408 = add nsw i64 %406, %407
  %409 = call i32 @_TIFFmemcpy(i32* %22, i64 %408, i32 4)
  br label %410

410:                                              ; preds = %403, %402
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @TIFF_SWAB, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %410
  %418 = call i32 @TIFFSwabLong(i32* %22)
  br label %419

419:                                              ; preds = %417, %410
  %420 = load i32, i32* %22, align 4
  %421 = load i32*, i32** %9, align 8
  store i32 %420, i32* %421, align 4
  br label %458

422:                                              ; preds = %374
  %423 = load i64, i64* %20, align 8
  %424 = add i64 %423, 4
  store i64 %424, i64* %19, align 8
  %425 = load i64, i64* %19, align 8
  %426 = load i64, i64* %20, align 8
  %427 = icmp slt i64 %425, %426
  br i1 %427, label %437, label %428

428:                                              ; preds = %422
  %429 = load i64, i64* %19, align 8
  %430 = icmp slt i64 %429, 4
  br i1 %430, label %437, label %431

431:                                              ; preds = %428
  %432 = load i64, i64* %19, align 8
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = icmp sgt i64 %432, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %431, %428, %422
  %438 = load i32*, i32** %9, align 8
  store i32 0, i32* %438, align 4
  br label %447

439:                                              ; preds = %431
  %440 = load i32*, i32** %9, align 8
  %441 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* %20, align 8
  %445 = add nsw i64 %443, %444
  %446 = call i32 @_TIFFmemcpy(i32* %440, i64 %445, i32 4)
  br label %447

447:                                              ; preds = %439, %437
  %448 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @TIFF_SWAB, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %447
  %455 = load i32*, i32** %9, align 8
  %456 = call i32 @TIFFSwabLong8(i32* %455)
  br label %457

457:                                              ; preds = %454, %447
  br label %458

458:                                              ; preds = %457, %419
  br label %459

459:                                              ; preds = %458, %371
  br label %460

460:                                              ; preds = %459, %194
  %461 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %462 = load i32, i32* %11, align 4
  %463 = call i8* @_TIFFCheckMalloc(%struct.TYPE_13__* %461, i32 %462, i32 24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %464 = bitcast i8* %463 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %464, %struct.TYPE_12__** %13, align 8
  %465 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %466 = icmp eq %struct.TYPE_12__* %465, null
  br i1 %466, label %467, label %470

467:                                              ; preds = %460
  %468 = load i8*, i8** %10, align 8
  %469 = call i32 @_TIFFfree(i8* %468)
  store i32 0, i32* %5, align 4
  br label %578

470:                                              ; preds = %460
  %471 = load i8*, i8** %10, align 8
  %472 = bitcast i8* %471 to i32*
  store i32* %472, i32** %14, align 8
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %473, %struct.TYPE_12__** %15, align 8
  store i32 0, i32* %16, align 4
  br label %474

474:                                              ; preds = %569, %470
  %475 = load i32, i32* %16, align 4
  %476 = load i32, i32* %11, align 4
  %477 = icmp slt i32 %475, %476
  br i1 %477, label %478, label %572

478:                                              ; preds = %474
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @TIFF_SWAB, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = load i32*, i32** %14, align 8
  %487 = call i32 @TIFFSwabShort(i32* %486)
  br label %488

488:                                              ; preds = %485, %478
  %489 = load i32*, i32** %14, align 8
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 0
  store i32 %490, i32* %492, align 8
  %493 = load i32*, i32** %14, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 4
  store i32* %494, i32** %14, align 8
  %495 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @TIFF_SWAB, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %504

501:                                              ; preds = %488
  %502 = load i32*, i32** %14, align 8
  %503 = call i32 @TIFFSwabShort(i32* %502)
  br label %504

504:                                              ; preds = %501, %488
  %505 = load i32*, i32** %14, align 8
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %507, i32 0, i32 1
  store i32 %506, i32* %508, align 4
  %509 = load i32*, i32** %14, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 4
  store i32* %510, i32** %14, align 8
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* @TIFF_BIGTIFF, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %541, label %517

517:                                              ; preds = %504
  %518 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %519 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* @TIFF_SWAB, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %527

524:                                              ; preds = %517
  %525 = load i32*, i32** %14, align 8
  %526 = call i32 @TIFFSwabLong(i32* %525)
  br label %527

527:                                              ; preds = %524, %517
  %528 = load i32*, i32** %14, align 8
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %530, i32 0, i32 2
  store i32 %529, i32* %531, align 8
  %532 = load i32*, i32** %14, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 4
  store i32* %533, i32** %14, align 8
  %534 = load i32*, i32** %14, align 8
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %536, i32 0, i32 3
  %538 = bitcast %struct.TYPE_11__* %537 to i32*
  store i32 %535, i32* %538, align 8
  %539 = load i32*, i32** %14, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 4
  store i32* %540, i32** %14, align 8
  br label %566

541:                                              ; preds = %504
  %542 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %543 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* @TIFF_SWAB, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %551

548:                                              ; preds = %541
  %549 = load i32*, i32** %14, align 8
  %550 = call i32 @TIFFSwabLong8(i32* %549)
  br label %551

551:                                              ; preds = %548, %541
  %552 = load i32*, i32** %14, align 8
  %553 = call i8* @TIFFReadUInt64(i32* %552)
  %554 = ptrtoint i8* %553 to i32
  %555 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %556 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %555, i32 0, i32 2
  store i32 %554, i32* %556, align 8
  %557 = load i32*, i32** %14, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 4
  store i32* %558, i32** %14, align 8
  %559 = load i32*, i32** %14, align 8
  %560 = call i8* @TIFFReadUInt64(i32* %559)
  %561 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 3
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 0
  store i8* %560, i8** %563, align 8
  %564 = load i32*, i32** %14, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 4
  store i32* %565, i32** %14, align 8
  br label %566

566:                                              ; preds = %551, %527
  %567 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %568 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %567, i32 1
  store %struct.TYPE_12__* %568, %struct.TYPE_12__** %15, align 8
  br label %569

569:                                              ; preds = %566
  %570 = load i32, i32* %16, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %16, align 4
  br label %474

572:                                              ; preds = %474
  %573 = load i8*, i8** %10, align 8
  %574 = call i32 @_TIFFfree(i8* %573)
  %575 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %576 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %575, %struct.TYPE_12__** %576, align 8
  %577 = load i32, i32* %11, align 4
  store i32 %577, i32* %5, align 4
  br label %578

578:                                              ; preds = %572, %467, %352, %328, %316, %306, %280, %259, %233, %206, %138, %126, %112, %92, %82, %62, %43
  %579 = load i32, i32* %5, align 4
  ret i32 %579
}

declare dso_local i32 @assert(%struct.TYPE_12__**) #1

declare dso_local i32 @isMapped(%struct.TYPE_13__*) #1

declare dso_local i32 @SeekOK(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i32 @ReadOK(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @TIFFSwabShort(i32*) #1

declare dso_local i32 @TIFFSwabLong8(i32*) #1

declare dso_local i8* @_TIFFCheckMalloc(%struct.TYPE_13__*, i32, i32, i8*) #1

declare dso_local i32 @_TIFFfree(i8*) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @_TIFFmemcpy(i32*, i64, i32) #1

declare dso_local i8* @TIFFReadUInt64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
