; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseName.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" HPDF_TTFontDef_ParseMaxp\0A\00", align 1
@HPDF_TTF_MISSING_TABLE = common dso_local global i32 0, align 4
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c" ParseName() format=%u, count=%u, string_offset=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c" ParseName() platformID=%u, encodingID=%d, nameID=%d\0A\00", align 1
@HPDF_TTF_INVALID_FOMAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@HPDF_FONT_FOURCE_BOLD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@HPDF_FONT_ITALIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"  ParseName() base_font=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @ParseName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseName(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %4, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = call %struct.TYPE_13__* @FindTable(%struct.TYPE_14__* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %17, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %18, align 8
  %35 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HPDF_TTF_MISSING_TABLE, align 4
  %43 = call i64 @HPDF_SetError(i32 %41, i32 %42, i32 10)
  store i64 %43, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

44:                                               ; preds = %1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HPDF_SEEK_SET, align 4
  %52 = call i64 @HPDF_Stream_Seek(i32 %47, i32 %50, i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @HPDF_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

58:                                               ; preds = %44
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = call i64 @GetUINT16(i32 %61, i32* %64)
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = call i64 @GetUINT16(i32 %70, i32* %73)
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %6, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = call i64 @GetUINT16(i32 %79, i32* %82)
  %84 = load i64, i64* %6, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @HPDF_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %58
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @HPDF_Error_GetCode(i32 %92)
  store i64 %93, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

94:                                               ; preds = %58
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @HPDF_PTRACE(i8* %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 24, %117
  %119 = trunc i64 %118 to i32
  %120 = call %struct.TYPE_12__* @HPDF_GetMem(i32 %112, i32 %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  store %struct.TYPE_12__* %120, %struct.TYPE_12__** %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = icmp ne %struct.TYPE_12__* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %94
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @HPDF_Error_GetCode(i32 %132)
  store i64 %133, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

134:                                              ; preds = %94
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  store %struct.TYPE_12__* %138, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %352, %134
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %355

146:                                              ; preds = %139
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = call i64 @GetUINT16(i32 %149, i32* %151)
  %153 = load i64, i64* %6, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %6, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = call i64 @GetUINT16(i32 %157, i32* %159)
  %161 = load i64, i64* %6, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %6, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = call i64 @GetUINT16(i32 %165, i32* %167)
  %169 = load i64, i64* %6, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %6, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 3
  %176 = call i64 @GetUINT16(i32 %173, i32* %175)
  %177 = load i64, i64* %6, align 8
  %178 = add nsw i64 %177, %176
  store i64 %178, i64* %6, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 4
  %184 = call i64 @GetUINT16(i32 %181, i32* %183)
  %185 = load i64, i64* %6, align 8
  %186 = add nsw i64 %185, %184
  store i64 %186, i64* %6, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 5
  %192 = call i64 @GetUINT16(i32 %189, i32* %191)
  %193 = load i64, i64* %6, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %6, align 8
  %195 = load i64, i64* %6, align 8
  %196 = load i64, i64* @HPDF_OK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %146
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @HPDF_Error_GetCode(i32 %201)
  store i64 %202, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

203:                                              ; preds = %146
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @HPDF_PTRACE(i8* %214)
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %246

220:                                              ; preds = %203
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %220
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 6
  br i1 %229, label %230, label %246

230:                                              ; preds = %225
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %233, %236
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %237, %241
  store i32 %242, i32* %9, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %13, align 4
  br label %246

246:                                              ; preds = %230, %225, %220, %203
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %277

251:                                              ; preds = %246
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %277

256:                                              ; preds = %251
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %277

261:                                              ; preds = %256
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %264, %267
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %268, %272
  store i32 %273, i32* %10, align 4
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %14, align 4
  br label %277

277:                                              ; preds = %261, %256, %251, %246
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 3
  br i1 %281, label %282, label %313

282:                                              ; preds = %277
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %313

287:                                              ; preds = %282
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 6
  br i1 %291, label %292, label %313

292:                                              ; preds = %287
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 1033
  br i1 %296, label %297, label %313

297:                                              ; preds = %292
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %300, %303
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %304, %308
  store i32 %309, i32* %11, align 4
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %15, align 4
  br label %313

313:                                              ; preds = %297, %292, %287, %282, %277
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 3
  br i1 %317, label %318, label %349

318:                                              ; preds = %313
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %321, 1
  br i1 %322, label %323, label %349

323:                                              ; preds = %318
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %326, 2
  br i1 %327, label %328, label %349

328:                                              ; preds = %323
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 1033
  br i1 %332, label %333, label %349

333:                                              ; preds = %328
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %336, %339
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %340, %344
  store i32 %345, i32* %12, align 4
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %16, align 4
  br label %349

349:                                              ; preds = %333, %328, %323, %318, %313
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 1
  store %struct.TYPE_12__* %351, %struct.TYPE_12__** %8, align 8
  br label %352

352:                                              ; preds = %349
  %353 = load i32, i32* %7, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %7, align 4
  br label %139

355:                                              ; preds = %139
  %356 = load i32, i32* %9, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %355
  %359 = load i32, i32* %11, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %358, %355
  %362 = load i32, i32* %10, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %373, label %364

364:                                              ; preds = %361
  %365 = load i32, i32* %12, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %373, label %367

367:                                              ; preds = %364, %358
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @HPDF_TTF_INVALID_FOMAT, align 4
  %372 = call i64 @HPDF_SetError(i32 %370, i32 %371, i32 0)
  store i64 %372, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

373:                                              ; preds = %364, %361
  %374 = load i32, i32* %13, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %373
  %377 = load i32, i32* %15, align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %376
  %380 = load i32, i32* %15, align 4
  %381 = sdiv i32 %380, 2
  %382 = load i32, i32* %15, align 4
  %383 = srem i32 %382, 2
  %384 = add nsw i32 %381, %383
  store i32 %384, i32* %13, align 4
  br label %385

385:                                              ; preds = %379, %376, %373
  %386 = load i32, i32* %14, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %397

388:                                              ; preds = %385
  %389 = load i32, i32* %16, align 4
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %397

391:                                              ; preds = %388
  %392 = load i32, i32* %16, align 4
  %393 = sdiv i32 %392, 2
  %394 = load i32, i32* %16, align 4
  %395 = srem i32 %394, 2
  %396 = add nsw i32 %393, %395
  store i32 %396, i32* %14, align 4
  br label %397

397:                                              ; preds = %391, %388, %385
  %398 = load i32, i32* %13, align 4
  %399 = load i32, i32* %14, align 4
  %400 = add nsw i32 %398, %399
  %401 = add nsw i32 %400, 8
  %402 = icmp sgt i32 %401, 127
  br i1 %402, label %403, label %409

403:                                              ; preds = %397
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @HPDF_TTF_INVALID_FOMAT, align 4
  %408 = call i64 @HPDF_SetError(i32 %406, i32 %407, i32 0)
  store i64 %408, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

409:                                              ; preds = %397
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 0
  %412 = load i8*, i8** %411, align 8
  %413 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %414 = add nsw i32 %413, 1
  %415 = call i32 @HPDF_MemSet(i8* %412, i32 0, i32 %414)
  %416 = load i32, i32* %9, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %443

418:                                              ; preds = %409
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* %9, align 4
  %423 = load i32, i32* @HPDF_SEEK_SET, align 4
  %424 = call i64 @HPDF_Stream_Seek(i32 %421, i32 %422, i32 %423)
  store i64 %424, i64* %6, align 8
  %425 = load i64, i64* @HPDF_OK, align 8
  %426 = icmp ne i64 %424, %425
  br i1 %426, label %427, label %429

427:                                              ; preds = %418
  %428 = load i64, i64* %6, align 8
  store i64 %428, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

429:                                              ; preds = %418
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 0
  %435 = load i8*, i8** %434, align 8
  %436 = bitcast i8* %435 to i32*
  %437 = call i64 @HPDF_Stream_Read(i32 %432, i32* %436, i32* %13)
  store i64 %437, i64* %6, align 8
  %438 = load i64, i64* @HPDF_OK, align 8
  %439 = icmp ne i64 %437, %438
  br i1 %439, label %440, label %442

440:                                              ; preds = %429
  %441 = load i64, i64* %6, align 8
  store i64 %441, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

442:                                              ; preds = %429
  br label %458

443:                                              ; preds = %409
  %444 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* %11, align 4
  %448 = load i32, i32* %15, align 4
  %449 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %449, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = call i64 @LoadUnicodeName(i32 %446, i32 %447, i32 %448, i8* %451)
  store i64 %452, i64* %6, align 8
  %453 = load i64, i64* @HPDF_OK, align 8
  %454 = icmp ne i64 %452, %453
  br i1 %454, label %455, label %457

455:                                              ; preds = %443
  %456 = load i64, i64* %6, align 8
  store i64 %456, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

457:                                              ; preds = %443
  br label %458

458:                                              ; preds = %457, %442
  %459 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %460 = add nsw i32 %459, 1
  %461 = call i32 @HPDF_MemSet(i8* %34, i32 0, i32 %460)
  %462 = load i32, i32* %10, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %486

464:                                              ; preds = %458
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* %10, align 4
  %469 = load i32, i32* @HPDF_SEEK_SET, align 4
  %470 = call i64 @HPDF_Stream_Seek(i32 %467, i32 %468, i32 %469)
  store i64 %470, i64* %6, align 8
  %471 = load i64, i64* @HPDF_OK, align 8
  %472 = icmp ne i64 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %464
  %474 = load i64, i64* %6, align 8
  store i64 %474, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

475:                                              ; preds = %464
  %476 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = bitcast i8* %34 to i32*
  %480 = call i64 @HPDF_Stream_Read(i32 %478, i32* %479, i32* %14)
  store i64 %480, i64* %6, align 8
  %481 = load i64, i64* @HPDF_OK, align 8
  %482 = icmp ne i64 %480, %481
  br i1 %482, label %483, label %485

483:                                              ; preds = %475
  %484 = load i64, i64* %6, align 8
  store i64 %484, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

485:                                              ; preds = %475
  br label %498

486:                                              ; preds = %458
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* %12, align 4
  %491 = load i32, i32* %16, align 4
  %492 = call i64 @LoadUnicodeName(i32 %489, i32 %490, i32 %491, i8* %34)
  store i64 %492, i64* %6, align 8
  %493 = load i64, i64* @HPDF_OK, align 8
  %494 = icmp ne i64 %492, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %486
  %496 = load i64, i64* %6, align 8
  store i64 %496, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

497:                                              ; preds = %486
  br label %498

498:                                              ; preds = %497, %485
  %499 = bitcast i8* %34 to i32*
  %500 = call i64 @HPDF_MemCmp(i32* %499, i32* bitcast ([8 x i8]* @.str.4 to i32*), i32 7)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %562

502:                                              ; preds = %498
  %503 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %503, i32 0, i32 0
  %505 = load i8*, i8** %504, align 8
  %506 = load i32, i32* %13, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8, i8* %505, i64 %507
  store i8* %508, i8** %20, align 8
  store i8* %34, i8** %21, align 8
  %509 = load i8*, i8** %20, align 8
  %510 = getelementptr inbounds i8, i8* %509, i32 1
  store i8* %510, i8** %20, align 8
  store i8 44, i8* %509, align 1
  store i32 0, i32* %22, align 4
  br label %511

511:                                              ; preds = %537, %502
  %512 = load i32, i32* %22, align 4
  %513 = load i32, i32* %14, align 4
  %514 = icmp slt i32 %512, %513
  br i1 %514, label %515, label %540

515:                                              ; preds = %511
  %516 = load i8*, i8** %21, align 8
  %517 = load i8, i8* %516, align 1
  %518 = sext i8 %517 to i32
  %519 = icmp ne i32 %518, 32
  br i1 %519, label %520, label %526

520:                                              ; preds = %515
  %521 = load i8*, i8** %21, align 8
  %522 = getelementptr inbounds i8, i8* %521, i32 1
  store i8* %522, i8** %21, align 8
  %523 = load i8, i8* %521, align 1
  %524 = load i8*, i8** %20, align 8
  %525 = getelementptr inbounds i8, i8* %524, i32 1
  store i8* %525, i8** %20, align 8
  store i8 %523, i8* %524, align 1
  br label %526

526:                                              ; preds = %520, %515
  %527 = load i8*, i8** %20, align 8
  %528 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %529 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %528, i32 0, i32 0
  %530 = load i8*, i8** %529, align 8
  %531 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i8, i8* %530, i64 %532
  %534 = icmp uge i8* %527, %533
  br i1 %534, label %535, label %536

535:                                              ; preds = %526
  br label %540

536:                                              ; preds = %526
  br label %537

537:                                              ; preds = %536
  %538 = load i32, i32* %22, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %22, align 4
  br label %511

540:                                              ; preds = %535, %511
  %541 = load i8*, i8** %20, align 8
  store i8 0, i8* %541, align 1
  %542 = load i32, i32* %14, align 4
  %543 = call i64 @HPDF_StrStr(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %542)
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %551

545:                                              ; preds = %540
  %546 = load i32, i32* @HPDF_FONT_FOURCE_BOLD, align 4
  %547 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = or i32 %549, %546
  store i32 %550, i32* %548, align 8
  br label %551

551:                                              ; preds = %545, %540
  %552 = load i32, i32* %14, align 4
  %553 = call i64 @HPDF_StrStr(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %552)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %561

555:                                              ; preds = %551
  %556 = load i32, i32* @HPDF_FONT_ITALIC, align 4
  %557 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 8
  %560 = or i32 %559, %556
  store i32 %560, i32* %558, align 8
  br label %561

561:                                              ; preds = %555, %551
  br label %562

562:                                              ; preds = %561, %498
  %563 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = inttoptr i64 %565 to i32*
  %567 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 0
  %569 = load i8*, i8** %568, align 8
  %570 = bitcast i8* %569 to i32*
  %571 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %572 = add nsw i32 %571, 1
  %573 = call i32 @HPDF_MemCpy(i32* %566, i32* %570, i32 %572)
  %574 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %575 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %574, i32 0, i32 0
  %576 = load i8*, i8** %575, align 8
  %577 = call i32 @HPDF_PTRACE(i8* %576)
  %578 = load i64, i64* @HPDF_OK, align 8
  store i64 %578, i64* %2, align 8
  store i32 1, i32* %19, align 4
  br label %579

579:                                              ; preds = %562, %495, %483, %473, %455, %440, %427, %403, %367, %198, %129, %89, %56, %38
  %580 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %580)
  %581 = load i64, i64* %2, align 8
  ret i64 %581
}

declare dso_local %struct.TYPE_13__* @FindTable(%struct.TYPE_14__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i32, i32) #1

declare dso_local i64 @GetUINT16(i32, i32*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local %struct.TYPE_12__* @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @HPDF_MemSet(i8*, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Read(i32, i32*, i32*) #1

declare dso_local i64 @LoadUnicodeName(i32, i32, i32, i8*) #1

declare dso_local i64 @HPDF_MemCmp(i32*, i32*, i32) #1

declare dso_local i64 @HPDF_StrStr(i8*, i8*, i32) #1

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
