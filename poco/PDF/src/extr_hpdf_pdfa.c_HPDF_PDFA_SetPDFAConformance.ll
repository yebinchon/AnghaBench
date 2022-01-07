; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pdfa.c_HPDF_PDFA_SetPDFAConformance.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pdfa.c_HPDF_PDFA_SetPDFAConformance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@HPDF_INVALID_DOCUMENT = common dso_local global i64 0, align 8
@HPDF_INFO_TITLE = common dso_local global i32 0, align 4
@HPDF_INFO_AUTHOR = common dso_local global i32 0, align 4
@HPDF_INFO_SUBJECT = common dso_local global i32 0, align 4
@HPDF_INFO_CREATION_DATE = common dso_local global i32 0, align 4
@HPDF_INFO_MOD_DATE = common dso_local global i32 0, align 4
@HPDF_INFO_CREATOR = common dso_local global i32 0, align 4
@HPDF_INFO_KEYWORDS = common dso_local global i32 0, align 4
@HPDF_INFO_PRODUCER = common dso_local global i32 0, align 4
@HPDF_INVALID_STREAM = common dso_local global i64 0, align 8
@HPDF_VER_14 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Metadata\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SubType\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"XML\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HEADER = common dso_local global i8* null, align 8
@DC_HEADER = common dso_local global i8* null, align 8
@DC_TITLE_STARTTAG = common dso_local global i8* null, align 8
@DC_TITLE_ENDTAG = common dso_local global i8* null, align 8
@DC_CREATOR_STARTTAG = common dso_local global i8* null, align 8
@DC_CREATOR_ENDTAG = common dso_local global i8* null, align 8
@DC_DESCRIPTION_STARTTAG = common dso_local global i8* null, align 8
@DC_DESCRIPTION_ENDTAG = common dso_local global i8* null, align 8
@DC_FOOTER = common dso_local global i8* null, align 8
@XMP_HEADER = common dso_local global i8* null, align 8
@XMP_CREATORTOOL_STARTTAG = common dso_local global i8* null, align 8
@XMP_CREATORTOOL_ENDTAG = common dso_local global i8* null, align 8
@XMP_CREATE_DATE_STARTTAG = common dso_local global i8* null, align 8
@XMP_CREATE_DATE_ENDTAG = common dso_local global i8* null, align 8
@XMP_MOD_DATE_STARTTAG = common dso_local global i8* null, align 8
@XMP_MOD_DATE_ENDTAG = common dso_local global i8* null, align 8
@XMP_FOOTER = common dso_local global i8* null, align 8
@PDF_HEADER = common dso_local global i8* null, align 8
@PDF_KEYWORDS_STARTTAG = common dso_local global i8* null, align 8
@PDF_KEYWORDS_ENDTAG = common dso_local global i8* null, align 8
@PDF_PRODUCER_STARTTAG = common dso_local global i8* null, align 8
@PDF_PRODUCER_ENDTAG = common dso_local global i8* null, align 8
@PDF_FOOTER = common dso_local global i8* null, align 8
@PDFAID_PDFA1A = common dso_local global i8* null, align 8
@PDFAID_PDFA1B = common dso_local global i8* null, align 8
@FOOTER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_PDFA_SetPDFAConformance(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call i32 @HPDF_HasDoc(%struct.TYPE_11__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @HPDF_INVALID_DOCUMENT, align 8
  store i64 %21, i64* %3, align 8
  br label %417

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = load i32, i32* @HPDF_INFO_TITLE, align 4
  %25 = call i64 @HPDF_GetInfoAttr(%struct.TYPE_11__* %23, i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %8, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = load i32, i32* @HPDF_INFO_AUTHOR, align 4
  %29 = call i64 @HPDF_GetInfoAttr(%struct.TYPE_11__* %27, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load i32, i32* @HPDF_INFO_SUBJECT, align 4
  %33 = call i64 @HPDF_GetInfoAttr(%struct.TYPE_11__* %31, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %10, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load i32, i32* @HPDF_INFO_CREATION_DATE, align 4
  %37 = call i64 @HPDF_GetInfoAttr(%struct.TYPE_11__* %35, i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %12, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = load i32, i32* @HPDF_INFO_MOD_DATE, align 4
  %41 = call i64 @HPDF_GetInfoAttr(%struct.TYPE_11__* %39, i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %13, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = load i32, i32* @HPDF_INFO_CREATOR, align 4
  %45 = call i64 @HPDF_GetInfoAttr(%struct.TYPE_11__* %43, i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %11, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = load i32, i32* @HPDF_INFO_KEYWORDS, align 4
  %49 = call i64 @HPDF_GetInfoAttr(%struct.TYPE_11__* %47, i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %14, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = load i32, i32* @HPDF_INFO_PRODUCER, align 4
  %53 = call i64 @HPDF_GetInfoAttr(%struct.TYPE_11__* %51, i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %15, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %22
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %75, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %14, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %415

75:                                               ; preds = %72, %69, %66, %63, %60, %57, %22
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.TYPE_10__* @HPDF_DictStream_New(i32 %78, i32 %81)
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %6, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = icmp ne %struct.TYPE_10__* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %75
  %86 = load i64, i64* @HPDF_INVALID_STREAM, align 8
  store i64 %86, i64* %3, align 8
  br label %417

87:                                               ; preds = %75
  %88 = load i32, i32* @HPDF_VER_14, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = call i32 @HPDF_Dict_AddName(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = call i32 @HPDF_Dict_AddName(%struct.TYPE_10__* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i64, i64* @HPDF_OK, align 8
  store i64 %95, i64* %7, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** @HEADER, align 8
  %100 = call i64 @HPDF_Stream_WriteStr(i32 %98, i8* %99)
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %7, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %87
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %10, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %201

111:                                              ; preds = %108, %105, %87
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** @DC_HEADER, align 8
  %116 = call i64 @HPDF_Stream_WriteStr(i32 %114, i8* %115)
  %117 = load i64, i64* %7, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %7, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %143

121:                                              ; preds = %111
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** @DC_TITLE_STARTTAG, align 8
  %126 = call i64 @HPDF_Stream_WriteStr(i32 %124, i8* %125)
  %127 = load i64, i64* %7, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %7, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = call i64 @HPDF_Stream_WriteStr(i32 %131, i8* %132)
  %134 = load i64, i64* %7, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %7, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** @DC_TITLE_ENDTAG, align 8
  %140 = call i64 @HPDF_Stream_WriteStr(i32 %138, i8* %139)
  %141 = load i64, i64* %7, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %121, %111
  %144 = load i8*, i8** %9, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %168

146:                                              ; preds = %143
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** @DC_CREATOR_STARTTAG, align 8
  %151 = call i64 @HPDF_Stream_WriteStr(i32 %149, i8* %150)
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %7, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %9, align 8
  %158 = call i64 @HPDF_Stream_WriteStr(i32 %156, i8* %157)
  %159 = load i64, i64* %7, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %7, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** @DC_CREATOR_ENDTAG, align 8
  %165 = call i64 @HPDF_Stream_WriteStr(i32 %163, i8* %164)
  %166 = load i64, i64* %7, align 8
  %167 = add nsw i64 %166, %165
  store i64 %167, i64* %7, align 8
  br label %168

168:                                              ; preds = %146, %143
  %169 = load i8*, i8** %10, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** @DC_DESCRIPTION_STARTTAG, align 8
  %176 = call i64 @HPDF_Stream_WriteStr(i32 %174, i8* %175)
  %177 = load i64, i64* %7, align 8
  %178 = add nsw i64 %177, %176
  store i64 %178, i64* %7, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = call i64 @HPDF_Stream_WriteStr(i32 %181, i8* %182)
  %184 = load i64, i64* %7, align 8
  %185 = add nsw i64 %184, %183
  store i64 %185, i64* %7, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i8*, i8** @DC_DESCRIPTION_ENDTAG, align 8
  %190 = call i64 @HPDF_Stream_WriteStr(i32 %188, i8* %189)
  %191 = load i64, i64* %7, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %7, align 8
  br label %193

193:                                              ; preds = %171, %168
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i8*, i8** @DC_FOOTER, align 8
  %198 = call i64 @HPDF_Stream_WriteStr(i32 %196, i8* %197)
  %199 = load i64, i64* %7, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %7, align 8
  br label %201

201:                                              ; preds = %193, %108
  %202 = load i8*, i8** %12, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %201
  %205 = load i8*, i8** %13, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i8*, i8** %11, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %300

210:                                              ; preds = %207, %204, %201
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i8*, i8** @XMP_HEADER, align 8
  %215 = call i64 @HPDF_Stream_WriteStr(i32 %213, i8* %214)
  %216 = load i64, i64* %7, align 8
  %217 = add nsw i64 %216, %215
  store i64 %217, i64* %7, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %242

220:                                              ; preds = %210
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i8*, i8** @XMP_CREATORTOOL_STARTTAG, align 8
  %225 = call i64 @HPDF_Stream_WriteStr(i32 %223, i8* %224)
  %226 = load i64, i64* %7, align 8
  %227 = add nsw i64 %226, %225
  store i64 %227, i64* %7, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i8*, i8** %11, align 8
  %232 = call i64 @HPDF_Stream_WriteStr(i32 %230, i8* %231)
  %233 = load i64, i64* %7, align 8
  %234 = add nsw i64 %233, %232
  store i64 %234, i64* %7, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i8*, i8** @XMP_CREATORTOOL_ENDTAG, align 8
  %239 = call i64 @HPDF_Stream_WriteStr(i32 %237, i8* %238)
  %240 = load i64, i64* %7, align 8
  %241 = add nsw i64 %240, %239
  store i64 %241, i64* %7, align 8
  br label %242

242:                                              ; preds = %220, %210
  %243 = load i8*, i8** %12, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %267

245:                                              ; preds = %242
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i8*, i8** @XMP_CREATE_DATE_STARTTAG, align 8
  %250 = call i64 @HPDF_Stream_WriteStr(i32 %248, i8* %249)
  %251 = load i64, i64* %7, align 8
  %252 = add nsw i64 %251, %250
  store i64 %252, i64* %7, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i8*, i8** %12, align 8
  %257 = call i64 @ConvertDateToXMDate(i32 %255, i8* %256)
  %258 = load i64, i64* %7, align 8
  %259 = add nsw i64 %258, %257
  store i64 %259, i64* %7, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i8*, i8** @XMP_CREATE_DATE_ENDTAG, align 8
  %264 = call i64 @HPDF_Stream_WriteStr(i32 %262, i8* %263)
  %265 = load i64, i64* %7, align 8
  %266 = add nsw i64 %265, %264
  store i64 %266, i64* %7, align 8
  br label %267

267:                                              ; preds = %245, %242
  %268 = load i8*, i8** %13, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %292

270:                                              ; preds = %267
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i8*, i8** @XMP_MOD_DATE_STARTTAG, align 8
  %275 = call i64 @HPDF_Stream_WriteStr(i32 %273, i8* %274)
  %276 = load i64, i64* %7, align 8
  %277 = add nsw i64 %276, %275
  store i64 %277, i64* %7, align 8
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i8*, i8** %13, align 8
  %282 = call i64 @ConvertDateToXMDate(i32 %280, i8* %281)
  %283 = load i64, i64* %7, align 8
  %284 = add nsw i64 %283, %282
  store i64 %284, i64* %7, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i8*, i8** @XMP_MOD_DATE_ENDTAG, align 8
  %289 = call i64 @HPDF_Stream_WriteStr(i32 %287, i8* %288)
  %290 = load i64, i64* %7, align 8
  %291 = add nsw i64 %290, %289
  store i64 %291, i64* %7, align 8
  br label %292

292:                                              ; preds = %270, %267
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i8*, i8** @XMP_FOOTER, align 8
  %297 = call i64 @HPDF_Stream_WriteStr(i32 %295, i8* %296)
  %298 = load i64, i64* %7, align 8
  %299 = add nsw i64 %298, %297
  store i64 %299, i64* %7, align 8
  br label %300

300:                                              ; preds = %292, %207
  %301 = load i8*, i8** %14, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i8*, i8** %15, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %371

306:                                              ; preds = %303, %300
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i8*, i8** @PDF_HEADER, align 8
  %311 = call i64 @HPDF_Stream_WriteStr(i32 %309, i8* %310)
  %312 = load i64, i64* %7, align 8
  %313 = add nsw i64 %312, %311
  store i64 %313, i64* %7, align 8
  %314 = load i8*, i8** %14, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %338

316:                                              ; preds = %306
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i8*, i8** @PDF_KEYWORDS_STARTTAG, align 8
  %321 = call i64 @HPDF_Stream_WriteStr(i32 %319, i8* %320)
  %322 = load i64, i64* %7, align 8
  %323 = add nsw i64 %322, %321
  store i64 %323, i64* %7, align 8
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i8*, i8** %14, align 8
  %328 = call i64 @HPDF_Stream_WriteStr(i32 %326, i8* %327)
  %329 = load i64, i64* %7, align 8
  %330 = add nsw i64 %329, %328
  store i64 %330, i64* %7, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i8*, i8** @PDF_KEYWORDS_ENDTAG, align 8
  %335 = call i64 @HPDF_Stream_WriteStr(i32 %333, i8* %334)
  %336 = load i64, i64* %7, align 8
  %337 = add nsw i64 %336, %335
  store i64 %337, i64* %7, align 8
  br label %338

338:                                              ; preds = %316, %306
  %339 = load i8*, i8** %15, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %341, label %363

341:                                              ; preds = %338
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i8*, i8** @PDF_PRODUCER_STARTTAG, align 8
  %346 = call i64 @HPDF_Stream_WriteStr(i32 %344, i8* %345)
  %347 = load i64, i64* %7, align 8
  %348 = add nsw i64 %347, %346
  store i64 %348, i64* %7, align 8
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load i8*, i8** %15, align 8
  %353 = call i64 @HPDF_Stream_WriteStr(i32 %351, i8* %352)
  %354 = load i64, i64* %7, align 8
  %355 = add nsw i64 %354, %353
  store i64 %355, i64* %7, align 8
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i8*, i8** @PDF_PRODUCER_ENDTAG, align 8
  %360 = call i64 @HPDF_Stream_WriteStr(i32 %358, i8* %359)
  %361 = load i64, i64* %7, align 8
  %362 = add nsw i64 %361, %360
  store i64 %362, i64* %7, align 8
  br label %363

363:                                              ; preds = %341, %338
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load i8*, i8** @PDF_FOOTER, align 8
  %368 = call i64 @HPDF_Stream_WriteStr(i32 %366, i8* %367)
  %369 = load i64, i64* %7, align 8
  %370 = add nsw i64 %369, %368
  store i64 %370, i64* %7, align 8
  br label %371

371:                                              ; preds = %363, %303
  %372 = load i32, i32* %5, align 4
  switch i32 %372, label %389 [
    i32 129, label %373
    i32 128, label %381
  ]

373:                                              ; preds = %371
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load i8*, i8** @PDFAID_PDFA1A, align 8
  %378 = call i64 @HPDF_Stream_WriteStr(i32 %376, i8* %377)
  %379 = load i64, i64* %7, align 8
  %380 = add nsw i64 %379, %378
  store i64 %380, i64* %7, align 8
  br label %389

381:                                              ; preds = %371
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = load i8*, i8** @PDFAID_PDFA1B, align 8
  %386 = call i64 @HPDF_Stream_WriteStr(i32 %384, i8* %385)
  %387 = load i64, i64* %7, align 8
  %388 = add nsw i64 %387, %386
  store i64 %388, i64* %7, align 8
  br label %389

389:                                              ; preds = %371, %381, %373
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i8*, i8** @FOOTER, align 8
  %394 = call i64 @HPDF_Stream_WriteStr(i32 %392, i8* %393)
  %395 = load i64, i64* %7, align 8
  %396 = add nsw i64 %395, %394
  store i64 %396, i64* %7, align 8
  %397 = load i64, i64* %7, align 8
  %398 = load i64, i64* @HPDF_OK, align 8
  %399 = icmp ne i64 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %389
  %401 = load i64, i64* @HPDF_INVALID_STREAM, align 8
  store i64 %401, i64* %3, align 8
  br label %417

402:                                              ; preds = %389
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %407 = call i64 @HPDF_Dict_Add(i32 %405, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %406)
  store i64 %407, i64* %7, align 8
  %408 = load i64, i64* @HPDF_OK, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %412

410:                                              ; preds = %402
  %411 = load i64, i64* %7, align 8
  store i64 %411, i64* %3, align 8
  br label %417

412:                                              ; preds = %402
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %414 = call i64 @HPDF_PDFA_GenerateID(%struct.TYPE_11__* %413)
  store i64 %414, i64* %3, align 8
  br label %417

415:                                              ; preds = %72
  %416 = load i64, i64* @HPDF_OK, align 8
  store i64 %416, i64* %3, align 8
  br label %417

417:                                              ; preds = %415, %412, %410, %400, %85, %20
  %418 = load i64, i64* %3, align 8
  ret i64 %418
}

declare dso_local i32 @HPDF_HasDoc(%struct.TYPE_11__*) #1

declare dso_local i64 @HPDF_GetInfoAttr(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_10__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i32 @HPDF_Dict_AddName(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Stream_WriteStr(i32, i8*) #1

declare dso_local i64 @ConvertDateToXMDate(i32, i8*) #1

declare dso_local i64 @HPDF_Dict_Add(i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @HPDF_PDFA_GenerateID(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
