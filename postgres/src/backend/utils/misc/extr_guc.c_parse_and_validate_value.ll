; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_parse_and_validate_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_parse_and_validate_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32 }
%union.config_var_val = type { i32* }
%struct.config_bool = type { i32 }
%struct.config_int = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.config_real = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.config_string = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.config_enum = type { i32 }

@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"parameter \22%s\22 requires a Boolean value\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid value for parameter \22%s\22: \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"%d%s%s is outside the valid range for parameter \22%s\22 (%d .. %d)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"%g%s%s is outside the valid range for parameter \22%s\22 (%g .. %g)\00", align 1
@GUC_IS_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Available values: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_generic*, i8*, i8*, i32, i32, %union.config_var_val*, i8**)* @parse_and_validate_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_and_validate_value(%struct.config_generic* %0, i8* %1, i8* %2, i32 %3, i32 %4, %union.config_var_val* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.config_generic*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.config_var_val*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.config_bool*, align 8
  %17 = alloca %struct.config_int*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.config_real*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.config_string*, align 8
  %24 = alloca %struct.config_enum*, align 8
  %25 = alloca i8*, align 8
  store %struct.config_generic* %0, %struct.config_generic** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %union.config_var_val* %5, %union.config_var_val** %14, align 8
  store i8** %6, i8*** %15, align 8
  %26 = load %struct.config_generic*, %struct.config_generic** %9, align 8
  %27 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %327 [
    i32 132, label %29
    i32 130, label %55
    i32 129, label %145
    i32 128, label %235
    i32 131, label %282
  ]

29:                                               ; preds = %7
  %30 = load %struct.config_generic*, %struct.config_generic** %9, align 8
  %31 = bitcast %struct.config_generic* %30 to %struct.config_bool*
  store %struct.config_bool* %31, %struct.config_bool** %16, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %34 = bitcast %union.config_var_val* %33 to i32*
  %35 = call i32 @parse_bool(i8* %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = call i32 @ereport(i32 %38, i32 %42)
  store i32 0, i32* %8, align 4
  br label %328

44:                                               ; preds = %29
  %45 = load %struct.config_bool*, %struct.config_bool** %16, align 8
  %46 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %47 = bitcast %union.config_var_val* %46 to i32*
  %48 = load i8**, i8*** %15, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @call_bool_check_hook(%struct.config_bool* %45, i32* %47, i8** %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %328

54:                                               ; preds = %44
  br label %327

55:                                               ; preds = %7
  %56 = load %struct.config_generic*, %struct.config_generic** %9, align 8
  %57 = bitcast %struct.config_generic* %56 to %struct.config_int*
  store %struct.config_int* %57, %struct.config_int** %17, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %60 = bitcast %union.config_var_val* %59 to i32*
  %61 = load %struct.config_int*, %struct.config_int** %17, align 8
  %62 = getelementptr inbounds %struct.config_int, %struct.config_int* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @parse_int(i8* %58, i32* %60, i32 %64, i8** %18)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %72)
  %74 = load i8*, i8** %18, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i8*, i8** %18, align 8
  %78 = call i32 @_(i8* %77)
  %79 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %81

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i32 [ %79, %76 ], [ 0, %80 ]
  %83 = call i32 @ereport(i32 %68, i32 %82)
  store i32 0, i32* %8, align 4
  br label %328

84:                                               ; preds = %55
  %85 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %86 = bitcast %union.config_var_val* %85 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.config_int*, %struct.config_int** %17, align 8
  %89 = getelementptr inbounds %struct.config_int, %struct.config_int* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %94 = bitcast %union.config_var_val* %93 to i32*
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.config_int*, %struct.config_int** %17, align 8
  %97 = getelementptr inbounds %struct.config_int, %struct.config_int* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %92, %84
  %101 = load %struct.config_int*, %struct.config_int** %17, align 8
  %102 = getelementptr inbounds %struct.config_int, %struct.config_int* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @get_config_unit_name(i32 %104)
  store i8* %105, i8** %19, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %108 = call i32 @errcode(i32 %107)
  %109 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %110 = bitcast %union.config_var_val* %109 to i32*
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8*, i8** %19, align 8
  %115 = icmp ne i8* %114, null
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %118 = load i8*, i8** %19, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %100
  %121 = load i8*, i8** %19, align 8
  br label %123

122:                                              ; preds = %100
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i8* [ %121, %120 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %122 ]
  %125 = load i8*, i8** %10, align 8
  %126 = load %struct.config_int*, %struct.config_int** %17, align 8
  %127 = getelementptr inbounds %struct.config_int, %struct.config_int* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.config_int*, %struct.config_int** %17, align 8
  %130 = getelementptr inbounds %struct.config_int, %struct.config_int* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %113, i8* %117, i8* %124, i8* %125, i32 %128, i32 %131)
  %133 = call i32 @ereport(i32 %106, i32 %132)
  store i32 0, i32* %8, align 4
  br label %328

134:                                              ; preds = %92
  %135 = load %struct.config_int*, %struct.config_int** %17, align 8
  %136 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %137 = bitcast %union.config_var_val* %136 to i32*
  %138 = load i8**, i8*** %15, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @call_int_check_hook(%struct.config_int* %135, i32* %137, i8** %138, i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %328

144:                                              ; preds = %134
  br label %327

145:                                              ; preds = %7
  %146 = load %struct.config_generic*, %struct.config_generic** %9, align 8
  %147 = bitcast %struct.config_generic* %146 to %struct.config_real*
  store %struct.config_real* %147, %struct.config_real** %20, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %150 = bitcast %union.config_var_val* %149 to i32*
  %151 = load %struct.config_real*, %struct.config_real** %20, align 8
  %152 = getelementptr inbounds %struct.config_real, %struct.config_real* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @parse_real(i8* %148, i32* %150, i32 %154, i8** %21)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %174, label %157

157:                                              ; preds = %145
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %160 = call i32 @errcode(i32 %159)
  %161 = load i8*, i8** %10, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %161, i8* %162)
  %164 = load i8*, i8** %21, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i8*, i8** %21, align 8
  %168 = call i32 @_(i8* %167)
  %169 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  br label %171

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi i32 [ %169, %166 ], [ 0, %170 ]
  %173 = call i32 @ereport(i32 %158, i32 %172)
  store i32 0, i32* %8, align 4
  br label %328

174:                                              ; preds = %145
  %175 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %176 = bitcast %union.config_var_val* %175 to i32*
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.config_real*, %struct.config_real** %20, align 8
  %179 = getelementptr inbounds %struct.config_real, %struct.config_real* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %190, label %182

182:                                              ; preds = %174
  %183 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %184 = bitcast %union.config_var_val* %183 to i32*
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.config_real*, %struct.config_real** %20, align 8
  %187 = getelementptr inbounds %struct.config_real, %struct.config_real* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %185, %188
  br i1 %189, label %190, label %224

190:                                              ; preds = %182, %174
  %191 = load %struct.config_real*, %struct.config_real** %20, align 8
  %192 = getelementptr inbounds %struct.config_real, %struct.config_real* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @get_config_unit_name(i32 %194)
  store i8* %195, i8** %22, align 8
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %198 = call i32 @errcode(i32 %197)
  %199 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %200 = bitcast %union.config_var_val* %199 to i32*
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = load i8*, i8** %22, align 8
  %205 = icmp ne i8* %204, null
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %208 = load i8*, i8** %22, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %190
  %211 = load i8*, i8** %22, align 8
  br label %213

212:                                              ; preds = %190
  br label %213

213:                                              ; preds = %212, %210
  %214 = phi i8* [ %211, %210 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %212 ]
  %215 = load i8*, i8** %10, align 8
  %216 = load %struct.config_real*, %struct.config_real** %20, align 8
  %217 = getelementptr inbounds %struct.config_real, %struct.config_real* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.config_real*, %struct.config_real** %20, align 8
  %220 = getelementptr inbounds %struct.config_real, %struct.config_real* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %203, i8* %207, i8* %214, i8* %215, i32 %218, i32 %221)
  %223 = call i32 @ereport(i32 %196, i32 %222)
  store i32 0, i32* %8, align 4
  br label %328

224:                                              ; preds = %182
  %225 = load %struct.config_real*, %struct.config_real** %20, align 8
  %226 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %227 = bitcast %union.config_var_val* %226 to i32*
  %228 = load i8**, i8*** %15, align 8
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @call_real_check_hook(%struct.config_real* %225, i32* %227, i8** %228, i32 %229, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %224
  store i32 0, i32* %8, align 4
  br label %328

234:                                              ; preds = %224
  br label %327

235:                                              ; preds = %7
  %236 = load %struct.config_generic*, %struct.config_generic** %9, align 8
  %237 = bitcast %struct.config_generic* %236 to %struct.config_string*
  store %struct.config_string* %237, %struct.config_string** %23, align 8
  %238 = load i32, i32* %13, align 4
  %239 = load i8*, i8** %11, align 8
  %240 = call i32* @guc_strdup(i32 %238, i8* %239)
  %241 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %242 = bitcast %union.config_var_val* %241 to i32**
  store i32* %240, i32** %242, align 8
  %243 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %244 = bitcast %union.config_var_val* %243 to i32**
  %245 = load i32*, i32** %244, align 8
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %235
  store i32 0, i32* %8, align 4
  br label %328

248:                                              ; preds = %235
  %249 = load %struct.config_string*, %struct.config_string** %23, align 8
  %250 = getelementptr inbounds %struct.config_string, %struct.config_string* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @GUC_IS_NAME, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %248
  %257 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %258 = bitcast %union.config_var_val* %257 to i32**
  %259 = load i32*, i32** %258, align 8
  %260 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %261 = bitcast %union.config_var_val* %260 to i32**
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @strlen(i32* %262)
  %264 = call i32 @truncate_identifier(i32* %259, i32 %263, i32 1)
  br label %265

265:                                              ; preds = %256, %248
  %266 = load %struct.config_string*, %struct.config_string** %23, align 8
  %267 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %268 = bitcast %union.config_var_val* %267 to i32**
  %269 = load i8**, i8*** %15, align 8
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @call_string_check_hook(%struct.config_string* %266, i32** %268, i8** %269, i32 %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %265
  %275 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %276 = bitcast %union.config_var_val* %275 to i32**
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @free(i32* %277)
  %279 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %280 = bitcast %union.config_var_val* %279 to i32**
  store i32* null, i32** %280, align 8
  store i32 0, i32* %8, align 4
  br label %328

281:                                              ; preds = %265
  br label %327

282:                                              ; preds = %7
  %283 = load %struct.config_generic*, %struct.config_generic** %9, align 8
  %284 = bitcast %struct.config_generic* %283 to %struct.config_enum*
  store %struct.config_enum* %284, %struct.config_enum** %24, align 8
  %285 = load %struct.config_enum*, %struct.config_enum** %24, align 8
  %286 = load i8*, i8** %11, align 8
  %287 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %288 = bitcast %union.config_var_val* %287 to i32*
  %289 = call i32 @config_enum_lookup_by_name(%struct.config_enum* %285, i8* %286, i32* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %316, label %291

291:                                              ; preds = %282
  %292 = load %struct.config_enum*, %struct.config_enum** %24, align 8
  %293 = call i8* @config_enum_get_options(%struct.config_enum* %292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i8* %293, i8** %25, align 8
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %296 = call i32 @errcode(i32 %295)
  %297 = load i8*, i8** %10, align 8
  %298 = load i8*, i8** %11, align 8
  %299 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %297, i8* %298)
  %300 = load i8*, i8** %25, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %306

302:                                              ; preds = %291
  %303 = load i8*, i8** %25, align 8
  %304 = call i32 @_(i8* %303)
  %305 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %304)
  br label %307

306:                                              ; preds = %291
  br label %307

307:                                              ; preds = %306, %302
  %308 = phi i32 [ %305, %302 ], [ 0, %306 ]
  %309 = call i32 @ereport(i32 %294, i32 %308)
  %310 = load i8*, i8** %25, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load i8*, i8** %25, align 8
  %314 = call i32 @pfree(i8* %313)
  br label %315

315:                                              ; preds = %312, %307
  store i32 0, i32* %8, align 4
  br label %328

316:                                              ; preds = %282
  %317 = load %struct.config_enum*, %struct.config_enum** %24, align 8
  %318 = load %union.config_var_val*, %union.config_var_val** %14, align 8
  %319 = bitcast %union.config_var_val* %318 to i32*
  %320 = load i8**, i8*** %15, align 8
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* %13, align 4
  %323 = call i32 @call_enum_check_hook(%struct.config_enum* %317, i32* %319, i8** %320, i32 %321, i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %316
  store i32 0, i32* %8, align 4
  br label %328

326:                                              ; preds = %316
  br label %327

327:                                              ; preds = %7, %326, %281, %234, %144, %54
  store i32 1, i32* %8, align 4
  br label %328

328:                                              ; preds = %327, %325, %315, %274, %247, %233, %213, %171, %143, %123, %81, %53, %37
  %329 = load i32, i32* %8, align 4
  ret i32 %329
}

declare dso_local i32 @parse_bool(i8*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @call_bool_check_hook(%struct.config_bool*, i32*, i8**, i32, i32) #1

declare dso_local i32 @parse_int(i8*, i32*, i32, i8**) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @get_config_unit_name(i32) #1

declare dso_local i32 @call_int_check_hook(%struct.config_int*, i32*, i8**, i32, i32) #1

declare dso_local i32 @parse_real(i8*, i32*, i32, i8**) #1

declare dso_local i32 @call_real_check_hook(%struct.config_real*, i32*, i8**, i32, i32) #1

declare dso_local i32* @guc_strdup(i32, i8*) #1

declare dso_local i32 @truncate_identifier(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @call_string_check_hook(%struct.config_string*, i32**, i8**, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @config_enum_lookup_by_name(%struct.config_enum*, i8*, i32*) #1

declare dso_local i8* @config_enum_get_options(%struct.config_enum*, i8*, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @call_enum_check_hook(%struct.config_enum*, i32*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
