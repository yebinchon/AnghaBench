; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_getCompressedFileInfo.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_getCompressedFileInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { double, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32, i32, i32, i32 }

@LZ4IO_format_not_known = common dso_local global i64 0, align 8
@LZ4F_HEADER_SIZE_MAX = common dso_local global i32 0, align 4
@LZ4IO_INIT_FRAMEINFO = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAGICNUMBER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Unrecognized header : Magic Number unreadable\00", align 1
@lz4Frame = common dso_local global i64 0, align 8
@LZ4F_HEADER_SIZE_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Error reading %s\00", align 1
@LZ4F_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"    %6llu %14s %5s %8s\00", align 1
@LZ4IO_frameTypeNames = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"XXH32\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c" %20llu %20llu %9.2f%%\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" %20llu %20s %9s \0A\00", align 1
@LZ4IO_LZ4F_OK = common dso_local global i64 0, align 8
@legacyFrame = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"    %6llu %14s %5s %8s %20llu %20s %9s\0A\00", align 1
@skippableFrame = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"Stream error : skippable size unreadable\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Stream error : cannot skip skippable area\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"    %6llu %14s %5s %8s %20u %20s %9s\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SkippableFrame\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Stream followed by undecodable data \00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"at position %i \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*)* @LZ4IO_getCompressedFileInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4IO_getCompressedFileInfo(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [5 x i8], align 1
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %24 = load i64, i64* @LZ4IO_format_not_known, align 8
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* @LZ4F_HEADER_SIZE_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %6, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32* @LZ4IO_openSrcFile(i8* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @UTIL_getFileSize(i8* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %363, %2
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @feof(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %372

40:                                               ; preds = %35
  %41 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 bitcast (%struct.TYPE_6__* @LZ4IO_INIT_FRAMEINFO to i8*), i64 32, i1 false)
  %42 = load i64, i64* @MAGICNUMBER_SIZE, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %8, align 8
  %45 = call i8* @fread(i8* %28, i32 1, i32 %43, i32* %44)
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %372

50:                                               ; preds = %40
  %51 = load i64, i64* @LZ4IO_format_not_known, align 8
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @MAGICNUMBER_SIZE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (i32, i8*, ...) @EXM_THROW(i32 40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = call i8* @LZ4IO_readLE32(i8* %28)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @LZ4IO_isSkippableMagicNumber(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 128, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %346 [
    i32 129, label %66
    i32 130, label %256
    i32 128, label %297
  ]

66:                                               ; preds = %64
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @lz4Frame, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i64, i64* @MAGICNUMBER_SIZE, align 8
  %78 = getelementptr inbounds i8, i8* %28, i64 %77
  %79 = load i32, i32* @LZ4F_HEADER_SIZE_MIN, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @MAGICNUMBER_SIZE, align 8
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = load i32*, i32** %8, align 8
  %85 = call i8* @fread(i8* %78, i32 1, i32 %83, i32* %84)
  %86 = ptrtoint i8* %85 to i64
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @ferror(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %76
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 (i32, i8*, ...) @EXM_THROW(i32 71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = bitcast i8* %28 to i8**
  %98 = load i32, i32* @LZ4F_HEADER_SIZE_MIN, align 4
  %99 = call i64 @LZ4F_headerSize(i8** %97, i32 %98)
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @LZ4F_isError(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %255, label %103

103:                                              ; preds = %96
  %104 = load i64, i64* %13, align 8
  %105 = load i32, i32* @LZ4F_HEADER_SIZE_MIN, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* @MAGICNUMBER_SIZE, align 8
  %108 = add i64 %106, %107
  %109 = icmp ugt i64 %104, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %103
  %111 = load i32, i32* @LZ4F_HEADER_SIZE_MIN, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %28, i64 %112
  %114 = load i64, i64* %13, align 8
  %115 = load i32, i32* @LZ4F_HEADER_SIZE_MIN, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 %114, %116
  %118 = trunc i64 %117 to i32
  %119 = load i32*, i32** %8, align 8
  %120 = call i8* @fread(i8* %113, i32 1, i32 %118, i32* %119)
  %121 = ptrtoint i8* %120 to i64
  store i64 %121, i64* %14, align 8
  %122 = load i64, i64* %14, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %110
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @ferror(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124, %110
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 (i32, i8*, ...) @EXM_THROW(i32 72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %128, %124
  br label %132

132:                                              ; preds = %131, %103
  %133 = load i32, i32* @LZ4F_VERSION, align 4
  %134 = call i64 @LZ4F_createDecompressionContext(i32** %15, i32 %133)
  %135 = call i32 @LZ4F_isError(i64 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %254, label %138

138:                                              ; preds = %132
  %139 = load i32*, i32** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %141 = call i64 @LZ4F_getFrameInfo(i32* %139, %struct.TYPE_8__* %140, i8* %28, i64* %13)
  %142 = call i32 @LZ4F_isError(i64 %141)
  store i32 %142, i32* %16, align 4
  %143 = load i32*, i32** %15, align 8
  %144 = call i32 @LZ4F_freeDecompressionContext(i32* %143)
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %253, label %147

147:                                              ; preds = %138
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %152, %155
  br i1 %156, label %167, label %157

157:                                              ; preds = %147
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %162, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %157, %147
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %172, %167, %157
  %176 = load i32*, i32** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @LZ4IO_skipBlocksData(i32* %176, i32 %179, i32 %182)
  store i64 %183, i64* %17, align 8
  %184 = load i64, i64* %17, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %252

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %194 = call i32 @LZ4IO_blockTypeID(i32 %189, i32 %192, i8* %193)
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, 1
  %199 = load i32*, i32** @LZ4IO_frameTypeNames, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %211 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %198, i32 %203, i8* %204, i8* %210)
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load double, double* %213, align 8
  %215 = fcmp une double %214, 0.000000e+00
  br i1 %215, label %216, label %243

216:                                              ; preds = %186
  %217 = load i64, i64* %17, align 8
  %218 = load i64, i64* %13, align 8
  %219 = add i64 %217, %218
  %220 = uitofp i64 %219 to double
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load double, double* %222, align 8
  %224 = fdiv double %220, %223
  %225 = fmul double %224, 1.000000e+02
  store double %225, double* %19, align 8
  %226 = load i64, i64* %17, align 8
  %227 = load i64, i64* %13, align 8
  %228 = add i64 %226, %227
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load double, double* %230, align 8
  %232 = load double, double* %19, align 8
  %233 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %228, double %231, double %232)
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load double, double* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load double, double* %240, align 8
  %242 = fadd double %241, %238
  store double %242, double* %240, align 8
  br label %250

243:                                              ; preds = %186
  %244 = load i64, i64* %17, align 8
  %245 = load i64, i64* %13, align 8
  %246 = add i64 %244, %245
  %247 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 2
  store i32 0, i32* %249, align 8
  br label %250

250:                                              ; preds = %243, %216
  %251 = load i64, i64* @LZ4IO_LZ4F_OK, align 8
  store i64 %251, i64* %5, align 8
  br label %252

252:                                              ; preds = %250, %175
  br label %253

253:                                              ; preds = %252, %138
  br label %254

254:                                              ; preds = %253, %132
  br label %255

255:                                              ; preds = %254, %96
  br label %358

256:                                              ; preds = %64
  %257 = load i64, i64* @legacyFrame, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i64 %257, i64* %258, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @legacyFrame, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %256
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 4
  store i32 0, i32* %272, align 8
  br label %273

273:                                              ; preds = %270, %265, %256
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 3
  store i32 0, i32* %275, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 2
  store i32 0, i32* %277, align 8
  %278 = load i32*, i32** %8, align 8
  %279 = call i64 @LZ4IO_skipLegacyBlocksData(i32* %278)
  store i64 %279, i64* %20, align 8
  %280 = load i64, i64* %20, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %296

282:                                              ; preds = %273
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %285, 1
  %287 = load i32*, i32** @LZ4IO_frameTypeNames, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i64, i64* %20, align 8
  %293 = add i64 %292, 4
  %294 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %286, i32 %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 %293, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %295 = load i64, i64* @LZ4IO_LZ4F_OK, align 8
  store i64 %295, i64* %5, align 8
  br label %296

296:                                              ; preds = %282, %273
  br label %358

297:                                              ; preds = %64
  %298 = load i64, i64* @skippableFrame, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i64 %298, i64* %299, align 8
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @skippableFrame, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %297
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 4
  store i32 0, i32* %313, align 8
  br label %314

314:                                              ; preds = %311, %306, %297
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 3
  store i32 0, i32* %316, align 4
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 2
  store i32 0, i32* %318, align 8
  %319 = load i32*, i32** %8, align 8
  %320 = call i8* @fread(i8* %28, i32 1, i32 4, i32* %319)
  %321 = ptrtoint i8* %320 to i64
  store i64 %321, i64* %11, align 8
  %322 = load i64, i64* %11, align 8
  %323 = icmp ne i64 %322, 4
  br i1 %323, label %324, label %326

324:                                              ; preds = %314
  %325 = call i32 (i32, i8*, ...) @EXM_THROW(i32 42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %326

326:                                              ; preds = %324, %314
  %327 = call i8* @LZ4IO_readLE32(i8* %28)
  %328 = ptrtoint i8* %327 to i32
  store i32 %328, i32* %21, align 4
  %329 = load i32*, i32** %8, align 8
  %330 = load i32, i32* %21, align 4
  %331 = load i32, i32* @SEEK_CUR, align 4
  %332 = call i32 @fseek_u32(i32* %329, i32 %330, i32 %331)
  store i32 %332, i32* %22, align 4
  %333 = load i32, i32* %22, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %326
  %336 = call i32 (i32, i8*, ...) @EXM_THROW(i32 43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %337

337:                                              ; preds = %335, %326
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = add nsw i64 %340, 1
  %342 = load i32, i32* %21, align 4
  %343 = add i32 %342, 8
  %344 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i64 %341, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %345 = load i64, i64* @LZ4IO_LZ4F_OK, align 8
  store i64 %345, i64* %5, align 8
  br label %358

346:                                              ; preds = %64
  %347 = load i32*, i32** %8, align 8
  %348 = call i64 @ftell(i32* %347)
  store i64 %348, i64* %23, align 8
  %349 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %350 = load i64, i64* %23, align 8
  %351 = icmp ne i64 %350, -1
  br i1 %351, label %352, label %356

352:                                              ; preds = %346
  %353 = load i64, i64* %23, align 8
  %354 = trunc i64 %353 to i32
  %355 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %354)
  br label %356

356:                                              ; preds = %352, %346
  %357 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %358

358:                                              ; preds = %356, %337, %296, %255
  %359 = load i64, i64* %5, align 8
  %360 = load i64, i64* @LZ4IO_LZ4F_OK, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %358
  br label %372

363:                                              ; preds = %358
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 1
  %366 = bitcast %struct.TYPE_6__* %365 to i8*
  %367 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %366, i8* align 8 %367, i64 32, i1 false)
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 %370, 1
  store i64 %371, i64* %369, align 8
  br label %35

372:                                              ; preds = %362, %49, %35
  %373 = load i32*, i32** %8, align 8
  %374 = call i32 @fclose(i32* %373)
  %375 = load i64, i64* %5, align 8
  %376 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %376)
  ret i64 %375
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @LZ4IO_openSrcFile(i8*) #2

declare dso_local i32 @UTIL_getFileSize(i8*) #2

declare dso_local i32 @feof(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @EXM_THROW(i32, i8*, ...) #2

declare dso_local i8* @LZ4IO_readLE32(i8*) #2

declare dso_local i64 @LZ4IO_isSkippableMagicNumber(i32) #2

declare dso_local i32 @ferror(i32*) #2

declare dso_local i64 @LZ4F_headerSize(i8**, i32) #2

declare dso_local i32 @LZ4F_isError(i64) #2

declare dso_local i64 @LZ4F_createDecompressionContext(i32**, i32) #2

declare dso_local i64 @LZ4F_getFrameInfo(i32*, %struct.TYPE_8__*, i8*, i64*) #2

declare dso_local i32 @LZ4F_freeDecompressionContext(i32*) #2

declare dso_local i64 @LZ4IO_skipBlocksData(i32*, i32, i32) #2

declare dso_local i32 @LZ4IO_blockTypeID(i32, i32, i8*) #2

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #2

declare dso_local i64 @LZ4IO_skipLegacyBlocksData(i32*) #2

declare dso_local i32 @fseek_u32(i32*, i32, i32) #2

declare dso_local i64 @ftell(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
