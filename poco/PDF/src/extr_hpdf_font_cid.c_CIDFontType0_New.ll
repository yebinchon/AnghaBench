; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_CIDFontType0_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_CIDFontType0_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_29__*, %struct.TYPE_26__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i64*, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i64, i64 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c" HPDF_CIDFontType0_New\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"CIDFontType0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"DW\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"BaseFont\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"DW2\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"FontDescriptor\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Ascent\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Descent\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"CapHeight\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"MissingWidth\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"StemV\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"CIDSystemInfo\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Registry\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Supplement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (%struct.TYPE_28__*, i32)* @CIDFontType0_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @CIDFontType0_New(%struct.TYPE_28__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i64, i64* @HPDF_OK, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %7, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %8, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %33, %struct.TYPE_32__** %9, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %35, align 8
  store %struct.TYPE_29__* %36, %struct.TYPE_29__** %10, align 8
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %41, %struct.TYPE_30__** %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %15, align 8
  %42 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_28__* @HPDF_Dict_New(i32 %45)
  store %struct.TYPE_28__* %46, %struct.TYPE_28__** %13, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %48 = icmp ne %struct.TYPE_28__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %2
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

50:                                               ; preds = %2
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %53 = call i64 @HPDF_Xref_Add(i32 %51, %struct.TYPE_28__* %52)
  %54 = load i64, i64* @HPDF_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

57:                                               ; preds = %50
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %59 = call i64 @HPDF_Dict_AddName(%struct.TYPE_28__* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %63 = call i64 @HPDF_Dict_AddName(%struct.TYPE_28__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %6, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %6, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @HPDF_Dict_AddName(%struct.TYPE_28__* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %76)
  %78 = load i64, i64* %6, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @HPDF_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %57
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

84:                                               ; preds = %57
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_28__* @HPDF_Array_New(i32 %87)
  store %struct.TYPE_28__* %88, %struct.TYPE_28__** %14, align 8
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %90 = icmp ne %struct.TYPE_28__* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

92:                                               ; preds = %84
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %95 = call i64 @HPDF_Dict_Add(%struct.TYPE_28__* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_28__* %94)
  %96 = load i64, i64* @HPDF_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

99:                                               ; preds = %92
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @HPDF_Array_AddNumber(%struct.TYPE_28__* %100, i64 %105)
  %107 = load i64, i64* %6, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %6, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @HPDF_Array_AddNumber(%struct.TYPE_28__* %109, i64 %114)
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %6, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @HPDF_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %99
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

122:                                              ; preds = %99
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.TYPE_28__* @HPDF_Array_New(i32 %125)
  store %struct.TYPE_28__* %126, %struct.TYPE_28__** %14, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %128 = icmp ne %struct.TYPE_28__* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

130:                                              ; preds = %122
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %133 = call i64 @HPDF_Dict_Add(%struct.TYPE_28__* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_28__* %132)
  %134 = load i64, i64* @HPDF_OK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

137:                                              ; preds = %130
  store i64 0, i64* %16, align 8
  br label %138

138:                                              ; preds = %199, %137
  %139 = load i64, i64* %16, align 8
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %139, %144
  br i1 %145, label %146, label %202

146:                                              ; preds = %138
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %148, align 8
  %150 = load i64, i64* %16, align 8
  %151 = call i64 @HPDF_List_ItemAt(%struct.TYPE_25__* %149, i64 %150)
  %152 = inttoptr i64 %151 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %152, %struct.TYPE_31__** %19, align 8
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %12, align 8
  %157 = add nsw i64 %156, 1
  %158 = icmp ne i64 %155, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %146
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %161 = icmp ne %struct.TYPE_28__* %160, null
  br i1 %161, label %183, label %162

162:                                              ; preds = %159, %146
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call %struct.TYPE_28__* @HPDF_Array_New(i32 %165)
  store %struct.TYPE_28__* %166, %struct.TYPE_28__** %15, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %168 = icmp ne %struct.TYPE_28__* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

170:                                              ; preds = %162
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @HPDF_Array_AddNumber(%struct.TYPE_28__* %171, i64 %174)
  %176 = load i64, i64* %6, align 8
  %177 = add nsw i64 %176, %175
  store i64 %177, i64* %6, align 8
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %180 = call i64 @HPDF_Array_Add(%struct.TYPE_28__* %178, %struct.TYPE_28__* %179)
  %181 = load i64, i64* %6, align 8
  %182 = add nsw i64 %181, %180
  store i64 %182, i64* %6, align 8
  br label %183

183:                                              ; preds = %170, %159
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @HPDF_Array_AddNumber(%struct.TYPE_28__* %184, i64 %187)
  %189 = load i64, i64* %6, align 8
  %190 = add nsw i64 %189, %188
  store i64 %190, i64* %6, align 8
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %12, align 8
  %194 = load i64, i64* %6, align 8
  %195 = load i64, i64* @HPDF_OK, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

198:                                              ; preds = %183
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %16, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %16, align 8
  br label %138

202:                                              ; preds = %138
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call %struct.TYPE_28__* @HPDF_Dict_New(i32 %205)
  store %struct.TYPE_28__* %206, %struct.TYPE_28__** %17, align 8
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %208 = icmp ne %struct.TYPE_28__* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %202
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

210:                                              ; preds = %202
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %213 = call i64 @HPDF_Xref_Add(i32 %211, %struct.TYPE_28__* %212)
  %214 = load i64, i64* @HPDF_OK, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

217:                                              ; preds = %210
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %220 = call i64 @HPDF_Dict_Add(%struct.TYPE_28__* %218, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_28__* %219)
  %221 = load i64, i64* @HPDF_OK, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

224:                                              ; preds = %217
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %226 = call i64 @HPDF_Dict_AddName(%struct.TYPE_28__* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %227 = load i64, i64* %6, align 8
  %228 = add nsw i64 %227, %226
  store i64 %228, i64* %6, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i64 @HPDF_Dict_AddName(%struct.TYPE_28__* %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %232)
  %234 = load i64, i64* %6, align 8
  %235 = add nsw i64 %234, %233
  store i64 %235, i64* %6, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %236, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %239)
  %241 = load i64, i64* %6, align 8
  %242 = add nsw i64 %241, %240
  store i64 %242, i64* %6, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %246)
  %248 = load i64, i64* %6, align 8
  %249 = add nsw i64 %248, %247
  store i64 %249, i64* %6, align 8
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %253)
  %255 = load i64, i64* %6, align 8
  %256 = add nsw i64 %255, %254
  store i64 %256, i64* %6, align 8
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %257, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %260)
  %262 = load i64, i64* %6, align 8
  %263 = add nsw i64 %262, %261
  store i64 %263, i64* %6, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %267)
  %269 = load i64, i64* %6, align 8
  %270 = add nsw i64 %269, %268
  store i64 %270, i64* %6, align 8
  %271 = load i64, i64* %6, align 8
  %272 = load i64, i64* @HPDF_OK, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %224
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

275:                                              ; preds = %224
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = call %struct.TYPE_28__* @HPDF_Box_Array_New(i32 %278, i32 %281)
  store %struct.TYPE_28__* %282, %struct.TYPE_28__** %14, align 8
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %284 = icmp ne %struct.TYPE_28__* %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %275
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

286:                                              ; preds = %275
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %289 = call i64 @HPDF_Dict_Add(%struct.TYPE_28__* %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_28__* %288)
  %290 = load i64, i64* %6, align 8
  %291 = add nsw i64 %290, %289
  store i64 %291, i64* %6, align 8
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %292, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %295)
  %297 = load i64, i64* %6, align 8
  %298 = add nsw i64 %297, %296
  store i64 %298, i64* %6, align 8
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %302)
  %304 = load i64, i64* %6, align 8
  %305 = add nsw i64 %304, %303
  store i64 %305, i64* %6, align 8
  %306 = load i64, i64* %6, align 8
  %307 = load i64, i64* @HPDF_OK, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %286
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

310:                                              ; preds = %286
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call %struct.TYPE_28__* @HPDF_Dict_New(i32 %313)
  store %struct.TYPE_28__* %314, %struct.TYPE_28__** %18, align 8
  %315 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %316 = icmp ne %struct.TYPE_28__* %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %310
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

318:                                              ; preds = %310
  %319 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %321 = call i64 @HPDF_Dict_Add(%struct.TYPE_28__* %319, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_28__* %320)
  %322 = load i64, i64* @HPDF_OK, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %318
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

325:                                              ; preds = %318
  %326 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = call %struct.TYPE_28__* @HPDF_String_New(i32 %329, i32 %332, i32* null)
  %334 = call i64 @HPDF_Dict_Add(%struct.TYPE_28__* %326, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), %struct.TYPE_28__* %333)
  %335 = load i64, i64* %6, align 8
  %336 = add nsw i64 %335, %334
  store i64 %336, i64* %6, align 8
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = call %struct.TYPE_28__* @HPDF_String_New(i32 %340, i32 %343, i32* null)
  %345 = call i64 @HPDF_Dict_Add(%struct.TYPE_28__* %337, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), %struct.TYPE_28__* %344)
  %346 = load i64, i64* %6, align 8
  %347 = add nsw i64 %346, %345
  store i64 %347, i64* %6, align 8
  %348 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__* %348, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %351)
  %353 = load i64, i64* %6, align 8
  %354 = add nsw i64 %353, %352
  store i64 %354, i64* %6, align 8
  %355 = load i64, i64* %6, align 8
  %356 = load i64, i64* @HPDF_OK, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %325
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %361

359:                                              ; preds = %325
  %360 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %360, %struct.TYPE_28__** %3, align 8
  br label %361

361:                                              ; preds = %359, %358, %324, %317, %309, %285, %274, %223, %216, %209, %197, %169, %136, %129, %121, %98, %91, %83, %56, %49
  %362 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  ret %struct.TYPE_28__* %362
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_28__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_28__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_28__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local %struct.TYPE_28__* @HPDF_Array_New(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_28__*, i8*, %struct.TYPE_28__*) #1

declare dso_local i64 @HPDF_Array_AddNumber(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @HPDF_List_ItemAt(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @HPDF_Array_Add(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @HPDF_Box_Array_New(i32, i32) #1

declare dso_local %struct.TYPE_28__* @HPDF_String_New(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
