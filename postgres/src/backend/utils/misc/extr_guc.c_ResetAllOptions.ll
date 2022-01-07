; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_ResetAllOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_ResetAllOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i64, i32, i64, i32, i64, i32, i32 }
%struct.config_bool = type { i32, %struct.TYPE_2__, i32, i32*, i32 (i32, i32)* }
%struct.TYPE_2__ = type { i32 }
%struct.config_int = type { i32, %struct.TYPE_2__, i32, i32*, i32 (i32, i32)* }
%struct.config_real = type { i32, %struct.TYPE_2__, i32, i32*, i32 (i32, i32)* }
%struct.config_string = type { i32, %struct.TYPE_2__, i32, i32, i32 (i32, i32)* }
%struct.config_enum = type { i32, %struct.TYPE_2__, i32, i32*, i32 (i32, i32)* }

@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global %struct.config_generic** null, align 8
@PGC_SUSET = common dso_local global i64 0, align 8
@PGC_USERSET = common dso_local global i64 0, align 8
@GUC_NO_RESET_ALL = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i64 0, align 8
@GUC_ACTION_SET = common dso_local global i32 0, align 4
@GUC_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetAllOptions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.config_generic*, align 8
  %3 = alloca %struct.config_bool*, align 8
  %4 = alloca %struct.config_int*, align 8
  %5 = alloca %struct.config_real*, align 8
  %6 = alloca %struct.config_string*, align 8
  %7 = alloca %struct.config_enum*, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %245, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @num_guc_variables, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %248

12:                                               ; preds = %8
  %13 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %13, i64 %15
  %17 = load %struct.config_generic*, %struct.config_generic** %16, align 8
  store %struct.config_generic* %17, %struct.config_generic** %2, align 8
  %18 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %19 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PGC_SUSET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %25 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PGC_USERSET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %245

30:                                               ; preds = %23, %12
  %31 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %32 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GUC_NO_RESET_ALL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %245

38:                                               ; preds = %30
  %39 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %40 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PGC_S_OVERRIDE, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %245

45:                                               ; preds = %38
  %46 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %47 = load i32, i32* @GUC_ACTION_SET, align 4
  %48 = call i32 @push_old_value(%struct.config_generic* %46, i32 %47)
  %49 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %50 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %224 [
    i32 132, label %52
    i32 130, label %86
    i32 129, label %120
    i32 128, label %154
    i32 131, label %190
  ]

52:                                               ; preds = %45
  %53 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %54 = bitcast %struct.config_generic* %53 to %struct.config_bool*
  store %struct.config_bool* %54, %struct.config_bool** %3, align 8
  %55 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %56 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %55, i32 0, i32 4
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %56, align 8
  %58 = icmp ne i32 (i32, i32)* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %61 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %60, i32 0, i32 4
  %62 = load i32 (i32, i32)*, i32 (i32, i32)** %61, align 8
  %63 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %64 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %67 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %62(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %59, %52
  %71 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %72 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %75 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  store i32 %73, i32* %76, align 4
  %77 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %78 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %77, i32 0, i32 1
  %79 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %80 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %83 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_extra_field(%struct.TYPE_2__* %78, i32* %81, i32 %84)
  br label %224

86:                                               ; preds = %45
  %87 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %88 = bitcast %struct.config_generic* %87 to %struct.config_int*
  store %struct.config_int* %88, %struct.config_int** %4, align 8
  %89 = load %struct.config_int*, %struct.config_int** %4, align 8
  %90 = getelementptr inbounds %struct.config_int, %struct.config_int* %89, i32 0, i32 4
  %91 = load i32 (i32, i32)*, i32 (i32, i32)** %90, align 8
  %92 = icmp ne i32 (i32, i32)* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %86
  %94 = load %struct.config_int*, %struct.config_int** %4, align 8
  %95 = getelementptr inbounds %struct.config_int, %struct.config_int* %94, i32 0, i32 4
  %96 = load i32 (i32, i32)*, i32 (i32, i32)** %95, align 8
  %97 = load %struct.config_int*, %struct.config_int** %4, align 8
  %98 = getelementptr inbounds %struct.config_int, %struct.config_int* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.config_int*, %struct.config_int** %4, align 8
  %101 = getelementptr inbounds %struct.config_int, %struct.config_int* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %96(i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %93, %86
  %105 = load %struct.config_int*, %struct.config_int** %4, align 8
  %106 = getelementptr inbounds %struct.config_int, %struct.config_int* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.config_int*, %struct.config_int** %4, align 8
  %109 = getelementptr inbounds %struct.config_int, %struct.config_int* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  store i32 %107, i32* %110, align 4
  %111 = load %struct.config_int*, %struct.config_int** %4, align 8
  %112 = getelementptr inbounds %struct.config_int, %struct.config_int* %111, i32 0, i32 1
  %113 = load %struct.config_int*, %struct.config_int** %4, align 8
  %114 = getelementptr inbounds %struct.config_int, %struct.config_int* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load %struct.config_int*, %struct.config_int** %4, align 8
  %117 = getelementptr inbounds %struct.config_int, %struct.config_int* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @set_extra_field(%struct.TYPE_2__* %112, i32* %115, i32 %118)
  br label %224

120:                                              ; preds = %45
  %121 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %122 = bitcast %struct.config_generic* %121 to %struct.config_real*
  store %struct.config_real* %122, %struct.config_real** %5, align 8
  %123 = load %struct.config_real*, %struct.config_real** %5, align 8
  %124 = getelementptr inbounds %struct.config_real, %struct.config_real* %123, i32 0, i32 4
  %125 = load i32 (i32, i32)*, i32 (i32, i32)** %124, align 8
  %126 = icmp ne i32 (i32, i32)* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  %128 = load %struct.config_real*, %struct.config_real** %5, align 8
  %129 = getelementptr inbounds %struct.config_real, %struct.config_real* %128, i32 0, i32 4
  %130 = load i32 (i32, i32)*, i32 (i32, i32)** %129, align 8
  %131 = load %struct.config_real*, %struct.config_real** %5, align 8
  %132 = getelementptr inbounds %struct.config_real, %struct.config_real* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.config_real*, %struct.config_real** %5, align 8
  %135 = getelementptr inbounds %struct.config_real, %struct.config_real* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %130(i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %127, %120
  %139 = load %struct.config_real*, %struct.config_real** %5, align 8
  %140 = getelementptr inbounds %struct.config_real, %struct.config_real* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.config_real*, %struct.config_real** %5, align 8
  %143 = getelementptr inbounds %struct.config_real, %struct.config_real* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  store i32 %141, i32* %144, align 4
  %145 = load %struct.config_real*, %struct.config_real** %5, align 8
  %146 = getelementptr inbounds %struct.config_real, %struct.config_real* %145, i32 0, i32 1
  %147 = load %struct.config_real*, %struct.config_real** %5, align 8
  %148 = getelementptr inbounds %struct.config_real, %struct.config_real* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load %struct.config_real*, %struct.config_real** %5, align 8
  %151 = getelementptr inbounds %struct.config_real, %struct.config_real* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @set_extra_field(%struct.TYPE_2__* %146, i32* %149, i32 %152)
  br label %224

154:                                              ; preds = %45
  %155 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %156 = bitcast %struct.config_generic* %155 to %struct.config_string*
  store %struct.config_string* %156, %struct.config_string** %6, align 8
  %157 = load %struct.config_string*, %struct.config_string** %6, align 8
  %158 = getelementptr inbounds %struct.config_string, %struct.config_string* %157, i32 0, i32 4
  %159 = load i32 (i32, i32)*, i32 (i32, i32)** %158, align 8
  %160 = icmp ne i32 (i32, i32)* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %154
  %162 = load %struct.config_string*, %struct.config_string** %6, align 8
  %163 = getelementptr inbounds %struct.config_string, %struct.config_string* %162, i32 0, i32 4
  %164 = load i32 (i32, i32)*, i32 (i32, i32)** %163, align 8
  %165 = load %struct.config_string*, %struct.config_string** %6, align 8
  %166 = getelementptr inbounds %struct.config_string, %struct.config_string* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.config_string*, %struct.config_string** %6, align 8
  %169 = getelementptr inbounds %struct.config_string, %struct.config_string* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 %164(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %161, %154
  %173 = load %struct.config_string*, %struct.config_string** %6, align 8
  %174 = load %struct.config_string*, %struct.config_string** %6, align 8
  %175 = getelementptr inbounds %struct.config_string, %struct.config_string* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.config_string*, %struct.config_string** %6, align 8
  %178 = getelementptr inbounds %struct.config_string, %struct.config_string* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @set_string_field(%struct.config_string* %173, i32 %176, i32 %179)
  %181 = load %struct.config_string*, %struct.config_string** %6, align 8
  %182 = getelementptr inbounds %struct.config_string, %struct.config_string* %181, i32 0, i32 1
  %183 = load %struct.config_string*, %struct.config_string** %6, align 8
  %184 = getelementptr inbounds %struct.config_string, %struct.config_string* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load %struct.config_string*, %struct.config_string** %6, align 8
  %187 = getelementptr inbounds %struct.config_string, %struct.config_string* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @set_extra_field(%struct.TYPE_2__* %182, i32* %185, i32 %188)
  br label %224

190:                                              ; preds = %45
  %191 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %192 = bitcast %struct.config_generic* %191 to %struct.config_enum*
  store %struct.config_enum* %192, %struct.config_enum** %7, align 8
  %193 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %194 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %193, i32 0, i32 4
  %195 = load i32 (i32, i32)*, i32 (i32, i32)** %194, align 8
  %196 = icmp ne i32 (i32, i32)* %195, null
  br i1 %196, label %197, label %208

197:                                              ; preds = %190
  %198 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %199 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %198, i32 0, i32 4
  %200 = load i32 (i32, i32)*, i32 (i32, i32)** %199, align 8
  %201 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %202 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %205 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 %200(i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %197, %190
  %209 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %210 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %213 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  store i32 %211, i32* %214, align 4
  %215 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %216 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %215, i32 0, i32 1
  %217 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %218 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load %struct.config_enum*, %struct.config_enum** %7, align 8
  %221 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @set_extra_field(%struct.TYPE_2__* %216, i32* %219, i32 %222)
  br label %224

224:                                              ; preds = %45, %208, %172, %138, %104, %70
  %225 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %226 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %229 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  %230 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %231 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %234 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 4
  %235 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %236 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @GUC_REPORT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %224
  %242 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %243 = call i32 @ReportGUCOption(%struct.config_generic* %242)
  br label %244

244:                                              ; preds = %241, %224
  br label %245

245:                                              ; preds = %244, %44, %37, %29
  %246 = load i32, i32* %1, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %1, align 4
  br label %8

248:                                              ; preds = %8
  ret void
}

declare dso_local i32 @push_old_value(%struct.config_generic*, i32) #1

declare dso_local i32 @set_extra_field(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @set_string_field(%struct.config_string*, i32, i32) #1

declare dso_local i32 @ReportGUCOption(%struct.config_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
