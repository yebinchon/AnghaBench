; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseOS2.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseOS2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32*, i32*, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"OS/2\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" ParseOS2\0A\00", align 1
@HPDF_TTF_MISSING_TABLE = common dso_local global i32 0, align 4
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_TTF_CANNOT_EMBEDDING_FONT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c" ParseOS2 sFamilyClass=%d-%d Panose=%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X\0A\00", align 1
@HPDF_FONT_SERIF = common dso_local global i32 0, align 4
@HPDF_FONT_SCRIPT = common dso_local global i32 0, align 4
@HPDF_FONT_SYMBOLIC = common dso_local global i32 0, align 4
@HPDF_SEEK_CUR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"  ParseOS2 CodePageRange1=%08X CodePageRange2=%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @ParseOS2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseOS2(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call %struct.TYPE_8__* @FindTable(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %5, align 8
  %16 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HPDF_TTF_MISSING_TABLE, align 4
  %24 = call i64 @HPDF_SetError(i32 %22, i32 %23, i32 0)
  store i64 %24, i64* %2, align 8
  br label %300

25:                                               ; preds = %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HPDF_SEEK_SET, align 4
  %33 = call i64 @HPDF_Stream_Seek(i32 %28, i32 %31, i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @HPDF_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %2, align 8
  br label %300

39:                                               ; preds = %25
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @GetUINT16(i32 %42, i64* %7)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* @HPDF_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %2, align 8
  br label %300

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 8
  %56 = load i32, i32* @HPDF_SEEK_SET, align 4
  %57 = call i64 @HPDF_Stream_Seek(i32 %51, i32 %55, i32 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @HPDF_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %2, align 8
  br label %300

63:                                               ; preds = %48
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i64 @GetUINT16(i32 %66, i64* %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* @HPDF_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i64, i64* %6, align 8
  store i64 %73, i64* %2, align 8
  br label %300

74:                                               ; preds = %63
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = and i64 %77, 770
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HPDF_TTF_CANNOT_EMBEDDING_FONT, align 4
  %90 = call i64 @HPDF_SetError(i32 %88, i32 %89, i32 0)
  store i64 %90, i64* %2, align 8
  br label %300

91:                                               ; preds = %80, %74
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 30
  %99 = load i32, i32* @HPDF_SEEK_SET, align 4
  %100 = call i64 @HPDF_Stream_Seek(i32 %94, i32 %98, i32 %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* @HPDF_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i64, i64* %6, align 8
  store i64 %104, i64* %2, align 8
  br label %300

105:                                              ; preds = %91
  store i32 2, i32* %8, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i64 @HPDF_Stream_Read(i32 %108, i32* %111, i32* %8)
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* @HPDF_OK, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i64, i64* %6, align 8
  store i64 %116, i64* %2, align 8
  br label %300

117:                                              ; preds = %105
  store i32 10, i32* %8, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @HPDF_Stream_Read(i32 %120, i32* %123, i32* %8)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* @HPDF_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i64, i64* %6, align 8
  store i64 %128, i64* %2, align 8
  br label %300

129:                                              ; preds = %117
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 5
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 7
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 8
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 9
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = call i32 @HPDF_PTRACE(i8* %191)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %129
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %204, 6
  br i1 %205, label %213, label %206

206:                                              ; preds = %199, %129
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 7
  br i1 %212, label %213, label %221

213:                                              ; preds = %206, %199
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @HPDF_FONT_SERIF, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %213, %206
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 10
  br i1 %227, label %228, label %236

228:                                              ; preds = %221
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @HPDF_FONT_SCRIPT, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %228, %221
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 12
  br i1 %242, label %243, label %251

243:                                              ; preds = %236
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @HPDF_FONT_SYMBOLIC, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %243, %236
  %252 = load i64, i64* %7, align 8
  %253 = icmp sgt i64 %252, 0
  br i1 %253, label %254, label %287

254:                                              ; preds = %251
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %259 = call i64 @HPDF_Stream_Seek(i32 %257, i32 36, i32 %258)
  store i64 %259, i64* %6, align 8
  %260 = load i64, i64* @HPDF_OK, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %254
  %263 = load i64, i64* %6, align 8
  store i64 %263, i64* %2, align 8
  br label %300

264:                                              ; preds = %254
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 4
  %270 = call i64 @GetUINT32(i32 %267, i64* %269)
  store i64 %270, i64* %6, align 8
  %271 = load i64, i64* @HPDF_OK, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %264
  %274 = load i64, i64* %6, align 8
  store i64 %274, i64* %2, align 8
  br label %300

275:                                              ; preds = %264
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 3
  %281 = call i64 @GetUINT32(i32 %278, i64* %280)
  store i64 %281, i64* %6, align 8
  %282 = load i64, i64* @HPDF_OK, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %275
  %285 = load i64, i64* %6, align 8
  store i64 %285, i64* %2, align 8
  br label %300

286:                                              ; preds = %275
  br label %287

287:                                              ; preds = %286, %251
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = trunc i64 %290 to i32
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = inttoptr i64 %296 to i8*
  %298 = call i32 @HPDF_PTRACE(i8* %297)
  %299 = load i64, i64* @HPDF_OK, align 8
  store i64 %299, i64* %2, align 8
  br label %300

300:                                              ; preds = %287, %284, %273, %262, %127, %115, %103, %85, %72, %61, %46, %37, %19
  %301 = load i64, i64* %2, align 8
  ret i64 %301
}

declare dso_local %struct.TYPE_8__* @FindTable(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i32, i32) #1

declare dso_local i64 @GetUINT16(i32, i64*) #1

declare dso_local i64 @HPDF_Stream_Read(i32, i32*, i32*) #1

declare dso_local i64 @GetUINT32(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
