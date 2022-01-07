; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_type1.c_LoadAfm.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_type1.c_LoadAfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8*, i8* }

@HPDF_TMP_BUF_SIZ = common dso_local global i32 0, align 4
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" LoadAfm\0A\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"StartFontMetrics\00", align 1
@HPDF_INVALID_AFM_HEADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@HPDF_FONT_FOURCE_BOLD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"IsFixedPitch\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@HPDF_FONT_FIXED_WIDTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@HPDF_FONT_ITALIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"CharacterSet\00", align 1
@HPDF_LIMIT_MAX_STRING_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@HPDF_INT_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"EncodingScheme\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"CapHeight\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Ascender\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Descender\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"STDHW\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"STDHV\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"StartCharMetrics\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"CX\00", align 1
@HPDF_INVALID_CHAR_MATRICS_DATA = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"WX \00", align 1
@HPDF_INVALID_WX_DATA = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"N \00", align 1
@HPDF_INVALID_N_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @LoadAfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadAfm(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %6, align 8
  %27 = load i32, i32* @HPDF_TMP_BUF_SIZ, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %7, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  %31 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %35 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @HPDF_TMP_BUF_SIZ, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @HPDF_Stream_ReadLn(i32 %38, i8* %30, i64* %11)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @HPDF_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %459

44:                                               ; preds = %2
  %45 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i8* @GetKeyword(i8* %30, i8* %34, i32 %46)
  %48 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @HPDF_INVALID_AFM_HEADER, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %459

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %305, %52
  %54 = load i32, i32* @HPDF_TMP_BUF_SIZ, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @HPDF_Stream_ReadLn(i32 %56, i8* %30, i64* %11)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @HPDF_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %459

62:                                               ; preds = %53
  %63 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i8* @GetKeyword(i8* %30, i8* %34, i32 %64)
  store i8* %65, i8** %15, align 8
  %66 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @HPDF_StrCpy(i32 %71, i8* %72, i32 %77)
  br label %305

79:                                               ; preds = %62
  %80 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i8*, i8** %15, align 8
  %84 = call i64 @HPDF_StrCmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* @HPDF_FONT_FOURCE_BOLD, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %82
  br label %304

93:                                               ; preds = %79
  %94 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i8*, i8** %15, align 8
  %98 = call i64 @HPDF_StrCmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @HPDF_FONT_FIXED_WIDTH, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %96
  br label %303

107:                                              ; preds = %93
  %108 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 @HPDF_AToI(i8* %111)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %110
  %123 = load i32, i32* @HPDF_FONT_ITALIC, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %110
  br label %302

129:                                              ; preds = %107
  %130 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %171

132:                                              ; preds = %129
  %133 = load i8*, i8** %15, align 8
  %134 = load i32, i32* @HPDF_LIMIT_MAX_STRING_LEN, align 4
  %135 = call i64 @HPDF_StrLen(i8* %133, i32 %134)
  store i64 %135, i64* %16, align 8
  %136 = load i64, i64* %16, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %132
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %16, align 8
  %143 = add nsw i64 %142, 1
  %144 = trunc i64 %143 to i32
  %145 = call i32 @HPDF_GetMem(i32 %141, i32 %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %138
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @HPDF_Error_GetCode(i32 %155)
  store i32 %156, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %459

157:                                              ; preds = %138
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %16, align 8
  %167 = add nsw i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = call i32 @HPDF_StrCpy(i32 %160, i8* %161, i32 %168)
  br label %170

170:                                              ; preds = %157, %132
  br label %301

171:                                              ; preds = %129
  %172 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %221

174:                                              ; preds = %171
  %175 = load i32, i32* @HPDF_INT_LEN, align 4
  %176 = add nsw i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = call i8* @llvm.stacksave()
  store i8* %178, i8** %17, align 8
  %179 = alloca i8, i64 %177, align 16
  store i64 %177, i64* %18, align 8
  %180 = load i8*, i8** %15, align 8
  %181 = load i32, i32* @HPDF_INT_LEN, align 4
  %182 = add nsw i32 %181, 1
  %183 = call i8* @GetKeyword(i8* %180, i8* %179, i32 %182)
  store i8* %183, i8** %15, align 8
  %184 = call i32 @HPDF_AToI(i8* %179)
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 9
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  store i8* %186, i8** %189, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = load i32, i32* @HPDF_INT_LEN, align 4
  %192 = add nsw i32 %191, 1
  %193 = call i8* @GetKeyword(i8* %190, i8* %179, i32 %192)
  store i8* %193, i8** %15, align 8
  %194 = call i32 @HPDF_AToI(i8* %179)
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  store i8* %196, i8** %199, align 8
  %200 = load i8*, i8** %15, align 8
  %201 = load i32, i32* @HPDF_INT_LEN, align 4
  %202 = add nsw i32 %201, 1
  %203 = call i8* @GetKeyword(i8* %200, i8* %179, i32 %202)
  store i8* %203, i8** %15, align 8
  %204 = call i32 @HPDF_AToI(i8* %179)
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 9
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  store i8* %206, i8** %209, align 8
  %210 = load i8*, i8** %15, align 8
  %211 = load i32, i32* @HPDF_INT_LEN, align 4
  %212 = add nsw i32 %211, 1
  %213 = call i8* @GetKeyword(i8* %210, i8* %179, i32 %212)
  %214 = call i32 @HPDF_AToI(i8* %179)
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 9
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  store i8* %216, i8** %219, align 8
  %220 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %220)
  br label %300

221:                                              ; preds = %171
  %222 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %221
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i8*, i8** %15, align 8
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %233 = add nsw i32 %231, %232
  %234 = call i32 @HPDF_StrCpy(i32 %227, i8* %228, i32 %233)
  br label %299

235:                                              ; preds = %221
  %236 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = load i8*, i8** %15, align 8
  %240 = call i32 @HPDF_AToI(i8* %239)
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 8
  store i8* %242, i8** %244, align 8
  br label %298

245:                                              ; preds = %235
  %246 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  %249 = load i8*, i8** %15, align 8
  %250 = call i32 @HPDF_AToI(i8* %249)
  %251 = sext i32 %250 to i64
  %252 = inttoptr i64 %251 to i8*
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 7
  store i8* %252, i8** %254, align 8
  br label %297

255:                                              ; preds = %245
  %256 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %255
  %259 = load i8*, i8** %15, align 8
  %260 = call i32 @HPDF_AToI(i8* %259)
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 6
  store i8* %262, i8** %264, align 8
  br label %296

265:                                              ; preds = %255
  %266 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %265
  %269 = load i8*, i8** %15, align 8
  %270 = call i32 @HPDF_AToI(i8* %269)
  %271 = sext i32 %270 to i64
  %272 = inttoptr i64 %271 to i8*
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 5
  store i8* %272, i8** %274, align 8
  br label %295

275:                                              ; preds = %265
  %276 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = load i8*, i8** %15, align 8
  %280 = call i32 @HPDF_AToI(i8* %279)
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 4
  store i8* %282, i8** %284, align 8
  br label %294

285:                                              ; preds = %275
  %286 = call i64 @HPDF_StrCmp(i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = load i8*, i8** %15, align 8
  %290 = call i32 @HPDF_AToI(i8* %289)
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  br label %306

293:                                              ; preds = %285
  br label %294

294:                                              ; preds = %293, %278
  br label %295

295:                                              ; preds = %294, %268
  br label %296

296:                                              ; preds = %295, %258
  br label %297

297:                                              ; preds = %296, %248
  br label %298

298:                                              ; preds = %297, %238
  br label %299

299:                                              ; preds = %298, %224
  br label %300

300:                                              ; preds = %299, %174
  br label %301

301:                                              ; preds = %300, %170
  br label %302

302:                                              ; preds = %301, %128
  br label %303

303:                                              ; preds = %302, %106
  br label %304

304:                                              ; preds = %303, %92
  br label %305

305:                                              ; preds = %304, %68
  br label %53

306:                                              ; preds = %288
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = mul i64 24, %313
  %315 = trunc i64 %314 to i32
  %316 = call i32 @HPDF_GetMem(i32 %309, i32 %315)
  %317 = sext i32 %316 to i64
  %318 = inttoptr i64 %317 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %318, %struct.TYPE_10__** %9, align 8
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %320 = icmp eq %struct.TYPE_10__* %319, null
  br i1 %320, label %321, label %326

321:                                              ; preds = %306
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @HPDF_Error_GetCode(i32 %324)
  store i32 %325, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %459

326:                                              ; preds = %306
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = mul i64 24, %331
  %333 = trunc i64 %332 to i32
  %334 = call i32 @HPDF_MemSet(%struct.TYPE_10__* %327, i32 0, i32 %333)
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 3
  store %struct.TYPE_10__* %335, %struct.TYPE_10__** %337, align 8
  store i64 0, i64* %13, align 8
  br label %338

338:                                              ; preds = %452, %326
  %339 = load i64, i64* %13, align 8
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = sext i32 %342 to i64
  %344 = icmp slt i64 %339, %343
  br i1 %344, label %345, label %457

345:                                              ; preds = %338
  %346 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %347 = add nsw i32 %346, 1
  %348 = zext i32 %347 to i64
  %349 = call i8* @llvm.stacksave()
  store i8* %349, i8** %20, align 8
  %350 = alloca i8, i64 %348, align 16
  store i64 %348, i64* %21, align 8
  %351 = load i32, i32* @HPDF_TMP_BUF_SIZ, align 4
  %352 = sext i32 %351 to i64
  store i64 %352, i64* %11, align 8
  %353 = load i32, i32* %5, align 4
  %354 = call i32 @HPDF_Stream_ReadLn(i32 %353, i8* %30, i64* %11)
  store i32 %354, i32* %10, align 4
  %355 = load i32, i32* @HPDF_OK, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %345
  %358 = load i32, i32* %10, align 4
  store i32 %358, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %448

359:                                              ; preds = %345
  %360 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %361 = add nsw i32 %360, 1
  %362 = call i8* @GetKeyword(i8* %30, i8* %350, i32 %361)
  store i8* %362, i8** %19, align 8
  %363 = call i64 @HPDF_StrCmp(i8* %350, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @HPDF_INVALID_CHAR_MATRICS_DATA, align 4
  %370 = call i32 @HPDF_SetError(i32 %368, i32 %369, i32 0)
  store i32 %370, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %448

371:                                              ; preds = %359
  %372 = call i64 @HPDF_StrCmp(i8* %350, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %387

374:                                              ; preds = %371
  %375 = load i8*, i8** %19, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 2
  store i8* %376, i8** %19, align 8
  %377 = load i8*, i8** %19, align 8
  %378 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %379 = add nsw i32 %378, 1
  %380 = call i8* @GetKeyword(i8* %377, i8* %350, i32 %379)
  store i8* %380, i8** %19, align 8
  %381 = call i32 @HPDF_AToI(i8* %350)
  %382 = call i32 @HPDF_AToI(i8* %350)
  %383 = sext i32 %382 to i64
  %384 = inttoptr i64 %383 to i8*
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 2
  store i8* %384, i8** %386, align 8
  br label %393

387:                                              ; preds = %371
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @HPDF_INVALID_CHAR_MATRICS_DATA, align 4
  %392 = call i32 @HPDF_SetError(i32 %390, i32 %391, i32 0)
  store i32 %392, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %448

393:                                              ; preds = %374
  br label %394

394:                                              ; preds = %393
  %395 = load i8*, i8** %19, align 8
  %396 = call i8* @HPDF_StrStr(i8* %395, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 0)
  store i8* %396, i8** %19, align 8
  %397 = load i8*, i8** %19, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %405, label %399

399:                                              ; preds = %394
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @HPDF_INVALID_WX_DATA, align 4
  %404 = call i32 @HPDF_SetError(i32 %402, i32 %403, i32 0)
  store i32 %404, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %448

405:                                              ; preds = %394
  %406 = load i8*, i8** %19, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 3
  store i8* %407, i8** %19, align 8
  %408 = load i8*, i8** %19, align 8
  %409 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %410 = add nsw i32 %409, 1
  %411 = call i8* @GetKeyword(i8* %408, i8* %350, i32 %410)
  store i8* %411, i8** %19, align 8
  %412 = getelementptr inbounds i8, i8* %350, i64 0
  %413 = load i8, i8* %412, align 16
  %414 = sext i8 %413 to i32
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %422

416:                                              ; preds = %405
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @HPDF_INVALID_WX_DATA, align 4
  %421 = call i32 @HPDF_SetError(i32 %419, i32 %420, i32 0)
  store i32 %421, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %448

422:                                              ; preds = %405
  %423 = call i32 @HPDF_AToI(i8* %350)
  %424 = sext i32 %423 to i64
  %425 = inttoptr i64 %424 to i8*
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 1
  store i8* %425, i8** %427, align 8
  %428 = load i8*, i8** %19, align 8
  %429 = call i8* @HPDF_StrStr(i8* %428, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 0)
  store i8* %429, i8** %19, align 8
  %430 = load i8*, i8** %19, align 8
  %431 = icmp ne i8* %430, null
  br i1 %431, label %438, label %432

432:                                              ; preds = %422
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* @HPDF_INVALID_N_DATA, align 4
  %437 = call i32 @HPDF_SetError(i32 %435, i32 %436, i32 0)
  store i32 %437, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %448

438:                                              ; preds = %422
  %439 = load i8*, i8** %19, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 2
  store i8* %440, i8** %19, align 8
  %441 = load i8*, i8** %19, align 8
  %442 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %443 = add nsw i32 %442, 1
  %444 = call i8* @GetKeyword(i8* %441, i8* %350, i32 %443)
  %445 = call i32 @HPDF_GryphNameToUnicode(i8* %350)
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 0
  store i32 %445, i32* %447, align 8
  store i32 0, i32* %14, align 4
  br label %448

448:                                              ; preds = %438, %432, %416, %399, %387, %365, %357
  %449 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %449)
  %450 = load i32, i32* %14, align 4
  switch i32 %450, label %459 [
    i32 0, label %451
  ]

451:                                              ; preds = %448
  br label %452

452:                                              ; preds = %451
  %453 = load i64, i64* %13, align 8
  %454 = add nsw i64 %453, 1
  store i64 %454, i64* %13, align 8
  %455 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %456 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %455, i32 1
  store %struct.TYPE_10__* %456, %struct.TYPE_10__** %9, align 8
  br label %338

457:                                              ; preds = %338
  %458 = load i32, i32* @HPDF_OK, align 4
  store i32 %458, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %459

459:                                              ; preds = %457, %448, %321, %152, %60, %50, %42
  %460 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %460)
  %461 = load i32, i32* %3, align 4
  ret i32 %461
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i32 @HPDF_Stream_ReadLn(i32, i8*, i64*) #2

declare dso_local i8* @GetKeyword(i8*, i8*, i32) #2

declare dso_local i64 @HPDF_StrCmp(i8*, i8*) #2

declare dso_local i32 @HPDF_StrCpy(i32, i8*, i32) #2

declare dso_local i32 @HPDF_AToI(i8*) #2

declare dso_local i64 @HPDF_StrLen(i8*, i32) #2

declare dso_local i32 @HPDF_GetMem(i32, i32) #2

declare dso_local i32 @HPDF_Error_GetCode(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #2

declare dso_local i8* @HPDF_StrStr(i8*, i8*, i32) #2

declare dso_local i32 @HPDF_GryphNameToUnicode(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
