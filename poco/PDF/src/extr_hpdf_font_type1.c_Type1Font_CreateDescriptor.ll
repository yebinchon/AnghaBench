; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_type1.c_Type1Font_CreateDescriptor.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_type1.c_Type1Font_CreateDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c" HPDF_Type1Font_CreateDescriptor\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"FontDescriptor\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Ascent\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Descent\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"StemV\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"XHeight\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"CharSet\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_STREAM_FILTER_NONE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"FontFile\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Length1\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Length2\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Length3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_19__*, i32)* @Type1Font_CreateDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Type1Font_CreateDescriptor(i32 %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %9, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %10, align 8
  %28 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = icmp ne %struct.TYPE_19__* %33, null
  br i1 %34, label %216, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.TYPE_19__* @HPDF_Dict_New(i32 %36)
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %12, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %39 = icmp ne %struct.TYPE_19__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @HPDF_Error_GetCode(i32 %43)
  store i64 %44, i64* %4, align 8
  br label %224

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %48 = call i64 @HPDF_Xref_Add(i32 %46, %struct.TYPE_19__* %47)
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %12, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %52 = call i64 @HPDF_Dict_AddName(%struct.TYPE_19__* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %12, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %12, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i64, i64* %12, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %12, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_19__* @HPDF_Box_Array_New(i32 %76, i32 %79)
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %13, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %83 = call i64 @HPDF_Dict_Add(%struct.TYPE_19__* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_19__* %82)
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %12, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @HPDF_Dict_AddName(%struct.TYPE_19__* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  %93 = load i64, i64* %12, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %12, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = load i64, i64* %12, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %12, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  %107 = load i64, i64* %12, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %12, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* %12, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %12, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %45
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @HPDF_Dict_AddName(%struct.TYPE_19__* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %124)
  %126 = load i64, i64* %12, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %12, align 8
  br label %128

128:                                              ; preds = %120, %45
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @HPDF_OK, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @HPDF_Error_GetCode(i32 %135)
  store i64 %136, i64* %4, align 8
  br label %224

137:                                              ; preds = %128
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %201

142:                                              ; preds = %137
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call %struct.TYPE_19__* @HPDF_DictStream_New(i32 %143, i32 %144)
  store %struct.TYPE_19__* %145, %struct.TYPE_19__** %14, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %147 = icmp ne %struct.TYPE_19__* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @HPDF_Error_GetCode(i32 %151)
  store i64 %152, i64* %4, align 8
  br label %224

153:                                              ; preds = %142
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @HPDF_STREAM_FILTER_NONE, align 4
  %161 = call i64 @HPDF_Stream_WriteToStream(i64 %156, i32 %159, i32 %160, i32* null)
  %162 = load i64, i64* @HPDF_OK, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %153
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @HPDF_Error_GetCode(i32 %167)
  store i64 %168, i64* %4, align 8
  br label %224

169:                                              ; preds = %153
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %172 = call i64 @HPDF_Dict_Add(%struct.TYPE_19__* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_19__* %171)
  %173 = load i64, i64* %12, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %12, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %178)
  %180 = load i64, i64* %12, align 8
  %181 = add nsw i64 %180, %179
  store i64 %181, i64* %12, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %185)
  %187 = load i64, i64* %12, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %12, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %192)
  %194 = load i64, i64* %12, align 8
  %195 = add nsw i64 %194, %193
  store i64 %195, i64* %12, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %169, %137
  %202 = load i64, i64* %12, align 8
  %203 = load i64, i64* @HPDF_OK, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @HPDF_Error_GetCode(i32 %208)
  store i64 %209, i64* %4, align 8
  br label %224

210:                                              ; preds = %201
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  store %struct.TYPE_19__* %211, %struct.TYPE_19__** %215, align 8
  br label %216

216:                                              ; preds = %210, %3
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  %223 = call i64 @HPDF_Dict_Add(%struct.TYPE_19__* %217, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %222)
  store i64 %223, i64* %4, align 8
  br label %224

224:                                              ; preds = %216, %205, %164, %148, %132, %40
  %225 = load i64, i64* %4, align 8
  ret i64 %225
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_19__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local %struct.TYPE_19__* @HPDF_Box_Array_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_19__*, i8*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i64 @HPDF_Stream_WriteToStream(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
