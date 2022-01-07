; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_dict.c_HPDF_Dict_Write.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_dict.c_HPDF_Dict_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 (%struct.TYPE_32__*)*, i32, i64 (%struct.TYPE_32__*, %struct.TYPE_28__*)*, i64 (%struct.TYPE_32__*)*, i64, i32, %struct.TYPE_25__*, i32*, i32, %struct.TYPE_26__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_ENCRYPT = common dso_local global i32 0, align 4
@HPDF_STREAM_FILTER_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@HPDF_STREAM_FILTER_FLATE_DECODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"FlateDecode\00", align 1
@HPDF_STREAM_FILTER_DCT_DECODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"DCTDecode\00", align 1
@HPDF_STREAM_FILTER_CCITT_DECODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"CCITTFaxDecode\00", align 1
@HPDF_INVALID_OBJECT = common dso_local global i32 0, align 4
@HPDF_OTYPE_HIDDEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c" HPDF_Dict_Write obj=%p skipped obj_id=0x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@HPDF_OCLASS_NUMBER = common dso_local global i32 0, align 4
@HPDF_DICT_STREAM_LENGTH_NOT_FOUND = common dso_local global i32 0, align 4
@HPDF_OTYPE_INDIRECT = common dso_local global i32 0, align 4
@HPDF_DICT_ITEM_UNEXPECTED_TYPE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"\0Astream\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"\0Aendstream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Dict_Write(%struct.TYPE_32__* %0, %struct.TYPE_28__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %16 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_28__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @HPDF_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %4, align 8
  br label %341

22:                                               ; preds = %3
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load i64 (%struct.TYPE_32__*)*, i64 (%struct.TYPE_32__*)** %24, align 8
  %26 = icmp ne i64 (%struct.TYPE_32__*)* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  %30 = load i64 (%struct.TYPE_32__*)*, i64 (%struct.TYPE_32__*)** %29, align 8
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %32 = call i64 %30(%struct.TYPE_32__* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* @HPDF_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %4, align 8
  br label %341

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %44 = load i32, i32* @HPDF_OSUBCLASS_ENCRYPT, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32* null, i32** %7, align 8
  br label %48

48:                                               ; preds = %47, %38
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %135

53:                                               ; preds = %48
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HPDF_STREAM_FILTER_NONE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %61 = call i32 @HPDF_Dict_RemoveElement(%struct.TYPE_32__* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %134

62:                                               ; preds = %53
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %64 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %65 = call i64 @HPDF_Dict_GetItem(%struct.TYPE_32__* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @HPDF_Array_New(i32 %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @HPDF_Error_GetCode(i32 %78)
  store i64 %79, i64* %4, align 8
  br label %341

80:                                               ; preds = %68
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i64 @HPDF_Dict_Add(%struct.TYPE_32__* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @HPDF_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %4, align 8
  br label %341

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %62
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @HPDF_Array_Clear(i64 %91)
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @HPDF_STREAM_FILTER_FLATE_DECODE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @HPDF_Array_AddName(i64 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %90
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @HPDF_STREAM_FILTER_DCT_DECODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @HPDF_Array_AddName(i64 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @HPDF_STREAM_FILTER_CCITT_DECODE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @HPDF_Array_AddName(i64 %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %112
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @HPDF_Dict_Add_FilterParams(%struct.TYPE_32__* %128, i32* %131)
  br label %133

133:                                              ; preds = %127, %122
  br label %134

134:                                              ; preds = %133, %59
  br label %135

135:                                              ; preds = %134, %48
  store i64 0, i64* %8, align 8
  br label %136

136:                                              ; preds = %224, %135
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 6
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %137, %142
  br i1 %143, label %144, label %227

144:                                              ; preds = %136
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @HPDF_List_ItemAt(%struct.TYPE_25__* %147, i64 %148)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %151, %struct.TYPE_31__** %11, align 8
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %155, %struct.TYPE_29__** %12, align 8
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %144
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @HPDF_INVALID_OBJECT, align 4
  %165 = call i64 @HPDF_SetError(i32 %163, i32 %164, i32 0)
  store i64 %165, i64* %4, align 8
  br label %341

166:                                              ; preds = %144
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @HPDF_OTYPE_HIDDEN, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %166
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = call i32 @HPDF_PTRACE(i8* %181)
  br label %223

183:                                              ; preds = %166
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @HPDF_Stream_WriteEscapeName(%struct.TYPE_28__* %184, i32 %187)
  store i64 %188, i64* %9, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* @HPDF_OK, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %183
  %193 = load i64, i64* %9, align 8
  store i64 %193, i64* %4, align 8
  br label %341

194:                                              ; preds = %183
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %196 = call i64 @HPDF_Stream_WriteChar(%struct.TYPE_28__* %195, i8 signext 32)
  store i64 %196, i64* %9, align 8
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* @HPDF_OK, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i64, i64* %9, align 8
  store i64 %201, i64* %4, align 8
  br label %341

202:                                              ; preds = %194
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = call i64 @HPDF_Obj_Write(i64 %205, %struct.TYPE_28__* %206, i32* %207)
  store i64 %208, i64* %9, align 8
  %209 = load i64, i64* %9, align 8
  %210 = load i64, i64* @HPDF_OK, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %202
  %213 = load i64, i64* %9, align 8
  store i64 %213, i64* %4, align 8
  br label %341

214:                                              ; preds = %202
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %216 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_28__* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i64 %216, i64* %9, align 8
  %217 = load i64, i64* %9, align 8
  %218 = load i64, i64* @HPDF_OK, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i64, i64* %9, align 8
  store i64 %221, i64* %4, align 8
  br label %341

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222, %173
  br label %224

224:                                              ; preds = %223
  %225 = load i64, i64* %8, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %8, align 8
  br label %136

227:                                              ; preds = %136
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 2
  %230 = load i64 (%struct.TYPE_32__*, %struct.TYPE_28__*)*, i64 (%struct.TYPE_32__*, %struct.TYPE_28__*)** %229, align 8
  %231 = icmp ne i64 (%struct.TYPE_32__*, %struct.TYPE_28__*)* %230, null
  br i1 %231, label %232, label %244

232:                                              ; preds = %227
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i32 0, i32 2
  %235 = load i64 (%struct.TYPE_32__*, %struct.TYPE_28__*)*, i64 (%struct.TYPE_32__*, %struct.TYPE_28__*)** %234, align 8
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %238 = call i64 %235(%struct.TYPE_32__* %236, %struct.TYPE_28__* %237)
  store i64 %238, i64* %9, align 8
  %239 = load i64, i64* @HPDF_OK, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = load i64, i64* %9, align 8
  store i64 %242, i64* %4, align 8
  br label %341

243:                                              ; preds = %232
  br label %244

244:                                              ; preds = %243, %227
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %246 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_28__* %245, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i64 %246, i64* %9, align 8
  %247 = load i64, i64* @HPDF_OK, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = load i64, i64* %9, align 8
  store i64 %250, i64* %4, align 8
  br label %341

251:                                              ; preds = %244
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %323

256:                                              ; preds = %251
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %258 = load i32, i32* @HPDF_OCLASS_NUMBER, align 4
  %259 = call i64 @HPDF_Dict_GetItem(%struct.TYPE_32__* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %258)
  %260 = inttoptr i64 %259 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %260, %struct.TYPE_30__** %14, align 8
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %262 = icmp ne %struct.TYPE_30__* %261, null
  br i1 %262, label %269, label %263

263:                                              ; preds = %256
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @HPDF_DICT_STREAM_LENGTH_NOT_FOUND, align 4
  %268 = call i64 @HPDF_SetError(i32 %266, i32 %267, i32 0)
  store i64 %268, i64* %4, align 8
  br label %341

269:                                              ; preds = %256
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @HPDF_OTYPE_INDIRECT, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %269
  %278 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @HPDF_DICT_ITEM_UNEXPECTED_TYPE, align 4
  %282 = call i64 @HPDF_SetError(i32 %280, i32 %281, i32 0)
  store i64 %282, i64* %4, align 8
  br label %341

283:                                              ; preds = %269
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %285 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_28__* %284, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i64 %285, i64* %9, align 8
  %286 = load i64, i64* @HPDF_OK, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load i64, i64* %9, align 8
  store i64 %289, i64* %4, align 8
  br label %341

290:                                              ; preds = %283
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %13, align 8
  %294 = load i32*, i32** %7, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %290
  %297 = load i32*, i32** %7, align 8
  %298 = call i32 @HPDF_Encrypt_Reset(i32* %297)
  br label %299

299:                                              ; preds = %296, %290
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32*, i32** %7, align 8
  %308 = call i64 @HPDF_Stream_WriteToStream(i64 %302, %struct.TYPE_28__* %303, i32 %306, i32* %307)
  store i64 %308, i64* %9, align 8
  %309 = load i64, i64* @HPDF_OK, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %299
  %312 = load i64, i64* %9, align 8
  store i64 %312, i64* %4, align 8
  br label %341

313:                                              ; preds = %299
  %314 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %315 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %13, align 8
  %319 = sub nsw i64 %317, %318
  %320 = call i32 @HPDF_Number_SetValue(%struct.TYPE_30__* %314, i64 %319)
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %322 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_28__* %321, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i64 %322, i64* %9, align 8
  br label %323

323:                                              ; preds = %313, %251
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 3
  %326 = load i64 (%struct.TYPE_32__*)*, i64 (%struct.TYPE_32__*)** %325, align 8
  %327 = icmp ne i64 (%struct.TYPE_32__*)* %326, null
  br i1 %327, label %328, label %339

328:                                              ; preds = %323
  %329 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %329, i32 0, i32 3
  %331 = load i64 (%struct.TYPE_32__*)*, i64 (%struct.TYPE_32__*)** %330, align 8
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %333 = call i64 %331(%struct.TYPE_32__* %332)
  store i64 %333, i64* %9, align 8
  %334 = load i64, i64* @HPDF_OK, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %328
  %337 = load i64, i64* %9, align 8
  store i64 %337, i64* %4, align 8
  br label %341

338:                                              ; preds = %328
  br label %339

339:                                              ; preds = %338, %323
  %340 = load i64, i64* %9, align 8
  store i64 %340, i64* %4, align 8
  br label %341

341:                                              ; preds = %339, %336, %311, %288, %277, %263, %249, %241, %220, %212, %200, %192, %160, %87, %75, %35, %20
  %342 = load i64, i64* %4, align 8
  ret i64 %342
}

declare dso_local i64 @HPDF_Stream_WriteStr(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @HPDF_Dict_RemoveElement(%struct.TYPE_32__*, i8*) #1

declare dso_local i64 @HPDF_Dict_GetItem(%struct.TYPE_32__*, i8*, i32) #1

declare dso_local i64 @HPDF_Array_New(i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_32__*, i8*, i64) #1

declare dso_local i32 @HPDF_Array_Clear(i64) #1

declare dso_local i32 @HPDF_Array_AddName(i64, i8*) #1

declare dso_local i32 @HPDF_Dict_Add_FilterParams(%struct.TYPE_32__*, i32*) #1

declare dso_local i32 @HPDF_List_ItemAt(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Stream_WriteEscapeName(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @HPDF_Stream_WriteChar(%struct.TYPE_28__*, i8 signext) #1

declare dso_local i64 @HPDF_Obj_Write(i64, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @HPDF_Encrypt_Reset(i32*) #1

declare dso_local i64 @HPDF_Stream_WriteToStream(i64, %struct.TYPE_28__*, i32, i32*) #1

declare dso_local i32 @HPDF_Number_SetValue(%struct.TYPE_30__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
