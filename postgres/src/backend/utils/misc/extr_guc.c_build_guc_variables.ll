; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_build_guc_variables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_build_guc_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_bool = type { %struct.config_generic }
%struct.config_generic = type { i32, i64, i32 }
%struct.config_int = type { %struct.config_generic }
%struct.config_real = type { %struct.config_generic }
%struct.config_string = type { %struct.config_generic }
%struct.config_enum = type { %struct.config_generic }

@ConfigureNamesBool = common dso_local global %struct.config_bool* null, align 8
@PGC_BOOL = common dso_local global i32 0, align 4
@GUC_EXPLAIN = common dso_local global i32 0, align 4
@ConfigureNamesInt = common dso_local global %struct.config_int* null, align 8
@PGC_INT = common dso_local global i32 0, align 4
@ConfigureNamesReal = common dso_local global %struct.config_real* null, align 8
@PGC_REAL = common dso_local global i32 0, align 4
@ConfigureNamesString = common dso_local global %struct.config_string* null, align 8
@PGC_STRING = common dso_local global i32 0, align 4
@ConfigureNamesEnum = common dso_local global %struct.config_enum* null, align 8
@PGC_ENUM = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@guc_variables = common dso_local global %struct.config_generic** null, align 8
@num_guc_variables = common dso_local global i32 0, align 4
@num_guc_explain_variables = common dso_local global i32 0, align 4
@size_guc_variables = common dso_local global i32 0, align 4
@guc_var_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_guc_variables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_generic**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_bool*, align 8
  %7 = alloca %struct.config_int*, align 8
  %8 = alloca %struct.config_real*, align 8
  %9 = alloca %struct.config_string*, align 8
  %10 = alloca %struct.config_enum*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %42, %0
  %12 = load %struct.config_bool*, %struct.config_bool** @ConfigureNamesBool, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %12, i64 %14
  %16 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %11
  %21 = load %struct.config_bool*, %struct.config_bool** @ConfigureNamesBool, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %21, i64 %23
  store %struct.config_bool* %24, %struct.config_bool** %6, align 8
  %25 = load i32, i32* @PGC_BOOL, align 4
  %26 = load %struct.config_bool*, %struct.config_bool** %6, align 8
  %27 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  %31 = load %struct.config_bool*, %struct.config_bool** %6, align 8
  %32 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GUC_EXPLAIN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %11

45:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %77, %45
  %47 = load %struct.config_int*, %struct.config_int** @ConfigureNamesInt, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.config_int, %struct.config_int* %47, i64 %49
  %51 = getelementptr inbounds %struct.config_int, %struct.config_int* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %46
  %56 = load %struct.config_int*, %struct.config_int** @ConfigureNamesInt, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.config_int, %struct.config_int* %56, i64 %58
  store %struct.config_int* %59, %struct.config_int** %7, align 8
  %60 = load i32, i32* @PGC_INT, align 4
  %61 = load %struct.config_int*, %struct.config_int** %7, align 8
  %62 = getelementptr inbounds %struct.config_int, %struct.config_int* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  %66 = load %struct.config_int*, %struct.config_int** %7, align 8
  %67 = getelementptr inbounds %struct.config_int, %struct.config_int* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GUC_EXPLAIN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %55
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %46

80:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %112, %80
  %82 = load %struct.config_real*, %struct.config_real** @ConfigureNamesReal, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.config_real, %struct.config_real* %82, i64 %84
  %86 = getelementptr inbounds %struct.config_real, %struct.config_real* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %81
  %91 = load %struct.config_real*, %struct.config_real** @ConfigureNamesReal, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.config_real, %struct.config_real* %91, i64 %93
  store %struct.config_real* %94, %struct.config_real** %8, align 8
  %95 = load i32, i32* @PGC_REAL, align 4
  %96 = load %struct.config_real*, %struct.config_real** %8, align 8
  %97 = getelementptr inbounds %struct.config_real, %struct.config_real* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %2, align 4
  %101 = load %struct.config_real*, %struct.config_real** %8, align 8
  %102 = getelementptr inbounds %struct.config_real, %struct.config_real* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @GUC_EXPLAIN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %90
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %81

115:                                              ; preds = %81
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %147, %115
  %117 = load %struct.config_string*, %struct.config_string** @ConfigureNamesString, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.config_string, %struct.config_string* %117, i64 %119
  %121 = getelementptr inbounds %struct.config_string, %struct.config_string* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %116
  %126 = load %struct.config_string*, %struct.config_string** @ConfigureNamesString, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.config_string, %struct.config_string* %126, i64 %128
  store %struct.config_string* %129, %struct.config_string** %9, align 8
  %130 = load i32, i32* @PGC_STRING, align 4
  %131 = load %struct.config_string*, %struct.config_string** %9, align 8
  %132 = getelementptr inbounds %struct.config_string, %struct.config_string* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  %136 = load %struct.config_string*, %struct.config_string** %9, align 8
  %137 = getelementptr inbounds %struct.config_string, %struct.config_string* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @GUC_EXPLAIN, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %125
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %143, %125
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %116

150:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %182, %150
  %152 = load %struct.config_enum*, %struct.config_enum** @ConfigureNamesEnum, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %152, i64 %154
  %156 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %151
  %161 = load %struct.config_enum*, %struct.config_enum** @ConfigureNamesEnum, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %161, i64 %163
  store %struct.config_enum* %164, %struct.config_enum** %10, align 8
  %165 = load i32, i32* @PGC_ENUM, align 4
  %166 = load %struct.config_enum*, %struct.config_enum** %10, align 8
  %167 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 8
  %169 = load i32, i32* %2, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %2, align 4
  %171 = load %struct.config_enum*, %struct.config_enum** %10, align 8
  %172 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @GUC_EXPLAIN, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %160
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %178, %160
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %151

185:                                              ; preds = %151
  %186 = load i32, i32* %2, align 4
  %187 = load i32, i32* %2, align 4
  %188 = sdiv i32 %187, 4
  %189 = add nsw i32 %186, %188
  store i32 %189, i32* %1, align 4
  %190 = load i32, i32* @FATAL, align 4
  %191 = load i32, i32* %1, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 8
  %194 = trunc i64 %193 to i32
  %195 = call i64 @guc_malloc(i32 %190, i32 %194)
  %196 = inttoptr i64 %195 to %struct.config_generic**
  store %struct.config_generic** %196, %struct.config_generic*** %4, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %217, %185
  %198 = load %struct.config_bool*, %struct.config_bool** @ConfigureNamesBool, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %198, i64 %200
  %202 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %197
  %207 = load %struct.config_bool*, %struct.config_bool** @ConfigureNamesBool, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %207, i64 %209
  %211 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %210, i32 0, i32 0
  %212 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  %213 = load i32, i32* %2, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %2, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %212, i64 %215
  store %struct.config_generic* %211, %struct.config_generic** %216, align 8
  br label %217

217:                                              ; preds = %206
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %5, align 4
  br label %197

220:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  br label %221

221:                                              ; preds = %241, %220
  %222 = load %struct.config_int*, %struct.config_int** @ConfigureNamesInt, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.config_int, %struct.config_int* %222, i64 %224
  %226 = getelementptr inbounds %struct.config_int, %struct.config_int* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %221
  %231 = load %struct.config_int*, %struct.config_int** @ConfigureNamesInt, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.config_int, %struct.config_int* %231, i64 %233
  %235 = getelementptr inbounds %struct.config_int, %struct.config_int* %234, i32 0, i32 0
  %236 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  %237 = load i32, i32* %2, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %2, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %236, i64 %239
  store %struct.config_generic* %235, %struct.config_generic** %240, align 8
  br label %241

241:                                              ; preds = %230
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %5, align 4
  br label %221

244:                                              ; preds = %221
  store i32 0, i32* %5, align 4
  br label %245

245:                                              ; preds = %265, %244
  %246 = load %struct.config_real*, %struct.config_real** @ConfigureNamesReal, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.config_real, %struct.config_real* %246, i64 %248
  %250 = getelementptr inbounds %struct.config_real, %struct.config_real* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %268

254:                                              ; preds = %245
  %255 = load %struct.config_real*, %struct.config_real** @ConfigureNamesReal, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.config_real, %struct.config_real* %255, i64 %257
  %259 = getelementptr inbounds %struct.config_real, %struct.config_real* %258, i32 0, i32 0
  %260 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  %261 = load i32, i32* %2, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %2, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %260, i64 %263
  store %struct.config_generic* %259, %struct.config_generic** %264, align 8
  br label %265

265:                                              ; preds = %254
  %266 = load i32, i32* %5, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %5, align 4
  br label %245

268:                                              ; preds = %245
  store i32 0, i32* %5, align 4
  br label %269

269:                                              ; preds = %289, %268
  %270 = load %struct.config_string*, %struct.config_string** @ConfigureNamesString, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.config_string, %struct.config_string* %270, i64 %272
  %274 = getelementptr inbounds %struct.config_string, %struct.config_string* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %292

278:                                              ; preds = %269
  %279 = load %struct.config_string*, %struct.config_string** @ConfigureNamesString, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.config_string, %struct.config_string* %279, i64 %281
  %283 = getelementptr inbounds %struct.config_string, %struct.config_string* %282, i32 0, i32 0
  %284 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  %285 = load i32, i32* %2, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %2, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %284, i64 %287
  store %struct.config_generic* %283, %struct.config_generic** %288, align 8
  br label %289

289:                                              ; preds = %278
  %290 = load i32, i32* %5, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %5, align 4
  br label %269

292:                                              ; preds = %269
  store i32 0, i32* %5, align 4
  br label %293

293:                                              ; preds = %313, %292
  %294 = load %struct.config_enum*, %struct.config_enum** @ConfigureNamesEnum, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %294, i64 %296
  %298 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %316

302:                                              ; preds = %293
  %303 = load %struct.config_enum*, %struct.config_enum** @ConfigureNamesEnum, align 8
  %304 = load i32, i32* %5, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %303, i64 %305
  %307 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %306, i32 0, i32 0
  %308 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  %309 = load i32, i32* %2, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %2, align 4
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %308, i64 %311
  store %struct.config_generic* %307, %struct.config_generic** %312, align 8
  br label %313

313:                                              ; preds = %302
  %314 = load i32, i32* %5, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %5, align 4
  br label %293

316:                                              ; preds = %293
  %317 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %318 = icmp ne %struct.config_generic** %317, null
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %321 = call i32 @free(%struct.config_generic** %320)
  br label %322

322:                                              ; preds = %319, %316
  %323 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  store %struct.config_generic** %323, %struct.config_generic*** @guc_variables, align 8
  %324 = load i32, i32* %2, align 4
  store i32 %324, i32* @num_guc_variables, align 4
  %325 = load i32, i32* %3, align 4
  store i32 %325, i32* @num_guc_explain_variables, align 4
  %326 = load i32, i32* %1, align 4
  store i32 %326, i32* @size_guc_variables, align 4
  %327 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %328 = bitcast %struct.config_generic** %327 to i8*
  %329 = load i32, i32* @num_guc_variables, align 4
  %330 = load i32, i32* @guc_var_compare, align 4
  %331 = call i32 @qsort(i8* %328, i32 %329, i32 8, i32 %330)
  ret void
}

declare dso_local i64 @guc_malloc(i32, i32) #1

declare dso_local i32 @free(%struct.config_generic**) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
