; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_ReadBlock.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_ReadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64*, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@AVIERR_MEMORY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AVIERR_FILEREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c": block %d not found at 0x%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c": Index says: '%4.4s'(0x%08X) size 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c": Data  says: '%4.4s'(0x%08X) size 0x%08X\0A\00", align 1
@AVIERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i32*, i64)* @AVIFILE_ReadBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_ReadBlock(%struct.TYPE_9__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %4
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %37, %41
  br label %43

43:                                               ; preds = %36, %4
  %44 = phi i1 [ false, %4 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %43
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %57, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %56, %43
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %66, %56
  %75 = load i32*, i32** %8, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %247

77:                                               ; preds = %74
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 16
  store i64 %79, i64* %9, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = icmp eq i64* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %77
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %134

90:                                               ; preds = %84, %77
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @max(i64 %91, i32 %95)
  store i64 %96, i64* %10, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = icmp eq i64* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %90
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i64, i64* %10, align 8
  %104 = call i64* @HeapAlloc(i32 %102, i32 0, i64 %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i64* %104, i64** %106, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = icmp ne i64* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %112, i32* %5, align 4
  br label %282

113:                                              ; preds = %101
  br label %130

114:                                              ; preds = %90
  %115 = call i32 (...) @GetProcessHeap()
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i8* @HeapReAlloc(i32 %115, i32 0, i64* %118, i64 %119)
  store i8* %120, i8** %11, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %124, i32* %5, align 4
  br label %282

125:                                              ; preds = %114
  %126 = load i8*, i8** %11, align 8
  %127 = bitcast i8* %126 to i64*
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i64* %127, i64** %129, align 8
  br label %130

130:                                              ; preds = %125, %113
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %84
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* @SEEK_SET, align 4
  %148 = call i32 @mmioSeek(i32* %139, i64 %146, i32 %147)
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %152

150:                                              ; preds = %134
  %151 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %151, i32* %5, align 4
  br label %282

152:                                              ; preds = %134
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = bitcast i64* %160 to i32*
  %162 = load i64, i64* %9, align 8
  %163 = call i64 @mmioRead(i32* %157, i32* %161, i64 %162)
  %164 = load i64, i64* %9, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %152
  %167 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %167, i32* %5, align 4
  br label %282

168:                                              ; preds = %152
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %173, %180
  br i1 %181, label %196, label %182

182:                                              ; preds = %168
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %187, %194
  br i1 %195, label %196, label %246

196:                                              ; preds = %182, %168
  %197 = load i64, i64* %7, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = call i32 (i8*, i8*, i64, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %198, i64 %205)
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = load i64, i64* %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = bitcast i64* %212 to i8*
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load i64, i64* %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 (i8*, i8*, i64, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %213, i64 %220, i64 %227)
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 0
  %233 = bitcast i64* %232 to i8*
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i64*, i64** %235, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 1
  %243 = load i64, i64* %242, align 8
  %244 = call i32 (i8*, i8*, i64, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %233, i64 %238, i64 %243)
  %245 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %245, i32* %5, align 4
  br label %282

246:                                              ; preds = %182
  br label %280

247:                                              ; preds = %74
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = load i64, i64* %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %259, 16
  %261 = load i32, i32* @SEEK_SET, align 4
  %262 = call i32 @mmioSeek(i32* %252, i64 %260, i32 %261)
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %266

264:                                              ; preds = %247
  %265 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %265, i32* %5, align 4
  br label %282

266:                                              ; preds = %247
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i32*, i32** %8, align 8
  %273 = load i64, i64* %9, align 8
  %274 = call i64 @mmioRead(i32* %271, i32* %272, i64 %273)
  %275 = load i64, i64* %9, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %266
  %278 = load i32, i32* @AVIERR_FILEREAD, align 4
  store i32 %278, i32* %5, align 4
  br label %282

279:                                              ; preds = %266
  br label %280

280:                                              ; preds = %279, %246
  %281 = load i32, i32* @AVIERR_OK, align 4
  store i32 %281, i32* %5, align 4
  br label %282

282:                                              ; preds = %280, %277, %264, %196, %166, %150, %123, %111
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i64* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i64*, i64) #1

declare dso_local i32 @mmioSeek(i32*, i64, i32) #1

declare dso_local i64 @mmioRead(i32*, i32*, i64) #1

declare dso_local i32 @ERR(i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
