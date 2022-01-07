; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_tt.c_CreateDescriptor.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_tt.c_CreateDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c" HPDF_TTFont_CreateDescriptor\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"FontDescriptor\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Ascent\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Descent\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CapHeight\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"StemV\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"XHeight\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CharSet\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"FontFile2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Length1\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Length2\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Length3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*)* @CreateDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateDescriptor(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %4, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %5, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %6, align 8
  %24 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %30, label %220, label %31

31:                                               ; preds = %1
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_20__* @HPDF_Dict_New(i32 %34)
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %7, align 8
  store i64 0, i64* %8, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @HPDF_Error_GetCode(i32 %41)
  store i64 %42, i64* %2, align 8
  br label %228

43:                                               ; preds = %31
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = call i64 @HPDF_Xref_Add(i32 %46, %struct.TYPE_20__* %47)
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %8, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = call i64 @HPDF_Dict_AddName(%struct.TYPE_20__* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %8, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %8, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %8, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.TYPE_20__* @HPDF_Box_Array_New(i32 %85, i32 %88)
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %9, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = call i64 @HPDF_Dict_Add(%struct.TYPE_20__* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_20__* %91)
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %8, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @HPDF_Dict_AddName(%struct.TYPE_20__* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %98)
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %8, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  %107 = load i64, i64* %8, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %8, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %8, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load i64, i64* %8, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %8, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %43
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @HPDF_Dict_AddName(%struct.TYPE_20__* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %131)
  %133 = load i64, i64* %8, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %8, align 8
  br label %135

135:                                              ; preds = %127, %43
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* @HPDF_OK, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @HPDF_Error_GetCode(i32 %142)
  store i64 %143, i64* %2, align 8
  br label %228

144:                                              ; preds = %135
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %205

149:                                              ; preds = %144
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call %struct.TYPE_20__* @HPDF_DictStream_New(i32 %152, i32 %155)
  store %struct.TYPE_20__* %156, %struct.TYPE_20__** %10, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %158 = icmp ne %struct.TYPE_20__* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %149
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @HPDF_Error_GetCode(i32 %162)
  store i64 %163, i64* %2, align 8
  br label %228

164:                                              ; preds = %149
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @HPDF_TTFontDef_SaveFontData(%struct.TYPE_18__* %167, i32 %170)
  %172 = load i64, i64* @HPDF_OK, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @HPDF_Error_GetCode(i32 %177)
  store i64 %178, i64* %2, align 8
  br label %228

179:                                              ; preds = %164
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %182 = call i64 @HPDF_Dict_Add(%struct.TYPE_20__* %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_20__* %181)
  %183 = load i64, i64* %8, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %8, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %188)
  %190 = load i64, i64* %8, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* %8, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %193 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %194 = load i64, i64* %8, align 8
  %195 = add nsw i64 %194, %193
  store i64 %195, i64* %8, align 8
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %197 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %198 = load i64, i64* %8, align 8
  %199 = add nsw i64 %198, %197
  store i64 %199, i64* %8, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %179, %144
  %206 = load i64, i64* %8, align 8
  %207 = load i64, i64* @HPDF_OK, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @HPDF_Error_GetCode(i32 %212)
  store i64 %213, i64* %2, align 8
  br label %228

214:                                              ; preds = %205
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  store %struct.TYPE_20__* %215, %struct.TYPE_20__** %219, align 8
  br label %220

220:                                              ; preds = %214, %1
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = call i64 @HPDF_Dict_Add(%struct.TYPE_20__* %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %226)
  store i64 %227, i64* %2, align 8
  br label %228

228:                                              ; preds = %220, %209, %174, %159, %139, %38
  %229 = load i64, i64* %2, align 8
  ret i64 %229
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_20__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @HPDF_Box_Array_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_20__*, i8*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i64 @HPDF_TTFontDef_SaveFontData(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
