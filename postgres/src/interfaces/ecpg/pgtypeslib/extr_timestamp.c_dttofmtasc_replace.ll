; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_dttofmtasc_replace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_dttofmtasc_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i32, i32, i32, i32, i32, i32 }
%union.un_fmt_comb = type { i8* }

@PGTYPES_TYPE_NOTHING = common dso_local global i32 0, align 4
@pgtypes_date_weekdays_short = common dso_local global i8** null, align 8
@PGTYPES_TYPE_STRING_CONSTANT = common dso_local global i32 0, align 4
@days = common dso_local global i8** null, align 8
@months = common dso_local global i8** null, align 8
@pgtypes_date_months = common dso_local global i8** null, align 8
@PGTYPES_TYPE_UINT_2_LZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@PGTYPES_TYPE_UINT_2_LS = common dso_local global i32 0, align 4
@__const.dttofmtasc_replace.tmp = private unnamed_addr constant [4 x i8] c"%Ex\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%G\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@PGTYPES_TYPE_UINT_3_LZ = common dso_local global i32 0, align 4
@PGTYPES_TYPE_CHAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@PGTYPES_TYPE_INT64 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@PGTYPES_TYPE_UINT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"%U\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%V\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%Z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, i32, i32, %struct.tm*, i8*, i32*, i8*)* @dttofmtasc_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dttofmtasc_replace(double* %0, i32 %1, i32 %2, %struct.tm* %3, i8* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %union.un_fmt_comb, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [4 x i8], align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store double* %0, double** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.tm* %3, %struct.tm** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  store i8* %26, i8** %19, align 8
  %27 = load i8*, i8** %13, align 8
  store i8* %27, i8** %20, align 8
  br label %28

28:                                               ; preds = %633, %7
  %29 = load i8*, i8** %19, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %636

32:                                               ; preds = %28
  %33 = load i8*, i8** %19, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %617

37:                                               ; preds = %32
  %38 = load i8*, i8** %19, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %19, align 8
  %40 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i8*, i8** %19, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %577 [
    i32 97, label %44
    i32 65, label %52
    i32 98, label %60
    i32 104, label %60
    i32 66, label %69
    i32 99, label %78
    i32 67, label %79
    i32 100, label %86
    i32 68, label %92
    i32 101, label %105
    i32 69, label %111
    i32 71, label %154
    i32 103, label %185
    i32 72, label %216
    i32 73, label %222
    i32 106, label %229
    i32 107, label %235
    i32 108, label %241
    i32 109, label %248
    i32 77, label %255
    i32 110, label %261
    i32 112, label %264
    i32 80, label %275
    i32 114, label %286
    i32 82, label %299
    i32 115, label %312
    i32 83, label %320
    i32 116, label %326
    i32 84, label %329
    i32 117, label %342
    i32 85, label %352
    i32 86, label %382
    i32 119, label %405
    i32 87, label %409
    i32 120, label %439
    i32 88, label %470
    i32 121, label %500
    i32 89, label %507
    i32 122, label %513
    i32 90, label %543
    i32 37, label %573
    i32 0, label %576
  ]

44:                                               ; preds = %37
  %45 = load i8**, i8*** @pgtypes_date_weekdays_short, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast %union.un_fmt_comb* %16 to i8**
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* @PGTYPES_TYPE_STRING_CONSTANT, align 4
  store i32 %51, i32* %17, align 4
  br label %606

52:                                               ; preds = %37
  %53 = load i8**, i8*** @days, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast %union.un_fmt_comb* %16 to i8**
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* @PGTYPES_TYPE_STRING_CONSTANT, align 4
  store i32 %59, i32* %17, align 4
  br label %606

60:                                               ; preds = %37, %37
  %61 = load i8**, i8*** @months, align 8
  %62 = load %struct.tm*, %struct.tm** %12, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast %union.un_fmt_comb* %16 to i8**
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @PGTYPES_TYPE_STRING_CONSTANT, align 4
  store i32 %68, i32* %17, align 4
  br label %606

69:                                               ; preds = %37
  %70 = load i8**, i8*** @pgtypes_date_months, align 8
  %71 = load %struct.tm*, %struct.tm** %12, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast %union.un_fmt_comb* %16 to i8**
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* @PGTYPES_TYPE_STRING_CONSTANT, align 4
  store i32 %77, i32* %17, align 4
  br label %606

78:                                               ; preds = %37
  br label %606

79:                                               ; preds = %37
  %80 = load %struct.tm*, %struct.tm** %12, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 100
  %84 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @PGTYPES_TYPE_UINT_2_LZ, align 4
  store i32 %85, i32* %17, align 4
  br label %606

86:                                               ; preds = %37
  %87 = load %struct.tm*, %struct.tm** %12, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %89, i32* %90, align 8
  %91 = load i32, i32* @PGTYPES_TYPE_UINT_2_LZ, align 4
  store i32 %91, i32* %17, align 4
  br label %606

92:                                               ; preds = %37
  %93 = load double*, double** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.tm*, %struct.tm** %12, align 8
  %97 = load i8*, i8** %20, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @dttofmtasc_replace(double* %93, i32 %94, i32 %95, %struct.tm* %96, i8* %97, i32* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %8, align 4
  br label %637

104:                                              ; preds = %92
  br label %606

105:                                              ; preds = %37
  %106 = load %struct.tm*, %struct.tm** %12, align 8
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* @PGTYPES_TYPE_UINT_2_LS, align 4
  store i32 %110, i32* %17, align 4
  br label %606

111:                                              ; preds = %37
  %112 = bitcast [4 x i8]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %112, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.dttofmtasc_replace.tmp, i32 0, i32 0), i64 4, i1 false)
  %113 = load i8*, i8** %19, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %19, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 -1, i32* %8, align 4
  br label %637

120:                                              ; preds = %111
  %121 = load i8*, i8** %19, align 8
  %122 = load i8, i8* %121, align 1
  %123 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 2
  store i8 %122, i8* %123, align 1
  %124 = load %struct.tm*, %struct.tm** %12, align 8
  %125 = getelementptr inbounds %struct.tm, %struct.tm* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load i8*, i8** %20, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %132 = load %struct.tm*, %struct.tm** %12, align 8
  %133 = call i32 @strftime(i8* %128, i32 %130, i8* %131, %struct.tm* %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %120
  store i32 -1, i32* %8, align 4
  br label %637

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %142, %137
  %139 = load i8*, i8** %20, align 8
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load i8*, i8** %20, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %20, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %145, align 4
  br label %138

148:                                              ; preds = %138
  %149 = load %struct.tm*, %struct.tm** %12, align 8
  %150 = getelementptr inbounds %struct.tm, %struct.tm* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %150, align 8
  %153 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %153, i32* %17, align 4
  br label %606

154:                                              ; preds = %37
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %155 = load %struct.tm*, %struct.tm** %12, align 8
  %156 = getelementptr inbounds %struct.tm, %struct.tm* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %157, 1
  store i64 %158, i64* %156, align 8
  %159 = load i8*, i8** %20, align 8
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %22, align 8
  %163 = load %struct.tm*, %struct.tm** %12, align 8
  %164 = call i32 @strftime(i8* %159, i32 %161, i8* %162, %struct.tm* %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  store i32 -1, i32* %8, align 4
  br label %637

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %173, %168
  %170 = load i8*, i8** %20, align 8
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i8*, i8** %20, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %20, align 8
  %176 = load i32*, i32** %14, align 8
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %176, align 4
  br label %169

179:                                              ; preds = %169
  %180 = load %struct.tm*, %struct.tm** %12, align 8
  %181 = getelementptr inbounds %struct.tm, %struct.tm* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %181, align 8
  %184 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %184, i32* %17, align 4
  br label %606

185:                                              ; preds = %37
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %186 = load %struct.tm*, %struct.tm** %12, align 8
  %187 = getelementptr inbounds %struct.tm, %struct.tm* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = sub i64 %188, 1
  store i64 %189, i64* %187, align 8
  %190 = load i8*, i8** %20, align 8
  %191 = load i32*, i32** %14, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %23, align 8
  %194 = load %struct.tm*, %struct.tm** %12, align 8
  %195 = call i32 @strftime(i8* %190, i32 %192, i8* %193, %struct.tm* %194)
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  store i32 -1, i32* %8, align 4
  br label %637

199:                                              ; preds = %185
  br label %200

200:                                              ; preds = %204, %199
  %201 = load i8*, i8** %20, align 8
  %202 = load i8, i8* %201, align 1
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load i8*, i8** %20, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %20, align 8
  %207 = load i32*, i32** %14, align 8
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %207, align 4
  br label %200

210:                                              ; preds = %200
  %211 = load %struct.tm*, %struct.tm** %12, align 8
  %212 = getelementptr inbounds %struct.tm, %struct.tm* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %212, align 8
  %215 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %215, i32* %17, align 4
  br label %606

216:                                              ; preds = %37
  %217 = load %struct.tm*, %struct.tm** %12, align 8
  %218 = getelementptr inbounds %struct.tm, %struct.tm* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %219, i32* %220, align 8
  %221 = load i32, i32* @PGTYPES_TYPE_UINT_2_LZ, align 4
  store i32 %221, i32* %17, align 4
  br label %606

222:                                              ; preds = %37
  %223 = load %struct.tm*, %struct.tm** %12, align 8
  %224 = getelementptr inbounds %struct.tm, %struct.tm* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = srem i32 %225, 12
  %227 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %226, i32* %227, align 8
  %228 = load i32, i32* @PGTYPES_TYPE_UINT_2_LZ, align 4
  store i32 %228, i32* %17, align 4
  br label %606

229:                                              ; preds = %37
  %230 = load %struct.tm*, %struct.tm** %12, align 8
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %232, i32* %233, align 8
  %234 = load i32, i32* @PGTYPES_TYPE_UINT_3_LZ, align 4
  store i32 %234, i32* %17, align 4
  br label %606

235:                                              ; preds = %37
  %236 = load %struct.tm*, %struct.tm** %12, align 8
  %237 = getelementptr inbounds %struct.tm, %struct.tm* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %238, i32* %239, align 8
  %240 = load i32, i32* @PGTYPES_TYPE_UINT_2_LS, align 4
  store i32 %240, i32* %17, align 4
  br label %606

241:                                              ; preds = %37
  %242 = load %struct.tm*, %struct.tm** %12, align 8
  %243 = getelementptr inbounds %struct.tm, %struct.tm* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = srem i32 %244, 12
  %246 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %245, i32* %246, align 8
  %247 = load i32, i32* @PGTYPES_TYPE_UINT_2_LS, align 4
  store i32 %247, i32* %17, align 4
  br label %606

248:                                              ; preds = %37
  %249 = load %struct.tm*, %struct.tm** %12, align 8
  %250 = getelementptr inbounds %struct.tm, %struct.tm* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %252, i32* %253, align 8
  %254 = load i32, i32* @PGTYPES_TYPE_UINT_2_LZ, align 4
  store i32 %254, i32* %17, align 4
  br label %606

255:                                              ; preds = %37
  %256 = load %struct.tm*, %struct.tm** %12, align 8
  %257 = getelementptr inbounds %struct.tm, %struct.tm* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %258, i32* %259, align 8
  %260 = load i32, i32* @PGTYPES_TYPE_UINT_2_LZ, align 4
  store i32 %260, i32* %17, align 4
  br label %606

261:                                              ; preds = %37
  %262 = bitcast %union.un_fmt_comb* %16 to i8*
  store i8 10, i8* %262, align 8
  %263 = load i32, i32* @PGTYPES_TYPE_CHAR, align 4
  store i32 %263, i32* %17, align 4
  br label %606

264:                                              ; preds = %37
  %265 = load %struct.tm*, %struct.tm** %12, align 8
  %266 = getelementptr inbounds %struct.tm, %struct.tm* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %267, 12
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = bitcast %union.un_fmt_comb* %16 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %270, align 8
  br label %273

271:                                              ; preds = %264
  %272 = bitcast %union.un_fmt_comb* %16 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %272, align 8
  br label %273

273:                                              ; preds = %271, %269
  %274 = load i32, i32* @PGTYPES_TYPE_STRING_CONSTANT, align 4
  store i32 %274, i32* %17, align 4
  br label %606

275:                                              ; preds = %37
  %276 = load %struct.tm*, %struct.tm** %12, align 8
  %277 = getelementptr inbounds %struct.tm, %struct.tm* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %278, 12
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = bitcast %union.un_fmt_comb* %16 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %281, align 8
  br label %284

282:                                              ; preds = %275
  %283 = bitcast %union.un_fmt_comb* %16 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %283, align 8
  br label %284

284:                                              ; preds = %282, %280
  %285 = load i32, i32* @PGTYPES_TYPE_STRING_CONSTANT, align 4
  store i32 %285, i32* %17, align 4
  br label %606

286:                                              ; preds = %37
  %287 = load double*, double** %9, align 8
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* %11, align 4
  %290 = load %struct.tm*, %struct.tm** %12, align 8
  %291 = load i8*, i8** %20, align 8
  %292 = load i32*, i32** %14, align 8
  %293 = call i32 @dttofmtasc_replace(double* %287, i32 %288, i32 %289, %struct.tm* %290, i8* %291, i32* %292, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 %293, i32* %18, align 4
  %294 = load i32, i32* %18, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %286
  %297 = load i32, i32* %18, align 4
  store i32 %297, i32* %8, align 4
  br label %637

298:                                              ; preds = %286
  br label %606

299:                                              ; preds = %37
  %300 = load double*, double** %9, align 8
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* %11, align 4
  %303 = load %struct.tm*, %struct.tm** %12, align 8
  %304 = load i8*, i8** %20, align 8
  %305 = load i32*, i32** %14, align 8
  %306 = call i32 @dttofmtasc_replace(double* %300, i32 %301, i32 %302, %struct.tm* %303, i8* %304, i32* %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 %306, i32* %18, align 4
  %307 = load i32, i32* %18, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %299
  %310 = load i32, i32* %18, align 4
  store i32 %310, i32* %8, align 4
  br label %637

311:                                              ; preds = %299
  br label %606

312:                                              ; preds = %37
  %313 = load double*, double** %9, align 8
  %314 = load double, double* %313, align 8
  %315 = call double (...) @SetEpochTimestamp()
  %316 = fsub double %314, %315
  %317 = fdiv double %316, 1.000000e+06
  %318 = bitcast %union.un_fmt_comb* %16 to double*
  store double %317, double* %318, align 8
  %319 = load i32, i32* @PGTYPES_TYPE_INT64, align 4
  store i32 %319, i32* %17, align 4
  br label %606

320:                                              ; preds = %37
  %321 = load %struct.tm*, %struct.tm** %12, align 8
  %322 = getelementptr inbounds %struct.tm, %struct.tm* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 4
  %324 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %323, i32* %324, align 8
  %325 = load i32, i32* @PGTYPES_TYPE_UINT_2_LZ, align 4
  store i32 %325, i32* %17, align 4
  br label %606

326:                                              ; preds = %37
  %327 = bitcast %union.un_fmt_comb* %16 to i8*
  store i8 9, i8* %327, align 8
  %328 = load i32, i32* @PGTYPES_TYPE_CHAR, align 4
  store i32 %328, i32* %17, align 4
  br label %606

329:                                              ; preds = %37
  %330 = load double*, double** %9, align 8
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* %11, align 4
  %333 = load %struct.tm*, %struct.tm** %12, align 8
  %334 = load i8*, i8** %20, align 8
  %335 = load i32*, i32** %14, align 8
  %336 = call i32 @dttofmtasc_replace(double* %330, i32 %331, i32 %332, %struct.tm* %333, i8* %334, i32* %335, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 %336, i32* %18, align 4
  %337 = load i32, i32* %18, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %329
  %340 = load i32, i32* %18, align 4
  store i32 %340, i32* %8, align 4
  br label %637

341:                                              ; preds = %329
  br label %606

342:                                              ; preds = %37
  %343 = load i32, i32* %11, align 4
  %344 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %343, i32* %344, align 8
  %345 = bitcast %union.un_fmt_comb* %16 to i32*
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 7, i32* %349, align 8
  br label %350

350:                                              ; preds = %348, %342
  %351 = load i32, i32* @PGTYPES_TYPE_UINT, align 4
  store i32 %351, i32* %17, align 4
  br label %606

352:                                              ; preds = %37
  %353 = load %struct.tm*, %struct.tm** %12, align 8
  %354 = getelementptr inbounds %struct.tm, %struct.tm* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = sub i64 %355, 1
  store i64 %356, i64* %354, align 8
  %357 = load i8*, i8** %20, align 8
  %358 = load i32*, i32** %14, align 8
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.tm*, %struct.tm** %12, align 8
  %361 = call i32 @strftime(i8* %357, i32 %359, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.tm* %360)
  store i32 %361, i32* %18, align 4
  %362 = load i32, i32* %18, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %352
  store i32 -1, i32* %8, align 4
  br label %637

365:                                              ; preds = %352
  br label %366

366:                                              ; preds = %370, %365
  %367 = load i8*, i8** %20, align 8
  %368 = load i8, i8* %367, align 1
  %369 = icmp ne i8 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %366
  %371 = load i8*, i8** %20, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %20, align 8
  %373 = load i32*, i32** %14, align 8
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %374, -1
  store i32 %375, i32* %373, align 4
  br label %366

376:                                              ; preds = %366
  %377 = load %struct.tm*, %struct.tm** %12, align 8
  %378 = getelementptr inbounds %struct.tm, %struct.tm* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = add i64 %379, 1
  store i64 %380, i64* %378, align 8
  %381 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %381, i32* %17, align 4
  br label %606

382:                                              ; preds = %37
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %24, align 8
  %383 = load i8*, i8** %20, align 8
  %384 = load i32*, i32** %14, align 8
  %385 = load i32, i32* %384, align 4
  %386 = load i8*, i8** %24, align 8
  %387 = load %struct.tm*, %struct.tm** %12, align 8
  %388 = call i32 @strftime(i8* %383, i32 %385, i8* %386, %struct.tm* %387)
  store i32 %388, i32* %18, align 4
  %389 = load i32, i32* %18, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %382
  store i32 -1, i32* %8, align 4
  br label %637

392:                                              ; preds = %382
  br label %393

393:                                              ; preds = %397, %392
  %394 = load i8*, i8** %20, align 8
  %395 = load i8, i8* %394, align 1
  %396 = icmp ne i8 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %393
  %398 = load i8*, i8** %20, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %20, align 8
  %400 = load i32*, i32** %14, align 8
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %401, -1
  store i32 %402, i32* %400, align 4
  br label %393

403:                                              ; preds = %393
  %404 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %404, i32* %17, align 4
  br label %606

405:                                              ; preds = %37
  %406 = load i32, i32* %11, align 4
  %407 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %406, i32* %407, align 8
  %408 = load i32, i32* @PGTYPES_TYPE_UINT, align 4
  store i32 %408, i32* %17, align 4
  br label %606

409:                                              ; preds = %37
  %410 = load %struct.tm*, %struct.tm** %12, align 8
  %411 = getelementptr inbounds %struct.tm, %struct.tm* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = sub i64 %412, 1
  store i64 %413, i64* %411, align 8
  %414 = load i8*, i8** %20, align 8
  %415 = load i32*, i32** %14, align 8
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.tm*, %struct.tm** %12, align 8
  %418 = call i32 @strftime(i8* %414, i32 %416, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.tm* %417)
  store i32 %418, i32* %18, align 4
  %419 = load i32, i32* %18, align 4
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %409
  store i32 -1, i32* %8, align 4
  br label %637

422:                                              ; preds = %409
  br label %423

423:                                              ; preds = %427, %422
  %424 = load i8*, i8** %20, align 8
  %425 = load i8, i8* %424, align 1
  %426 = icmp ne i8 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %423
  %428 = load i8*, i8** %20, align 8
  %429 = getelementptr inbounds i8, i8* %428, i32 1
  store i8* %429, i8** %20, align 8
  %430 = load i32*, i32** %14, align 8
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %431, -1
  store i32 %432, i32* %430, align 4
  br label %423

433:                                              ; preds = %423
  %434 = load %struct.tm*, %struct.tm** %12, align 8
  %435 = getelementptr inbounds %struct.tm, %struct.tm* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = add i64 %436, 1
  store i64 %437, i64* %435, align 8
  %438 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %438, i32* %17, align 4
  br label %606

439:                                              ; preds = %37
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %25, align 8
  %440 = load %struct.tm*, %struct.tm** %12, align 8
  %441 = getelementptr inbounds %struct.tm, %struct.tm* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = sub i64 %442, 1
  store i64 %443, i64* %441, align 8
  %444 = load i8*, i8** %20, align 8
  %445 = load i32*, i32** %14, align 8
  %446 = load i32, i32* %445, align 4
  %447 = load i8*, i8** %25, align 8
  %448 = load %struct.tm*, %struct.tm** %12, align 8
  %449 = call i32 @strftime(i8* %444, i32 %446, i8* %447, %struct.tm* %448)
  store i32 %449, i32* %18, align 4
  %450 = load i32, i32* %18, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %439
  store i32 -1, i32* %8, align 4
  br label %637

453:                                              ; preds = %439
  br label %454

454:                                              ; preds = %458, %453
  %455 = load i8*, i8** %20, align 8
  %456 = load i8, i8* %455, align 1
  %457 = icmp ne i8 %456, 0
  br i1 %457, label %458, label %464

458:                                              ; preds = %454
  %459 = load i8*, i8** %20, align 8
  %460 = getelementptr inbounds i8, i8* %459, i32 1
  store i8* %460, i8** %20, align 8
  %461 = load i32*, i32** %14, align 8
  %462 = load i32, i32* %461, align 4
  %463 = add nsw i32 %462, -1
  store i32 %463, i32* %461, align 4
  br label %454

464:                                              ; preds = %454
  %465 = load %struct.tm*, %struct.tm** %12, align 8
  %466 = getelementptr inbounds %struct.tm, %struct.tm* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = add i64 %467, 1
  store i64 %468, i64* %466, align 8
  %469 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %469, i32* %17, align 4
  br label %606

470:                                              ; preds = %37
  %471 = load %struct.tm*, %struct.tm** %12, align 8
  %472 = getelementptr inbounds %struct.tm, %struct.tm* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = sub i64 %473, 1
  store i64 %474, i64* %472, align 8
  %475 = load i8*, i8** %20, align 8
  %476 = load i32*, i32** %14, align 8
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.tm*, %struct.tm** %12, align 8
  %479 = call i32 @strftime(i8* %475, i32 %477, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct.tm* %478)
  store i32 %479, i32* %18, align 4
  %480 = load i32, i32* %18, align 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %470
  store i32 -1, i32* %8, align 4
  br label %637

483:                                              ; preds = %470
  br label %484

484:                                              ; preds = %488, %483
  %485 = load i8*, i8** %20, align 8
  %486 = load i8, i8* %485, align 1
  %487 = icmp ne i8 %486, 0
  br i1 %487, label %488, label %494

488:                                              ; preds = %484
  %489 = load i8*, i8** %20, align 8
  %490 = getelementptr inbounds i8, i8* %489, i32 1
  store i8* %490, i8** %20, align 8
  %491 = load i32*, i32** %14, align 8
  %492 = load i32, i32* %491, align 4
  %493 = add nsw i32 %492, -1
  store i32 %493, i32* %491, align 4
  br label %484

494:                                              ; preds = %484
  %495 = load %struct.tm*, %struct.tm** %12, align 8
  %496 = getelementptr inbounds %struct.tm, %struct.tm* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = add i64 %497, 1
  store i64 %498, i64* %496, align 8
  %499 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %499, i32* %17, align 4
  br label %606

500:                                              ; preds = %37
  %501 = load %struct.tm*, %struct.tm** %12, align 8
  %502 = getelementptr inbounds %struct.tm, %struct.tm* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = srem i32 %503, 100
  %505 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %504, i32* %505, align 8
  %506 = load i32, i32* @PGTYPES_TYPE_UINT_2_LZ, align 4
  store i32 %506, i32* %17, align 4
  br label %606

507:                                              ; preds = %37
  %508 = load %struct.tm*, %struct.tm** %12, align 8
  %509 = getelementptr inbounds %struct.tm, %struct.tm* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = bitcast %union.un_fmt_comb* %16 to i32*
  store i32 %510, i32* %511, align 8
  %512 = load i32, i32* @PGTYPES_TYPE_UINT, align 4
  store i32 %512, i32* %17, align 4
  br label %606

513:                                              ; preds = %37
  %514 = load %struct.tm*, %struct.tm** %12, align 8
  %515 = getelementptr inbounds %struct.tm, %struct.tm* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = sub i64 %516, 1
  store i64 %517, i64* %515, align 8
  %518 = load i8*, i8** %20, align 8
  %519 = load i32*, i32** %14, align 8
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.tm*, %struct.tm** %12, align 8
  %522 = call i32 @strftime(i8* %518, i32 %520, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), %struct.tm* %521)
  store i32 %522, i32* %18, align 4
  %523 = load i32, i32* %18, align 4
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %513
  store i32 -1, i32* %8, align 4
  br label %637

526:                                              ; preds = %513
  br label %527

527:                                              ; preds = %531, %526
  %528 = load i8*, i8** %20, align 8
  %529 = load i8, i8* %528, align 1
  %530 = icmp ne i8 %529, 0
  br i1 %530, label %531, label %537

531:                                              ; preds = %527
  %532 = load i8*, i8** %20, align 8
  %533 = getelementptr inbounds i8, i8* %532, i32 1
  store i8* %533, i8** %20, align 8
  %534 = load i32*, i32** %14, align 8
  %535 = load i32, i32* %534, align 4
  %536 = add nsw i32 %535, -1
  store i32 %536, i32* %534, align 4
  br label %527

537:                                              ; preds = %527
  %538 = load %struct.tm*, %struct.tm** %12, align 8
  %539 = getelementptr inbounds %struct.tm, %struct.tm* %538, i32 0, i32 0
  %540 = load i64, i64* %539, align 8
  %541 = add i64 %540, 1
  store i64 %541, i64* %539, align 8
  %542 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %542, i32* %17, align 4
  br label %606

543:                                              ; preds = %37
  %544 = load %struct.tm*, %struct.tm** %12, align 8
  %545 = getelementptr inbounds %struct.tm, %struct.tm* %544, i32 0, i32 0
  %546 = load i64, i64* %545, align 8
  %547 = sub i64 %546, 1
  store i64 %547, i64* %545, align 8
  %548 = load i8*, i8** %20, align 8
  %549 = load i32*, i32** %14, align 8
  %550 = load i32, i32* %549, align 4
  %551 = load %struct.tm*, %struct.tm** %12, align 8
  %552 = call i32 @strftime(i8* %548, i32 %550, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), %struct.tm* %551)
  store i32 %552, i32* %18, align 4
  %553 = load i32, i32* %18, align 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %543
  store i32 -1, i32* %8, align 4
  br label %637

556:                                              ; preds = %543
  br label %557

557:                                              ; preds = %561, %556
  %558 = load i8*, i8** %20, align 8
  %559 = load i8, i8* %558, align 1
  %560 = icmp ne i8 %559, 0
  br i1 %560, label %561, label %567

561:                                              ; preds = %557
  %562 = load i8*, i8** %20, align 8
  %563 = getelementptr inbounds i8, i8* %562, i32 1
  store i8* %563, i8** %20, align 8
  %564 = load i32*, i32** %14, align 8
  %565 = load i32, i32* %564, align 4
  %566 = add nsw i32 %565, -1
  store i32 %566, i32* %564, align 4
  br label %557

567:                                              ; preds = %557
  %568 = load %struct.tm*, %struct.tm** %12, align 8
  %569 = getelementptr inbounds %struct.tm, %struct.tm* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = add i64 %570, 1
  store i64 %571, i64* %569, align 8
  %572 = load i32, i32* @PGTYPES_TYPE_NOTHING, align 4
  store i32 %572, i32* %17, align 4
  br label %606

573:                                              ; preds = %37
  %574 = bitcast %union.un_fmt_comb* %16 to i8*
  store i8 37, i8* %574, align 8
  %575 = load i32, i32* @PGTYPES_TYPE_CHAR, align 4
  store i32 %575, i32* %17, align 4
  br label %606

576:                                              ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %637

577:                                              ; preds = %37
  %578 = load i32*, i32** %14, align 8
  %579 = load i32, i32* %578, align 4
  %580 = icmp sgt i32 %579, 1
  br i1 %580, label %581, label %604

581:                                              ; preds = %577
  %582 = load i8*, i8** %20, align 8
  store i8 37, i8* %582, align 1
  %583 = load i8*, i8** %20, align 8
  %584 = getelementptr inbounds i8, i8* %583, i32 1
  store i8* %584, i8** %20, align 8
  %585 = load i32*, i32** %14, align 8
  %586 = load i32, i32* %585, align 4
  %587 = add nsw i32 %586, -1
  store i32 %587, i32* %585, align 4
  %588 = load i32*, i32** %14, align 8
  %589 = load i32, i32* %588, align 4
  %590 = icmp sgt i32 %589, 1
  br i1 %590, label %591, label %600

591:                                              ; preds = %581
  %592 = load i8*, i8** %19, align 8
  %593 = load i8, i8* %592, align 1
  %594 = load i8*, i8** %20, align 8
  store i8 %593, i8* %594, align 1
  %595 = load i8*, i8** %20, align 8
  %596 = getelementptr inbounds i8, i8* %595, i32 1
  store i8* %596, i8** %20, align 8
  %597 = load i32*, i32** %14, align 8
  %598 = load i32, i32* %597, align 4
  %599 = add nsw i32 %598, -1
  store i32 %599, i32* %597, align 4
  br label %602

600:                                              ; preds = %581
  %601 = load i8*, i8** %20, align 8
  store i8 0, i8* %601, align 1
  store i32 -1, i32* %8, align 4
  br label %637

602:                                              ; preds = %591
  %603 = load i8*, i8** %20, align 8
  store i8 0, i8* %603, align 1
  br label %605

604:                                              ; preds = %577
  store i32 -1, i32* %8, align 4
  br label %637

605:                                              ; preds = %602
  br label %606

606:                                              ; preds = %605, %573, %567, %537, %507, %500, %494, %464, %433, %405, %403, %376, %350, %341, %326, %320, %312, %311, %298, %284, %273, %261, %255, %248, %241, %235, %229, %222, %216, %210, %179, %148, %105, %104, %86, %79, %78, %69, %60, %52, %44
  %607 = load i32, i32* %17, align 4
  %608 = load i32*, i32** %14, align 8
  %609 = getelementptr inbounds %union.un_fmt_comb, %union.un_fmt_comb* %16, i32 0, i32 0
  %610 = load i8*, i8** %609, align 8
  %611 = call i32 @pgtypes_fmt_replace(i8* %610, i32 %607, i8** %20, i32* %608)
  store i32 %611, i32* %18, align 4
  %612 = load i32, i32* %18, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %616

614:                                              ; preds = %606
  %615 = load i32, i32* %18, align 4
  store i32 %615, i32* %8, align 4
  br label %637

616:                                              ; preds = %606
  br label %633

617:                                              ; preds = %32
  %618 = load i32*, i32** %14, align 8
  %619 = load i32, i32* %618, align 4
  %620 = icmp sgt i32 %619, 1
  br i1 %620, label %621, label %631

621:                                              ; preds = %617
  %622 = load i8*, i8** %19, align 8
  %623 = load i8, i8* %622, align 1
  %624 = load i8*, i8** %20, align 8
  store i8 %623, i8* %624, align 1
  %625 = load i32*, i32** %14, align 8
  %626 = load i32, i32* %625, align 4
  %627 = add nsw i32 %626, -1
  store i32 %627, i32* %625, align 4
  %628 = load i8*, i8** %20, align 8
  %629 = getelementptr inbounds i8, i8* %628, i32 1
  store i8* %629, i8** %20, align 8
  %630 = load i8*, i8** %20, align 8
  store i8 0, i8* %630, align 1
  br label %632

631:                                              ; preds = %617
  store i32 -1, i32* %8, align 4
  br label %637

632:                                              ; preds = %621
  br label %633

633:                                              ; preds = %632, %616
  %634 = load i8*, i8** %19, align 8
  %635 = getelementptr inbounds i8, i8* %634, i32 1
  store i8* %635, i8** %19, align 8
  br label %28

636:                                              ; preds = %28
  store i32 0, i32* %8, align 4
  br label %637

637:                                              ; preds = %636, %631, %614, %604, %600, %576, %555, %525, %482, %452, %421, %391, %364, %339, %309, %296, %198, %167, %136, %119, %102
  %638 = load i32, i32* %8, align 4
  ret i32 %638
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local double @SetEpochTimestamp(...) #2

declare dso_local i32 @pgtypes_fmt_replace(i8*, i32, i8**, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
