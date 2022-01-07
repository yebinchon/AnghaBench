; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/more/extr_more.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/more/extr_more.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@StdOut = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@hStdIn = common dso_local global i64 0, align 8
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@hStdOut = common dso_local global i8* null, align 8
@StdIn = common dso_local global i32 0, align 4
@UTF8Text = common dso_local global i32 0, align 4
@INVALID_CP = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 67, i32 79, i32 78, i32 73, i32 78, i32 36, i32 0], align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@hKeyboard = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 110, i32 111, i32 32, i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 10, i32 0], align 4
@hFile = common dso_local global i64 0, align 8
@dwFileSize = common dso_local global i64 0, align 8
@dwSumReadChars = common dso_local global i64 0, align 8
@dwSumReadBytes = common dso_local global i64 0, align 8
@ENCODING_ANSI = common dso_local global i64 0, align 8
@PagePrompt = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@IDS_FILE_ACCESS = common dso_local global i32 0, align 4
@INVALID_FILE_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i32] [i32 69, i32 82, i32 82, i32 79, i32 82, i32 58, i32 32, i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 115, i32 105, i32 122, i32 101, i32 33, i32 10, i32 0], align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@ENCODING_UTF16LE = common dso_local global i64 0, align 8
@ENCODING_UTF16BE = common dso_local global i64 0, align 8
@FileCacheBufferSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %22 = load i32, i32* @StdOut, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %24 = ptrtoint %struct.TYPE_5__* %6 to i32
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %25, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  %30 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %31 = call i8* @GetStdHandle(i32 %30)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* @hStdIn, align 8
  %33 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %34 = call i8* @GetStdHandle(i32 %33)
  store i8* %34, i8** @hStdOut, align 8
  %35 = load i32, i32* @StdIn, align 4
  %36 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %37 = call i8* @GetStdHandle(i32 %36)
  %38 = load i32, i32* @UTF8Text, align 4
  %39 = load i32, i32* @INVALID_CP, align 4
  %40 = call i32 @ConStreamInit(i32 %35, i8* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @StdOut, align 4
  %42 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %43 = call i8* @GetStdHandle(i32 %42)
  %44 = load i32, i32* @UTF8Text, align 4
  %45 = load i32, i32* @INVALID_CP, align 4
  %46 = call i32 @ConStreamInit(i32 %41, i8* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @StdErr, align 4
  %48 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %49 = call i8* @GetStdHandle(i32 %48)
  %50 = load i32, i32* @UTF8Text, align 4
  %51 = load i32, i32* @INVALID_CP, align 4
  %52 = call i32 @ConStreamInit(i32 %47, i8* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %65

55:                                               ; preds = %2
  %56 = load i32**, i32*** %5, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @wcscmp(i32* %58, i8* bitcast ([3 x i32]* @.str to i8*))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @StdOut, align 4
  %63 = load i32, i32* @IDS_USAGE, align 4
  %64 = call i32 @ConResPuts(i32 %62, i32 %63)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

65:                                               ; preds = %55, %2
  %66 = load i32, i32* @GENERIC_READ, align 4
  %67 = load i32, i32* @GENERIC_WRITE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FILE_SHARE_READ, align 4
  %70 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @OPEN_EXISTING, align 4
  %73 = call i64 @CreateFileW(i8* bitcast ([7 x i32]* @.str.1 to i8*), i32 %68, i32 %71, i32* null, i32 %72, i32 0, i32* null)
  store i64 %73, i64* @hKeyboard, align 8
  %74 = load i64, i64* @hKeyboard, align 8
  %75 = call i32 @FlushConsoleInputBuffer(i64 %74)
  %76 = load i32, i32* @StdIn, align 4
  %77 = load i64, i64* @hKeyboard, align 8
  %78 = call i32 @ConStreamSetOSHandle(i32 %76, i64 %77)
  %79 = call i32 (...) @GetProcessHeap()
  %80 = call i32* @HeapAlloc(i32 %79, i32 0, i32 4096)
  store i32* %80, i32** %13, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %65
  %84 = load i32, i32* @StdErr, align 4
  %85 = call i32 @ConPuts(i32 %84, i8* bitcast ([18 x i32]* @.str.2 to i8*))
  %86 = load i64, i64* @hKeyboard, align 8
  %87 = call i32 @CloseHandle(i64 %86)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

88:                                               ; preds = %65
  %89 = load i32, i32* %4, align 4
  %90 = icmp sle i32 %89, 1
  br i1 %90, label %91, label %140

91:                                               ; preds = %88
  %92 = load i64, i64* @hStdIn, align 8
  store i64 %92, i64* @hFile, align 8
  store i64 0, i64* @dwFileSize, align 8
  store i64 0, i64* @dwSumReadChars, align 8
  store i64 0, i64* @dwSumReadBytes, align 8
  %93 = load i64, i64* @ENCODING_ANSI, align 8
  store i64 %93, i64* %11, align 8
  %94 = load i32, i32* @PagePrompt, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = call i64 @ConPutsPaging(%struct.TYPE_6__* %7, i32 %94, i32 %95, i8* bitcast ([1 x i32]* @.str.3 to i8*))
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %260

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %137, %100
  %102 = load i64, i64* @hFile, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = call i64 @FileGetString(i64 %102, i64 %103, i32* %104, i32 4096, i32** %14, i64* %15, i64* %16, i64* %17)
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i64, i64* %16, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %17, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %108, %101
  br label %139

115:                                              ; preds = %111
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* @dwSumReadBytes, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* @dwSumReadBytes, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* @dwSumReadChars, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* @dwSumReadChars, align 8
  %122 = load i32, i32* @PagePrompt, align 4
  %123 = load i32, i32* @FALSE, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = load i64, i64* %17, align 8
  %126 = call i64 @ConWritePaging(%struct.TYPE_6__* %7, i32 %122, i32 %123, i32* %124, i64 %125)
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %115
  br label %260

130:                                              ; preds = %115
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %9, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i64, i64* %16, align 8
  %136 = icmp sgt i64 %135, 0
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i1 [ false, %131 ], [ %136, %134 ]
  br i1 %138, label %101, label %139

139:                                              ; preds = %137, %114
  br label %260

140:                                              ; preds = %88
  store i32 1, i32* %8, align 4
  br label %141

141:                                              ; preds = %256, %140
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %259

145:                                              ; preds = %141
  %146 = load i32**, i32*** %5, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @ARRAYSIZE(i8* %29)
  %152 = call i32 @GetFullPathNameW(i32* %150, i32 %151, i8* %29, i32* null)
  %153 = load i32, i32* @GENERIC_READ, align 4
  %154 = load i32, i32* @FILE_SHARE_READ, align 4
  %155 = load i32, i32* @OPEN_EXISTING, align 4
  %156 = call i64 @CreateFileW(i8* %29, i32 %153, i32 %154, i32* null, i32 %155, i32 0, i32* null)
  store i64 %156, i64* @hFile, align 8
  %157 = load i64, i64* @hFile, align 8
  %158 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %145
  %161 = load i32, i32* @StdErr, align 4
  %162 = load i32, i32* @IDS_FILE_ACCESS, align 4
  %163 = call i32 @ConResPrintf(i32 %161, i32 %162, i8* %29)
  br label %256

164:                                              ; preds = %145
  %165 = load i64, i64* @hFile, align 8
  %166 = call i64 @GetFileSize(i64 %165, i32* null)
  store i64 %166, i64* @dwFileSize, align 8
  %167 = load i64, i64* @dwFileSize, align 8
  %168 = load i64, i64* @INVALID_FILE_SIZE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load i32, i32* @StdErr, align 4
  %172 = call i32 @ConPuts(i32 %171, i8* bitcast ([27 x i32]* @.str.4 to i8*))
  %173 = load i64, i64* @hFile, align 8
  %174 = call i32 @CloseHandle(i64 %173)
  br label %256

175:                                              ; preds = %164
  %176 = load i64, i64* @hFile, align 8
  %177 = load i32, i32* @FILE_BEGIN, align 4
  %178 = call i32 @SetFilePointer(i64 %176, i64 0, i32* null, i32 %177)
  %179 = load i64, i64* @hFile, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = call i64 @ReadFile(i64 %179, i32* %180, i32 4096, i64* %16, i32* null)
  store i64 %181, i64* %9, align 8
  %182 = load i32*, i32** %13, align 8
  %183 = load i64, i64* %16, align 8
  %184 = call i32 @IsDataUnicode(i32* %182, i64 %183, i64* %11, i64* %12)
  %185 = load i64, i64* @hFile, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load i32, i32* @FILE_BEGIN, align 4
  %188 = call i32 @SetFilePointer(i64 %185, i64 %186, i32* null, i32 %187)
  store i64 0, i64* @dwSumReadChars, align 8
  store i64 0, i64* @dwSumReadBytes, align 8
  %189 = load i32, i32* @PagePrompt, align 4
  %190 = load i32, i32* @TRUE, align 4
  %191 = call i64 @ConPutsPaging(%struct.TYPE_6__* %7, i32 %189, i32 %190, i8* bitcast ([1 x i32]* @.str.3 to i8*))
  store i64 %191, i64* %10, align 8
  %192 = load i64, i64* %10, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %175
  %195 = load i64, i64* @hFile, align 8
  %196 = call i32 @CloseHandle(i64 %195)
  br label %260

197:                                              ; preds = %175
  br label %198

198:                                              ; preds = %251, %197
  %199 = load i64, i64* @hFile, align 8
  %200 = load i64, i64* %11, align 8
  %201 = load i32*, i32** %13, align 8
  %202 = call i64 @FileGetString(i64 %199, i64 %200, i32* %201, i32 4096, i32** %14, i64* %15, i64* %16, i64* %17)
  store i64 %202, i64* %9, align 8
  %203 = load i64, i64* %9, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = load i64, i64* %16, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = load i64, i64* %17, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208, %205, %198
  br label %253

212:                                              ; preds = %208
  %213 = load i64, i64* %16, align 8
  %214 = load i64, i64* @dwSumReadBytes, align 8
  %215 = add nsw i64 %214, %213
  store i64 %215, i64* @dwSumReadBytes, align 8
  %216 = load i64, i64* %17, align 8
  %217 = load i64, i64* @dwSumReadChars, align 8
  %218 = add nsw i64 %217, %216
  store i64 %218, i64* @dwSumReadChars, align 8
  %219 = load i64, i64* %11, align 8
  %220 = load i64, i64* @ENCODING_UTF16LE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %212
  %223 = load i64, i64* %11, align 8
  %224 = load i64, i64* @ENCODING_UTF16BE, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %222, %212
  %227 = load i32, i32* @PagePrompt, align 4
  %228 = load i32, i32* @FALSE, align 4
  %229 = load i32*, i32** %13, align 8
  %230 = load i64, i64* %17, align 8
  %231 = call i64 @ConWritePaging(%struct.TYPE_6__* %7, i32 %227, i32 %228, i32* %229, i64 %230)
  store i64 %231, i64* %10, align 8
  br label %238

232:                                              ; preds = %222
  %233 = load i32, i32* @PagePrompt, align 4
  %234 = load i32, i32* @FALSE, align 4
  %235 = load i32*, i32** %14, align 8
  %236 = load i64, i64* %17, align 8
  %237 = call i64 @ConWritePaging(%struct.TYPE_6__* %7, i32 %233, i32 %234, i32* %235, i64 %236)
  store i64 %237, i64* %10, align 8
  br label %238

238:                                              ; preds = %232, %226
  %239 = load i64, i64* %10, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load i64, i64* @hFile, align 8
  %243 = call i32 @CloseHandle(i64 %242)
  br label %260

244:                                              ; preds = %238
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %9, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i64, i64* %16, align 8
  %250 = icmp sgt i64 %249, 0
  br label %251

251:                                              ; preds = %248, %245
  %252 = phi i1 [ false, %245 ], [ %250, %248 ]
  br i1 %252, label %198, label %253

253:                                              ; preds = %251, %211
  %254 = load i64, i64* @hFile, align 8
  %255 = call i32 @CloseHandle(i64 %254)
  br label %256

256:                                              ; preds = %253, %170, %160
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  br label %141

259:                                              ; preds = %141
  br label %260

260:                                              ; preds = %259, %241, %194, %139, %129, %99
  %261 = load i32*, i32** %14, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = call i32 (...) @GetProcessHeap()
  %265 = load i32*, i32** %14, align 8
  %266 = call i32 @HeapFree(i32 %264, i32 0, i32* %265)
  br label %267

267:                                              ; preds = %263, %260
  %268 = call i32 (...) @GetProcessHeap()
  %269 = load i32*, i32** %13, align 8
  %270 = call i32 @HeapFree(i32 %268, i32 0, i32* %269)
  %271 = load i64, i64* @hKeyboard, align 8
  %272 = call i32 @CloseHandle(i64 %271)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

273:                                              ; preds = %267, %83, %61
  %274 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %274)
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @GetStdHandle(i32) #2

declare dso_local i32 @ConStreamInit(i32, i8*, i32, i32) #2

declare dso_local i64 @wcscmp(i32*, i8*) #2

declare dso_local i32 @ConResPuts(i32, i32) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @FlushConsoleInputBuffer(i64) #2

declare dso_local i32 @ConStreamSetOSHandle(i32, i64) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @ConPuts(i32, i8*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @ConPutsPaging(%struct.TYPE_6__*, i32, i32, i8*) #2

declare dso_local i64 @FileGetString(i64, i64, i32*, i32, i32**, i64*, i64*, i64*) #2

declare dso_local i64 @ConWritePaging(%struct.TYPE_6__*, i32, i32, i32*, i64) #2

declare dso_local i32 @GetFullPathNameW(i32*, i32, i8*, i32*) #2

declare dso_local i32 @ARRAYSIZE(i8*) #2

declare dso_local i32 @ConResPrintf(i32, i32, i8*) #2

declare dso_local i64 @GetFileSize(i64, i32*) #2

declare dso_local i32 @SetFilePointer(i64, i64, i32*, i32) #2

declare dso_local i64 @ReadFile(i64, i32*, i32, i64*, i32*) #2

declare dso_local i32 @IsDataUnicode(i32*, i64, i64*, i64*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
