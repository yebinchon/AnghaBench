; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatSearchDirectoryBufferForFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatSearchDirectoryBufferForFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [88 x i8] c"FatSearchDirectoryBufferForFile() DirectoryBuffer = 0x%x EntryCount = %d FileName = %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ATTR_LONG_NAME = common dso_local global i32 0, align 4
@ATTR_VOLUMENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"MSDOS Directory Entry:\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"FileName[11] = %c%c%c%c%c%c%c%c%c%c%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Attr = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ReservedNT = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"TimeInTenths = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"CreateTime = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"CreateDate = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"LastAccessDate = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ClusterHigh = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Time = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Date = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"ClusterLow = 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Size = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"StartCluster = 0x%x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FatSearchDirectoryBufferForFile(i32 %0, %struct.TYPE_12__* %1, i32 %2, i64* %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [265 x i64], align 16
  %15 = alloca [20 x i64], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 56
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i64*, i64** %10, align 8
  %28 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %25, i32 %26, i64* %27)
  %29 = getelementptr inbounds [20 x i64], [20 x i64]* %15, i64 0, i64 0
  %30 = call i32 @memset(i64* %29, i32 0, i32 104)
  %31 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 0
  %32 = call i32 @memset(i64* %31, i32 0, i32 2088)
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %550, %5
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %555

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = bitcast %struct.TYPE_12__* %38 to %struct.TYPE_13__*
  %40 = bitcast %struct.TYPE_13__* %18 to i8*
  %41 = bitcast %struct.TYPE_13__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 32, i1 false)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %43 = call i32 @FatSwapLFNDirEntry(%struct.TYPE_13__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = bitcast %struct.TYPE_12__* %17 to i8*
  %46 = bitcast %struct.TYPE_12__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 56, i1 false)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %48 = call i32 @FatSwapDirEntry(%struct.TYPE_12__* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  br label %557

58:                                               ; preds = %37
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, -27
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = getelementptr inbounds [20 x i64], [20 x i64]* %15, i64 0, i64 0
  %68 = call i32 @memset(i64* %67, i32 0, i32 104)
  %69 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 0
  %70 = call i32 @memset(i64* %69, i32 0, i32 2088)
  br label %550

71:                                               ; preds = %58
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ATTR_LONG_NAME, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %366

77:                                               ; preds = %71
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %550

84:                                               ; preds = %77
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 63
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 65535
  br i1 %98, label %99, label %113

99:                                               ; preds = %84
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 13
  %110 = add nsw i32 0, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %111
  store i64 %105, i64* %112, align 8
  br label %113

113:                                              ; preds = %99, %84
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 65535
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %129, 13
  %131 = add nsw i32 1, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %132
  store i64 %126, i64* %133, align 8
  br label %134

134:                                              ; preds = %120, %113
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 65535
  br i1 %140, label %141, label %155

141:                                              ; preds = %134
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %150, 13
  %152 = add nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %153
  store i64 %147, i64* %154, align 8
  br label %155

155:                                              ; preds = %141, %134
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 65535
  br i1 %161, label %162, label %176

162:                                              ; preds = %155
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %171, 13
  %173 = add nsw i32 3, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %174
  store i64 %168, i64* %175, align 8
  br label %176

176:                                              ; preds = %162, %155
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 65535
  br i1 %182, label %183, label %197

183:                                              ; preds = %176
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %192, 13
  %194 = add nsw i32 4, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %195
  store i64 %189, i64* %196, align 8
  br label %197

197:                                              ; preds = %183, %176
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 65535
  br i1 %203, label %204, label %218

204:                                              ; preds = %197
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = mul nsw i32 %213, 13
  %215 = add nsw i32 5, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %216
  store i64 %210, i64* %217, align 8
  br label %218

218:                                              ; preds = %204, %197
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 65535
  br i1 %224, label %225, label %239

225:                                              ; preds = %218
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = mul nsw i32 %234, 13
  %236 = add nsw i32 6, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %237
  store i64 %231, i64* %238, align 8
  br label %239

239:                                              ; preds = %225, %218
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 65535
  br i1 %245, label %246, label %260

246:                                              ; preds = %239
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %255, 13
  %257 = add nsw i32 7, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %258
  store i64 %252, i64* %259, align 8
  br label %260

260:                                              ; preds = %246, %239
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 3
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 65535
  br i1 %266, label %267, label %281

267:                                              ; preds = %260
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 3
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = mul nsw i32 %276, 13
  %278 = add nsw i32 8, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %279
  store i64 %273, i64* %280, align 8
  br label %281

281:                                              ; preds = %267, %260
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 4
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 65535
  br i1 %287, label %288, label %302

288:                                              ; preds = %281
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 4
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = mul nsw i32 %297, 13
  %299 = add nsw i32 9, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %300
  store i64 %294, i64* %301, align 8
  br label %302

302:                                              ; preds = %288, %281
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 5
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 65535
  br i1 %308, label %309, label %323

309:                                              ; preds = %302
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 5
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = mul nsw i32 %318, 13
  %320 = add nsw i32 10, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %321
  store i64 %315, i64* %322, align 8
  br label %323

323:                                              ; preds = %309, %302
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 3
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 65535
  br i1 %329, label %330, label %344

330:                                              ; preds = %323
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = mul nsw i32 %339, 13
  %341 = add nsw i32 11, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %342
  store i64 %336, i64* %343, align 8
  br label %344

344:                                              ; preds = %330, %323
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 3
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 65535
  br i1 %350, label %351, label %365

351:                                              ; preds = %344
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 3
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = mul nsw i32 %360, 13
  %362 = add nsw i32 12, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 %363
  store i64 %357, i64* %364, align 8
  br label %365

365:                                              ; preds = %351, %344
  br label %550

366:                                              ; preds = %71
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @ATTR_VOLUMENAME, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %366
  %374 = getelementptr inbounds [20 x i64], [20 x i64]* %15, i64 0, i64 0
  %375 = call i32 @memset(i64* %374, i32 0, i32 104)
  %376 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 0
  %377 = call i32 @memset(i64* %376, i32 0, i32 2088)
  br label %550

378:                                              ; preds = %366
  %379 = getelementptr inbounds [20 x i64], [20 x i64]* %15, i64 0, i64 0
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %381 = call i32 @FatParseShortFileName(i64* %379, %struct.TYPE_12__* %380)
  %382 = load i64*, i64** %10, align 8
  %383 = call i64 @strlen(i64* %382)
  %384 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 0
  %385 = call i64 @strlen(i64* %384)
  %386 = icmp eq i64 %383, %385
  br i1 %386, label %387, label %392

387:                                              ; preds = %378
  %388 = load i64*, i64** %10, align 8
  %389 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 0
  %390 = call i64 @_stricmp(i64* %388, i64* %389)
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %403, label %392

392:                                              ; preds = %387, %378
  %393 = load i64*, i64** %10, align 8
  %394 = call i64 @strlen(i64* %393)
  %395 = getelementptr inbounds [20 x i64], [20 x i64]* %15, i64 0, i64 0
  %396 = call i64 @strlen(i64* %395)
  %397 = icmp eq i64 %394, %396
  br i1 %397, label %398, label %545

398:                                              ; preds = %392
  %399 = load i64*, i64** %10, align 8
  %400 = getelementptr inbounds [20 x i64], [20 x i64]* %15, i64 0, i64 0
  %401 = call i64 @_stricmp(i64* %399, i64* %400)
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %545

403:                                              ; preds = %398, %387
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 0
  store i32 %406, i32* %408, align 8
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %412, i32 0, i32 1
  store i32 %411, i32* %413, align 4
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 4
  store i64 0, i64* %415, align 8
  %416 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %417 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 8
  %419 = shl i32 %418, 16
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %419, %422
  store i32 %423, i32* %16, align 4
  %424 = load i32, i32* %16, align 4
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i32 0, i32 2
  store i32 %424, i32* %426, align 8
  %427 = load i32, i32* %16, align 4
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 3
  store i32 %427, i32* %429, align 4
  %430 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 0
  %433 = load i8*, i8** %432, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 0
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 0
  %439 = load i8*, i8** %438, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 1
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 0
  %445 = load i8*, i8** %444, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 2
  %447 = load i8, i8* %446, align 1
  %448 = sext i8 %447 to i32
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 3
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 0
  %457 = load i8*, i8** %456, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 4
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 0
  %463 = load i8*, i8** %462, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 5
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 0
  %469 = load i8*, i8** %468, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 6
  %471 = load i8, i8* %470, align 1
  %472 = sext i8 %471 to i32
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 0
  %475 = load i8*, i8** %474, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 7
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 0
  %481 = load i8*, i8** %480, align 8
  %482 = getelementptr inbounds i8, i8* %481, i64 8
  %483 = load i8, i8* %482, align 1
  %484 = sext i8 %483 to i32
  %485 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 0
  %487 = load i8*, i8** %486, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 9
  %489 = load i8, i8* %488, align 1
  %490 = sext i8 %489 to i32
  %491 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 0
  %493 = load i8*, i8** %492, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 10
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %436, i32 %442, i32 %448, i32 %454, i32 %460, i32 %466, i32 %472, i32 %478, i32 %484, i32 %490, i32 %496)
  %498 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %499 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %500)
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i32 0, i32 5
  %504 = load i32, i32* %503, align 8
  %505 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %504)
  %506 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %507 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %506, i32 0, i32 6
  %508 = load i32, i32* %507, align 4
  %509 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %508)
  %510 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 7
  %512 = load i32, i32* %511, align 8
  %513 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %512)
  %514 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i32 0, i32 8
  %516 = load i32, i32* %515, align 4
  %517 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %516)
  %518 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 9
  %520 = load i32, i32* %519, align 8
  %521 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %520)
  %522 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %522, i32 0, i32 3
  %524 = load i32, i32* %523, align 8
  %525 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %524)
  %526 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %527 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %526, i32 0, i32 10
  %528 = load i32, i32* %527, align 4
  %529 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %528)
  %530 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %530, i32 0, i32 11
  %532 = load i32, i32* %531, align 8
  %533 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %532)
  %534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 4
  %537 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %536)
  %538 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %539 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 4
  %541 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %540)
  %542 = load i32, i32* %16, align 4
  %543 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %542)
  %544 = load i32, i32* @TRUE, align 4
  store i32 %544, i32* %6, align 4
  br label %557

545:                                              ; preds = %398, %392
  %546 = getelementptr inbounds [20 x i64], [20 x i64]* %15, i64 0, i64 0
  %547 = call i32 @memset(i64* %546, i32 0, i32 104)
  %548 = getelementptr inbounds [265 x i64], [265 x i64]* %14, i64 0, i64 0
  %549 = call i32 @memset(i64* %548, i32 0, i32 2088)
  br label %550

550:                                              ; preds = %545, %373, %365, %83, %66
  %551 = load i32, i32* %13, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %13, align 4
  %553 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %554 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %553, i64 1
  store %struct.TYPE_12__* %554, %struct.TYPE_12__** %8, align 8
  br label %33

555:                                              ; preds = %33
  %556 = load i32, i32* @FALSE, align 4
  store i32 %556, i32* %6, align 4
  br label %557

557:                                              ; preds = %555, %403, %56
  %558 = load i32, i32* %6, align 4
  ret i32 %558
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FatSwapLFNDirEntry(%struct.TYPE_13__*) #1

declare dso_local i32 @FatSwapDirEntry(%struct.TYPE_12__*) #1

declare dso_local i32 @FatParseShortFileName(i64*, %struct.TYPE_12__*) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i64 @_stricmp(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
