; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_type1.c_HPDF_Type1Font_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_type1.c_HPDF_Type1Font_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_29__*, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { %struct.TYPE_29__*, i32, %struct.TYPE_34__*, %struct.TYPE_32__*, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i64, i8*, i32, i64 }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, i32* }

@.str = private unnamed_addr constant [21 x i8] c" HPDF_Type1Font_New\0A\00", align 1
@HPDF_ENCODER_TYPE_SINGLE_BYTE = common dso_local global i64 0, align 8
@HPDF_INVALID_ENCODER_TYPE = common dso_local global i32 0, align 4
@HPDF_FONTDEF_TYPE_TYPE1 = common dso_local global i64 0, align 8
@HPDF_INVALID_FONTDEF_TYPE = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_FONT = common dso_local global i32 0, align 4
@Type1Font_OnWrite = common dso_local global i32 0, align 4
@Type1Font_OnFree = common dso_local global i32 0, align 4
@HPDF_FONT_TYPE1 = common dso_local global i32 0, align 4
@HPDF_WMODE_HORIZONTAL = common dso_local global i32 0, align 4
@Type1Font_TextWidth = common dso_local global i32 0, align 4
@Type1Font_MeasureText = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"BaseFont\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Type1\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MissingWidth\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_33__* @HPDF_Type1Font_New(%struct.TYPE_31__* %0, %struct.TYPE_32__* %1, %struct.TYPE_34__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_29__, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %14, align 8
  %18 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HPDF_ENCODER_TYPE_SINGLE_BYTE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HPDF_INVALID_ENCODER_TYPE, align 4
  %29 = call i32 @HPDF_SetError(i32 %27, i32 %28, i32 0)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %5, align 8
  br label %211

30:                                               ; preds = %4
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HPDF_FONTDEF_TYPE_TYPE1, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HPDF_INVALID_FONTDEF_TYPE, align 4
  %41 = call i32 @HPDF_SetError(i32 %39, i32 %40, i32 0)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %5, align 8
  br label %211

42:                                               ; preds = %30
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %44 = call %struct.TYPE_33__* @HPDF_Dict_New(%struct.TYPE_31__* %43)
  store %struct.TYPE_33__* %44, %struct.TYPE_33__** %10, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %46 = icmp ne %struct.TYPE_33__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %5, align 8
  br label %211

48:                                               ; preds = %42
  %49 = load i32, i32* @HPDF_OSUBCLASS_FONT, align 4
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %56 = call i8* @HPDF_GetMem(%struct.TYPE_31__* %55, i32 4)
  %57 = bitcast i8* %56 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %57, %struct.TYPE_29__** %11, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %59 = icmp ne %struct.TYPE_29__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %62 = call i32 @HPDF_Dict_Free(%struct.TYPE_33__* %61)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %5, align 8
  br label %211

63:                                               ; preds = %48
  %64 = load i32, i32* @HPDF_OSUBCLASS_FONT, align 4
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @Type1Font_OnWrite, align 4
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @Type1Font_OnFree, align 4
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %77 = call i32 @HPDF_MemSet(%struct.TYPE_29__* %76, i32 0, i32 4)
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  store %struct.TYPE_29__* %78, %struct.TYPE_29__** %80, align 8
  %81 = load i32, i32* @HPDF_FONT_TYPE1, align 4
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @HPDF_WMODE_HORIZONTAL, align 4
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @Type1Font_TextWidth, align 4
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @Type1Font_MeasureText, align 4
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 3
  store %struct.TYPE_32__* %93, %struct.TYPE_32__** %95, align 8
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 2
  store %struct.TYPE_34__* %96, %struct.TYPE_34__** %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %103 = call i8* @HPDF_GetMem(%struct.TYPE_31__* %102, i32 1024)
  %104 = bitcast i8* %103 to %struct.TYPE_29__*
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  store %struct.TYPE_29__* %104, %struct.TYPE_29__** %106, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %108, align 8
  %110 = icmp ne %struct.TYPE_29__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %63
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %113 = call i32 @HPDF_Dict_Free(%struct.TYPE_33__* %112)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %5, align 8
  br label %211

114:                                              ; preds = %63
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %118, %struct.TYPE_27__** %13, align 8
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %120, align 8
  %122 = call i32 @HPDF_MemSet(%struct.TYPE_29__* %121, i32 0, i32 1024)
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %15, align 8
  br label %126

126:                                              ; preds = %148, %114
  %127 = load i64, i64* %15, align 8
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ule i64 %127, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %126
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %16, align 4
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %140 = load i32, i32* %16, align 4
  call void @HPDF_Type1FontDef_GetWidth(%struct.TYPE_29__* sret %17, %struct.TYPE_32__* %139, i32 %140)
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %142, align 8
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i64 %144
  %146 = bitcast %struct.TYPE_29__* %145 to i8*
  %147 = bitcast %struct.TYPE_29__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 48, i1 false)
  br label %148

148:                                              ; preds = %132
  %149 = load i64, i64* %15, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %15, align 8
  br label %126

151:                                              ; preds = %126
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %155, %struct.TYPE_30__** %12, align 8
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %157 = call i64 @HPDF_Dict_AddName(%struct.TYPE_33__* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i64, i64* %14, align 8
  %159 = add nsw i64 %158, %157
  store i64 %159, i64* %14, align 8
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @HPDF_Dict_AddName(%struct.TYPE_33__* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %163)
  %165 = load i64, i64* %14, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %14, align 8
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %168 = call i64 @HPDF_Dict_AddName(%struct.TYPE_33__* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %169 = load i64, i64* %14, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %14, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %195, label %175

175:                                              ; preds = %151
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_33__* %181, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = load i64, i64* %14, align 8
  %187 = add nsw i64 %186, %185
  store i64 %187, i64* %14, align 8
  br label %188

188:                                              ; preds = %180, %175
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i64 @Type1Font_CreateDescriptor(%struct.TYPE_31__* %189, %struct.TYPE_33__* %190, i32 %191)
  %193 = load i64, i64* %14, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %14, align 8
  br label %195

195:                                              ; preds = %188, %151
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* @HPDF_OK, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %201 = call i32 @HPDF_Dict_Free(%struct.TYPE_33__* %200)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %5, align 8
  br label %211

202:                                              ; preds = %195
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %205 = call i64 @HPDF_Xref_Add(i32 %203, %struct.TYPE_33__* %204)
  %206 = load i64, i64* @HPDF_OK, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %5, align 8
  br label %211

209:                                              ; preds = %202
  %210 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  store %struct.TYPE_33__* %210, %struct.TYPE_33__** %5, align 8
  br label %211

211:                                              ; preds = %209, %208, %199, %111, %60, %47, %36, %24
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  ret %struct.TYPE_33__* %212
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local %struct.TYPE_33__* @HPDF_Dict_New(%struct.TYPE_31__*) #1

declare dso_local i8* @HPDF_GetMem(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @HPDF_Dict_Free(%struct.TYPE_33__*) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_29__*, i32, i32) #1

declare dso_local void @HPDF_Type1FontDef_GetWidth(%struct.TYPE_29__* sret, %struct.TYPE_32__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_33__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_33__*, i8*, i32) #1

declare dso_local i64 @Type1Font_CreateDescriptor(%struct.TYPE_31__*, %struct.TYPE_33__*, i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
