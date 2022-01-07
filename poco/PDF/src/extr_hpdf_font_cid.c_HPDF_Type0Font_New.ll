; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_HPDF_Type0Font_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_HPDF_Type0Font_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32, i32*, %struct.TYPE_21__, i32 }
%struct.TYPE_23__ = type { i32, i32, i8*, i32, %struct.TYPE_25__*, %struct.TYPE_22__*, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64, i8* }
%struct.TYPE_25__ = type { i64, i8*, i64 }
%struct.TYPE_26__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c" HPDF_Type0Font_New\0A\00", align 1
@HPDF_OSUBCLASS_FONT = common dso_local global i32 0, align 4
@HPDF_ENCODER_TYPE_DOUBLE_BYTE = common dso_local global i64 0, align 8
@HPDF_INVALID_ENCODER_TYPE = common dso_local global i32 0, align 4
@HPDF_FONTDEF_TYPE_CID = common dso_local global i64 0, align 8
@HPDF_FONTDEF_TYPE_TRUETYPE = common dso_local global i64 0, align 8
@HPDF_INVALID_FONTDEF_TYPE = common dso_local global i32 0, align 4
@OnFree_Func = common dso_local global i32 0, align 4
@TextWidth = common dso_local global i32 0, align 4
@MeasureText = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"BaseFont\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Type0\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Identity-H\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ToUnicode\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"DescendantFonts\00", align 1
@HPDF_FONT_TYPE0_CID = common dso_local global i32 0, align 4
@HPDF_FONT_TYPE0_TT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @HPDF_Type0Font_New(i32 %0, %struct.TYPE_22__* %1, %struct.TYPE_25__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %15 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_24__* @HPDF_Dict_New(i32 %16)
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %10, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

21:                                               ; preds = %4
  %22 = load i32, i32* @HPDF_OSUBCLASS_FONT, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HPDF_ENCODER_TYPE_DOUBLE_BYTE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HPDF_INVALID_ENCODER_TYPE, align 4
  %38 = call i32 @HPDF_SetError(i32 %36, i32 %37, i32 0)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

39:                                               ; preds = %21
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HPDF_FONTDEF_TYPE_CID, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HPDF_FONTDEF_TYPE_TRUETYPE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HPDF_INVALID_FONTDEF_TYPE, align 4
  %56 = call i32 @HPDF_SetError(i32 %54, i32 %55, i32 0)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

57:                                               ; preds = %45, %39
  %58 = load i32, i32* %6, align 4
  %59 = call %struct.TYPE_23__* @HPDF_GetMem(i32 %58, i32 4)
  store %struct.TYPE_23__* %59, %struct.TYPE_23__** %11, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %61 = icmp ne %struct.TYPE_23__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %64 = call i32 @HPDF_Dict_Free(%struct.TYPE_24__* %63)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

65:                                               ; preds = %57
  %66 = load i32, i32* @HPDF_OSUBCLASS_FONT, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* @OnFree_Func, align 4
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %79, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %83, %struct.TYPE_26__** %12, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %85 = call i32 @HPDF_MemSet(%struct.TYPE_23__* %84, i32 0, i32 4)
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @TextWidth, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @MeasureText, align 4
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 5
  store %struct.TYPE_22__* %97, %struct.TYPE_22__** %99, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 4
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %108 = call i64 @HPDF_Xref_Add(i32 %106, %struct.TYPE_24__* %107)
  %109 = load i64, i64* @HPDF_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %65
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

112:                                              ; preds = %65
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %114 = call i64 @HPDF_Dict_AddName(%struct.TYPE_24__* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i64, i64* %13, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %13, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @HPDF_Dict_AddName(%struct.TYPE_24__* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  %122 = load i64, i64* %13, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %13, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %125 = call i64 @HPDF_Dict_AddName(%struct.TYPE_24__* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i64, i64* %13, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %13, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HPDF_FONTDEF_TYPE_CID, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %112
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @HPDF_Dict_AddName(%struct.TYPE_24__* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %137)
  %139 = load i64, i64* %13, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %13, align 8
  br label %192

141:                                              ; preds = %112
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @HPDF_StrCmp(i32 %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %141
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %149 = call i64 @HPDF_Dict_AddName(%struct.TYPE_24__* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i64, i64* %13, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %13, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i8* @CreateCMap(%struct.TYPE_25__* %152, i32 %153)
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %147
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @HPDF_Dict_Add(%struct.TYPE_24__* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %165)
  %167 = load i64, i64* %13, align 8
  %168 = add nsw i64 %167, %166
  store i64 %168, i64* %13, align 8
  br label %170

169:                                              ; preds = %147
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

170:                                              ; preds = %161
  br label %191

171:                                              ; preds = %141
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i8* @CreateCMap(%struct.TYPE_25__* %172, i32 %173)
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %171
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @HPDF_Dict_Add(%struct.TYPE_24__* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %185)
  %187 = load i64, i64* %13, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %13, align 8
  br label %190

189:                                              ; preds = %171
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190, %170
  br label %192

192:                                              ; preds = %191, %133
  %193 = load i64, i64* %13, align 8
  %194 = load i64, i64* @HPDF_OK, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

197:                                              ; preds = %192
  %198 = load i32, i32* %6, align 4
  %199 = call i8* @HPDF_Array_New(i32 %198)
  store i8* %199, i8** %14, align 8
  %200 = load i8*, i8** %14, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

203:                                              ; preds = %197
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %205 = load i8*, i8** %14, align 8
  %206 = call i64 @HPDF_Dict_Add(%struct.TYPE_24__* %204, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %205)
  %207 = load i64, i64* @HPDF_OK, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

210:                                              ; preds = %203
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @HPDF_FONTDEF_TYPE_CID, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @CIDFontType0_New(%struct.TYPE_24__* %217, i32 %218)
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* @HPDF_FONT_TYPE0_CID, align 4
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %234

225:                                              ; preds = %210
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @CIDFontType2_New(%struct.TYPE_24__* %226, i32 %227)
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* @HPDF_FONT_TYPE0_TT, align 4
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  br label %234

234:                                              ; preds = %225, %216
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %234
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

240:                                              ; preds = %234
  %241 = load i8*, i8** %14, align 8
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i64 @HPDF_Array_Add(i8* %241, i32 %244)
  %246 = load i64, i64* @HPDF_OK, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %252

249:                                              ; preds = %240
  br label %250

250:                                              ; preds = %249
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %251, %struct.TYPE_24__** %5, align 8
  br label %252

252:                                              ; preds = %250, %248, %239, %209, %202, %196, %189, %169, %111, %62, %51, %33, %20
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  ret %struct.TYPE_24__* %253
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_24__* @HPDF_Dict_New(i32) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @HPDF_Dict_Free(%struct.TYPE_24__*) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_24__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i64 @HPDF_StrCmp(i32, i8*) #1

declare dso_local i8* @CreateCMap(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i8* @HPDF_Array_New(i32) #1

declare dso_local i32 @CIDFontType0_New(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @CIDFontType2_New(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @HPDF_Array_Add(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
