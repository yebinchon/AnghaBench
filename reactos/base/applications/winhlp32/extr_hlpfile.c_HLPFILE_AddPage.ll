; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_AddPage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_AddPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_8__*, i8*, i32*, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [7 x i8] c"page2\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Text size is too long, splitting\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Added page[%d]: title=%s %08x << %08x >> %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"macro: %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*, i32, i32)* @HLPFILE_AddPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_AddPage(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @GET_UINT(i8* %21, i32 0)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @GET_UINT(i8* %24, i32 16)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ugt i8* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = call i32 @WINE_WARN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %6, align 4
  br label %318

37:                                               ; preds = %5
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @GET_UINT(i8* %38, i32 4)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 72, %43
  %45 = add i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @HeapAlloc(i32 %41, i32 0, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %12, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %318

53:                                               ; preds = %37
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = bitcast %struct.TYPE_7__* %54 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 72
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %115

64:                                               ; preds = %53
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = call i32 @HLPFILE_Uncompress2(%struct.TYPE_9__* %70, i8* %71, i8* %72, i8* %75, i8* %81)
  br label %114

83:                                               ; preds = %64
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @HLPFILE_Uncompress3(%struct.TYPE_9__* %89, i8* %92, i8* %98, i8* %99, i8* %100)
  br label %113

102:                                              ; preds = %83
  %103 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %14, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @memcpy(i8* %109, i8* %110, i32 %111)
  br label %113

113:                                              ; preds = %102, %88
  br label %114

114:                                              ; preds = %113, %69
  br label %122

115:                                              ; preds = %53
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @memcpy(i8* %118, i8* %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %114
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = icmp ne %struct.TYPE_7__* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %122
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 8
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 10
  store %struct.TYPE_7__* %141, %struct.TYPE_7__** %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %146, align 8
  br label %156

147:                                              ; preds = %122
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  store %struct.TYPE_7__* %148, %struct.TYPE_7__** %150, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  store %struct.TYPE_7__* %151, %struct.TYPE_7__** %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 10
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %155, align 8
  br label %156

156:                                              ; preds = %147, %133
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 9
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %159, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 7
  store i32* null, i32** %165, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = call i8* @GET_UINT(i8* %166, i32 33)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 6
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = call i8* @GET_UINT(i8* %176, i32 25)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = call i8* @GET_UINT(i8* %181, i32 29)
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sle i32 %188, 16
  br i1 %189, label %190, label %241

190:                                              ; preds = %156
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 65535
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %203

200:                                              ; preds = %195, %190
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 3
  store i32 -1, i32* %202, align 8
  br label %215

203:                                              ; preds = %195
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %203, %200
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 65535
  br i1 %219, label %225, label %220

220:                                              ; preds = %215
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %228

225:                                              ; preds = %220, %215
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 4
  store i32 -1, i32* %227, align 4
  br label %240

228:                                              ; preds = %220
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %228, %225
  br label %241

241:                                              ; preds = %240, %156
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 6
  %244 = load i8*, i8** %243, align 8
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @debugstr_a(i8* %248)
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i8*, i32, ...) @WINE_TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %245, i32 %249, i32 %252, i32 %255, i32 %258)
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @strlen(i8* %265)
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %262, i64 %267
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  store i8* %269, i8** %17, align 8
  br label %270

270:                                              ; preds = %279, %241
  %271 = load i8*, i8** %17, align 8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = icmp ult i8* %271, %277
  br i1 %278, label %279, label %316

279:                                              ; preds = %270
  %280 = load i8*, i8** %17, align 8
  %281 = call i32 @strlen(i8* %280)
  store i32 %281, i32* %19, align 4
  %282 = load i8*, i8** %17, align 8
  %283 = call i32 @debugstr_a(i8* %282)
  %284 = call i32 (i8*, i32, ...) @WINE_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %283)
  %285 = call i32 (...) @GetProcessHeap()
  %286 = load i32, i32* %19, align 4
  %287 = zext i32 %286 to i64
  %288 = add i64 16, %287
  %289 = add i64 %288, 1
  %290 = trunc i64 %289 to i32
  %291 = call i8* @HeapAlloc(i32 %285, i32 0, i32 %290)
  %292 = bitcast i8* %291 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %292, %struct.TYPE_8__** %18, align 8
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i64 1
  %295 = bitcast %struct.TYPE_8__* %294 to i8*
  store i8* %295, i8** %20, align 8
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  store i8* %295, i8** %297, align 8
  %298 = load i8*, i8** %20, align 8
  %299 = load i8*, i8** %17, align 8
  %300 = load i32, i32* %19, align 4
  %301 = add i32 %300, 1
  %302 = call i32 @memcpy(i8* %298, i8* %299, i32 %301)
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 5
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %304, align 8
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 1
  store %struct.TYPE_8__* %305, %struct.TYPE_8__** %307, align 8
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 5
  store %struct.TYPE_8__* %308, %struct.TYPE_8__** %310, align 8
  %311 = load i32, i32* %19, align 4
  %312 = add i32 %311, 1
  %313 = load i8*, i8** %17, align 8
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds i8, i8* %313, i64 %314
  store i8* %315, i8** %17, align 8
  br label %270

316:                                              ; preds = %270
  %317 = load i32, i32* @TRUE, align 4
  store i32 %317, i32* %6, align 4
  br label %318

318:                                              ; preds = %316, %51, %34
  %319 = load i32, i32* %6, align 4
  ret i32 %319
}

declare dso_local i8* @GET_UINT(i8*, i32) #1

declare dso_local i32 @WINE_WARN(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HLPFILE_Uncompress2(%struct.TYPE_9__*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @HLPFILE_Uncompress3(%struct.TYPE_9__*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @WINE_FIXME(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @WINE_TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
