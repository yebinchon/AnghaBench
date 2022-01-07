; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_tt.c_HPDF_TTFont_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_tt.c_HPDF_TTFont_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32, i32, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, i32, %struct.TYPE_23__*, %struct.TYPE_20__*, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i64 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_24__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c" HPDF_TTFont_New\0A\00", align 1
@HPDF_OSUBCLASS_FONT = common dso_local global i32 0, align 4
@HPDF_ENCODER_TYPE_SINGLE_BYTE = common dso_local global i64 0, align 8
@HPDF_INVALID_ENCODER_TYPE = common dso_local global i32 0, align 4
@HPDF_FONTDEF_TYPE_TRUETYPE = common dso_local global i64 0, align 8
@HPDF_INVALID_FONTDEF_TYPE = common dso_local global i32 0, align 4
@OnWrite = common dso_local global i32 0, align 4
@BeforeWrite = common dso_local global i32 0, align 4
@OnFree = common dso_local global i32 0, align 4
@HPDF_FONT_TRUETYPE = common dso_local global i32 0, align 4
@HPDF_WMODE_HORIZONTAL = common dso_local global i32 0, align 4
@TextWidth = common dso_local global i32 0, align 4
@MeasureText = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"BaseFont\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TrueType\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"FirstChar\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"LastChar\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MissingWidth\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @HPDF_TTFont_New(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_23__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %14, align 8
  %15 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_22__* @HPDF_Dict_New(i32 %16)
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %10, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %19 = icmp ne %struct.TYPE_22__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %201

21:                                               ; preds = %4
  %22 = load i32, i32* @HPDF_OSUBCLASS_FONT, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HPDF_ENCODER_TYPE_SINGLE_BYTE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HPDF_INVALID_ENCODER_TYPE, align 4
  %38 = call i32 @HPDF_SetError(i32 %36, i32 %37, i32 0)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %201

39:                                               ; preds = %21
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HPDF_FONTDEF_TYPE_TRUETYPE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @HPDF_INVALID_FONTDEF_TYPE, align 4
  %50 = call i32 @HPDF_SetError(i32 %48, i32 %49, i32 0)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %201

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = call i8* @HPDF_GetMem(i32 %52, i32 4)
  %54 = bitcast i8* %53 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %54, %struct.TYPE_21__** %11, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %56 = icmp ne %struct.TYPE_21__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %59 = call i32 @HPDF_Dict_Free(%struct.TYPE_22__* %58)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %201

60:                                               ; preds = %51
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %62 = call i32 @HPDF_MemSet(%struct.TYPE_21__* %61, i32 0, i32 4)
  %63 = load i32, i32* @HPDF_OSUBCLASS_FONT, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @OnWrite, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @BeforeWrite, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @OnFree, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %80, align 8
  %81 = load i32, i32* @HPDF_FONT_TRUETYPE, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @HPDF_WMODE_HORIZONTAL, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @TextWidth, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @MeasureText, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 4
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %95, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 3
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i8* @HPDF_GetMem(i32 %102, i32 1024)
  %104 = bitcast i8* %103 to %struct.TYPE_21__*
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %106, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = icmp ne %struct.TYPE_21__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %60
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %113 = call i32 @HPDF_Dict_Free(%struct.TYPE_22__* %112)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %201

114:                                              ; preds = %60
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = call i32 @HPDF_MemSet(%struct.TYPE_21__* %117, i32 0, i32 1024)
  %119 = load i32, i32* %6, align 4
  %120 = call i8* @HPDF_GetMem(i32 %119, i32 1024)
  %121 = bitcast i8* %120 to %struct.TYPE_21__*
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %123, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = icmp ne %struct.TYPE_21__* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %114
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %130 = call i32 @HPDF_Dict_Free(%struct.TYPE_22__* %129)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %201

131:                                              ; preds = %114
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = call i32 @HPDF_MemSet(%struct.TYPE_21__* %134, i32 0, i32 1024)
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %139, %struct.TYPE_19__** %12, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %141 = call i64 @HPDF_Dict_AddName(%struct.TYPE_22__* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i64, i64* %14, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %14, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @HPDF_Dict_AddName(%struct.TYPE_22__* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %147)
  %149 = load i64, i64* %14, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %14, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %152 = call i64 @HPDF_Dict_AddName(%struct.TYPE_22__* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i64, i64* %14, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %14, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %158, %struct.TYPE_24__** %13, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_22__* %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  %164 = load i64, i64* %14, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %14, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_22__* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  %171 = load i64, i64* %14, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %14, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %131
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_22__* %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %181)
  %183 = load i64, i64* %14, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %14, align 8
  br label %185

185:                                              ; preds = %177, %131
  %186 = load i64, i64* %14, align 8
  %187 = load i64, i64* @HPDF_OK, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %191 = call i32 @HPDF_Dict_Free(%struct.TYPE_22__* %190)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %201

192:                                              ; preds = %185
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %195 = call i64 @HPDF_Xref_Add(i32 %193, %struct.TYPE_22__* %194)
  %196 = load i64, i64* @HPDF_OK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %201

199:                                              ; preds = %192
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %200, %struct.TYPE_22__** %5, align 8
  br label %201

201:                                              ; preds = %199, %198, %189, %128, %111, %57, %45, %33, %20
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  ret %struct.TYPE_22__* %202
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_22__* @HPDF_Dict_New(i32) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i8* @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @HPDF_Dict_Free(%struct.TYPE_22__*) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_22__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
