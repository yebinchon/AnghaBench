; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_compressFilename_extRess.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_compressFilename_extRess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i8*, i8*, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"Warning : cannot determine input content size \0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Error reading %s \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Compression failed : %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\0DRead : %u MB   ==> %.2f%%   \00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Write error : cannot write compressed block\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"File header generation failed : %s\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Write error : cannot write header\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"End of file generation failed : %s\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Write error : cannot write end of stream\00", align 1
@stdoutmark = common dso_local global i32 0, align 4
@stdinmark = common dso_local global i32 0, align 4
@nulmark = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Remove error : %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Compressed %llu bytes into %llu bytes ==> %.2f%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i8*, i32)* @LZ4IO_compressFilename_extRess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4IO_compressFilename_extRess(%struct.TYPE_13__* %0, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %17, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %20, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32* @LZ4IO_openSrcFile(i8* %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %335

47:                                               ; preds = %5
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32* @LZ4IO_openDstFile(%struct.TYPE_13__* %48, i8* %49)
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @fclose(i32* %54)
  store i32 1, i32* %6, align 4
  br label %335

56:                                               ; preds = %47
  %57 = call i32 @memset(%struct.TYPE_14__* %21, i32 0, i32 56)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  store i32 %83, i32* %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %56
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @UTIL_getFileSize(i8* %90)
  store i64 %91, i64* %22, align 8
  %92 = load i64, i64* %22, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %22, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %89
  br label %100

100:                                              ; preds = %99, %56
  %101 = load i8*, i8** %15, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = call i64 @fread(i8* %101, i64 1, i64 %102, i32* %103)
  store i64 %104, i64* %19, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = call i64 @ferror(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 (i32, i8*, ...) @EXM_THROW(i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %100
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %18, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %111
  %119 = load i32, i32* %20, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = load i64, i64* %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @LZ4F_compressFrame_usingCDict(i32 %119, i8* %120, i64 %121, i8* %122, i64 %123, i32 %125, %struct.TYPE_14__* %21)
  store i64 %126, i64* %23, align 8
  %127 = load i64, i64* %23, align 8
  %128 = call i64 @LZ4F_isError(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %118
  %131 = load i64, i64* %23, align 8
  %132 = call i32 @LZ4F_getErrorName(i64 %131)
  %133 = call i32 (i32, i8*, ...) @EXM_THROW(i32 31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %130, %118
  %135 = load i64, i64* %23, align 8
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %11, align 8
  %137 = lshr i64 %136, 20
  %138 = trunc i64 %137 to i32
  %139 = load i64, i64* %12, align 8
  %140 = uitofp i64 %139 to double
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ne i64 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = sext i32 %145 to i64
  %147 = add i64 %141, %146
  %148 = uitofp i64 %147 to double
  %149 = fdiv double %140, %148
  %150 = fmul double %149, 1.000000e+02
  %151 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %138, double %150)
  %152 = load i8*, i8** %16, align 8
  %153 = load i64, i64* %23, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = call i64 @fwrite(i8* %152, i32 1, i64 %153, i32* %154)
  store i64 %155, i64* %24, align 8
  %156 = load i64, i64* %24, align 8
  %157 = load i64, i64* %23, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %134
  %160 = call i32 (i32, i8*, ...) @EXM_THROW(i32 32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %134
  br label %271

162:                                              ; preds = %111
  %163 = load i32, i32* %20, align 4
  %164 = load i8*, i8** %16, align 8
  %165 = load i64, i64* %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @LZ4F_compressBegin_usingCDict(i32 %163, i8* %164, i64 %165, i32 %167, %struct.TYPE_14__* %21)
  store i64 %168, i64* %25, align 8
  %169 = load i64, i64* %25, align 8
  %170 = call i64 @LZ4F_isError(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %162
  %173 = load i64, i64* %25, align 8
  %174 = call i32 @LZ4F_getErrorName(i64 %173)
  %175 = call i32 (i32, i8*, ...) @EXM_THROW(i32 33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %172, %162
  %177 = load i8*, i8** %16, align 8
  %178 = load i64, i64* %25, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = call i64 @fwrite(i8* %177, i32 1, i64 %178, i32* %179)
  store i64 %180, i64* %26, align 8
  %181 = load i64, i64* %26, align 8
  %182 = load i64, i64* %25, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = call i32 (i32, i8*, ...) @EXM_THROW(i32 34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %176
  %187 = load i64, i64* %25, align 8
  %188 = load i64, i64* %12, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %12, align 8
  br label %190

190:                                              ; preds = %230, %186
  %191 = load i64, i64* %19, align 8
  %192 = icmp ugt i64 %191, 0
  br i1 %192, label %193, label %238

193:                                              ; preds = %190
  %194 = load i32, i32* %20, align 4
  %195 = load i8*, i8** %16, align 8
  %196 = load i64, i64* %17, align 8
  %197 = load i8*, i8** %15, align 8
  %198 = load i64, i64* %19, align 8
  %199 = call i64 @LZ4F_compressUpdate(i32 %194, i8* %195, i64 %196, i8* %197, i64 %198, i32* null)
  store i64 %199, i64* %27, align 8
  %200 = load i64, i64* %27, align 8
  %201 = call i64 @LZ4F_isError(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %193
  %204 = load i64, i64* %27, align 8
  %205 = call i32 @LZ4F_getErrorName(i64 %204)
  %206 = call i32 (i32, i8*, ...) @EXM_THROW(i32 35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %203, %193
  %208 = load i64, i64* %27, align 8
  %209 = load i64, i64* %12, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %12, align 8
  %211 = load i64, i64* %11, align 8
  %212 = lshr i64 %211, 20
  %213 = trunc i64 %212 to i32
  %214 = load i64, i64* %12, align 8
  %215 = uitofp i64 %214 to double
  %216 = load i64, i64* %11, align 8
  %217 = uitofp i64 %216 to double
  %218 = fdiv double %215, %217
  %219 = fmul double %218, 1.000000e+02
  %220 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %213, double %219)
  %221 = load i8*, i8** %16, align 8
  %222 = load i64, i64* %27, align 8
  %223 = load i32*, i32** %14, align 8
  %224 = call i64 @fwrite(i8* %221, i32 1, i64 %222, i32* %223)
  store i64 %224, i64* %28, align 8
  %225 = load i64, i64* %28, align 8
  %226 = load i64, i64* %27, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %207
  %229 = call i32 (i32, i8*, ...) @EXM_THROW(i32 36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %207
  %231 = load i8*, i8** %15, align 8
  %232 = load i64, i64* %18, align 8
  %233 = load i32*, i32** %13, align 8
  %234 = call i64 @fread(i8* %231, i64 1, i64 %232, i32* %233)
  store i64 %234, i64* %19, align 8
  %235 = load i64, i64* %19, align 8
  %236 = load i64, i64* %11, align 8
  %237 = add i64 %236, %235
  store i64 %237, i64* %11, align 8
  br label %190

238:                                              ; preds = %190
  %239 = load i32*, i32** %13, align 8
  %240 = call i64 @ferror(i32* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i8*, i8** %8, align 8
  %244 = call i32 (i32, i8*, ...) @EXM_THROW(i32 37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %242, %238
  %246 = load i32, i32* %20, align 4
  %247 = load i8*, i8** %16, align 8
  %248 = load i64, i64* %17, align 8
  %249 = call i64 @LZ4F_compressEnd(i32 %246, i8* %247, i64 %248, i32* null)
  store i64 %249, i64* %25, align 8
  %250 = load i64, i64* %25, align 8
  %251 = call i64 @LZ4F_isError(i64 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %245
  %254 = load i64, i64* %25, align 8
  %255 = call i32 @LZ4F_getErrorName(i64 %254)
  %256 = call i32 (i32, i8*, ...) @EXM_THROW(i32 38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %253, %245
  %258 = load i8*, i8** %16, align 8
  %259 = load i64, i64* %25, align 8
  %260 = load i32*, i32** %14, align 8
  %261 = call i64 @fwrite(i8* %258, i32 1, i64 %259, i32* %260)
  store i64 %261, i64* %29, align 8
  %262 = load i64, i64* %29, align 8
  %263 = load i64, i64* %25, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %257
  %266 = call i32 (i32, i8*, ...) @EXM_THROW(i32 39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %257
  %268 = load i64, i64* %25, align 8
  %269 = load i64, i64* %12, align 8
  %270 = add i64 %269, %268
  store i64 %270, i64* %12, align 8
  br label %271

271:                                              ; preds = %267, %161
  %272 = load i32*, i32** %13, align 8
  %273 = call i32 @fclose(i32* %272)
  %274 = load i8*, i8** %9, align 8
  %275 = load i32, i32* @stdoutmark, align 4
  %276 = call i64 @strcmp(i8* %274, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %271
  %279 = load i32*, i32** %14, align 8
  %280 = call i32 @fclose(i32* %279)
  br label %281

281:                                              ; preds = %278, %271
  %282 = load i8*, i8** %8, align 8
  %283 = load i32, i32* @stdinmark, align 4
  %284 = call i64 @strcmp(i8* %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %303

286:                                              ; preds = %281
  %287 = load i8*, i8** %9, align 8
  %288 = load i32, i32* @stdoutmark, align 4
  %289 = call i64 @strcmp(i8* %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %303

291:                                              ; preds = %286
  %292 = load i8*, i8** %9, align 8
  %293 = load i32, i32* @nulmark, align 4
  %294 = call i64 @strcmp(i8* %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %291
  %297 = load i8*, i8** %8, align 8
  %298 = call i64 @UTIL_getFileStat(i8* %297, i32* %30)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load i8*, i8** %9, align 8
  %302 = call i32 @UTIL_setFileStat(i8* %301, i32* %30)
  br label %303

303:                                              ; preds = %300, %296, %291, %286, %281
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %303
  %309 = load i8*, i8** %8, align 8
  %310 = call i64 @remove(i8* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load i8*, i8** %8, align 8
  %314 = load i32, i32* @errno, align 4
  %315 = call i32 @strerror(i32 %314)
  %316 = call i32 (i32, i8*, ...) @EXM_THROW(i32 40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %313, i32 %315)
  br label %317

317:                                              ; preds = %312, %308
  br label %318

318:                                              ; preds = %317, %303
  %319 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %320 = load i64, i64* %11, align 8
  %321 = load i64, i64* %12, align 8
  %322 = load i64, i64* %12, align 8
  %323 = uitofp i64 %322 to double
  %324 = load i64, i64* %11, align 8
  %325 = load i64, i64* %11, align 8
  %326 = icmp ne i64 %325, 0
  %327 = xor i1 %326, true
  %328 = zext i1 %327 to i32
  %329 = sext i32 %328 to i64
  %330 = add i64 %324, %329
  %331 = uitofp i64 %330 to double
  %332 = fdiv double %323, %331
  %333 = fmul double %332, 1.000000e+02
  %334 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i64 %320, i64 %321, double %333)
  store i32 0, i32* %6, align 4
  br label %335

335:                                              ; preds = %318, %53, %46
  %336 = load i32, i32* %6, align 4
  ret i32 %336
}

declare dso_local i32* @LZ4IO_openSrcFile(i8*) #1

declare dso_local i32* @LZ4IO_openDstFile(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @UTIL_getFileSize(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i64 @fread(i8*, i64, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, ...) #1

declare dso_local i64 @LZ4F_compressFrame_usingCDict(i32, i8*, i64, i8*, i64, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @LZ4F_isError(i64) #1

declare dso_local i32 @LZ4F_getErrorName(i64) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i32, double) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i64 @LZ4F_compressBegin_usingCDict(i32, i8*, i64, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @LZ4F_compressUpdate(i32, i8*, i64, i8*, i64, i32*) #1

declare dso_local i64 @LZ4F_compressEnd(i32, i8*, i64, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @UTIL_getFileStat(i8*, i32*) #1

declare dso_local i32 @UTIL_setFileStat(i8*, i32*) #1

declare dso_local i64 @remove(i8*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
