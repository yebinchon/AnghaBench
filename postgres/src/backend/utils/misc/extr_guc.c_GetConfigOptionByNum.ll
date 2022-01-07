; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GetConfigOptionByNum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GetConfigOptionByNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i8*, i64, i64, i64, i64, i8*, i32, i32, i32, i32 }
%struct.config_bool = type { i32, i32 }
%struct.config_int = type { i32, i32, i32, i32 }
%struct.config_real = type { i32, i32, i32, i32 }
%struct.config_string = type { i8*, i8* }
%struct.config_enum = type { i32, i32 }

@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global %struct.config_generic** null, align 8
@GUC_NO_SHOW_ALL = common dso_local global i32 0, align 4
@GUC_SUPERUSER_ONLY = common dso_local global i32 0, align 4
@DEFAULT_ROLE_READ_ALL_SETTINGS = common dso_local global i32 0, align 4
@config_group_names = common dso_local global i32* null, align 8
@GucContext_Names = common dso_local global i8** null, align 8
@config_type_names = common dso_local global i8** null, align 8
@GucSource_Names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"{\22\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\22}\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\22,\22\00", align 1
@PGC_S_FILE = common dso_local global i64 0, align 8
@GUC_PENDING_RESTART = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetConfigOptionByNum(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.config_generic*, align 8
  %9 = alloca %struct.config_bool*, align 8
  %10 = alloca %struct.config_int*, align 8
  %11 = alloca %struct.config_real*, align 8
  %12 = alloca %struct.config_string*, align 8
  %13 = alloca %struct.config_enum*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @num_guc_variables, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ false, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %24, i64 %26
  %28 = load %struct.config_generic*, %struct.config_generic** %27, align 8
  store %struct.config_generic* %28, %struct.config_generic** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %20
  %32 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %33 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GUC_NO_SHOW_ALL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %31
  %39 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %40 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GUC_SUPERUSER_ONLY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = call i32 (...) @GetUserId()
  %47 = load i32, i32* @DEFAULT_ROLE_READ_ALL_SETTINGS, align 4
  %48 = call i64 @is_member_of_role(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45, %31
  %51 = load i32*, i32** %6, align 8
  store i32 1, i32* %51, align 4
  br label %54

52:                                               ; preds = %45, %38
  %53 = load i32*, i32** %6, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %20
  %56 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %57 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %62 = call i8* @_ShowOption(%struct.config_generic* %61, i32 0)
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %66 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @get_config_unit_name(i32 %67)
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** @config_group_names, align 8
  %72 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %73 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @_(i32 %76)
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %81 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @_(i32 %82)
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %87 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @_(i32 %88)
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 5
  store i8* %89, i8** %91, align 8
  %92 = load i8**, i8*** @GucContext_Names, align 8
  %93 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %94 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 6
  store i8* %97, i8** %99, align 8
  %100 = load i8**, i8*** @config_type_names, align 8
  %101 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %102 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 7
  store i8* %105, i8** %107, align 8
  %108 = load i8**, i8*** @GucSource_Names, align 8
  %109 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %110 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i8*, i8** %108, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 8
  store i8* %113, i8** %115, align 8
  %116 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %117 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  switch i64 %118, label %295 [
    i64 132, label %119
    i64 130, label %146
    i64 129, label %187
    i64 128, label %228
    i64 131, label %267
  ]

119:                                              ; preds = %55
  %120 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %121 = bitcast %struct.config_generic* %120 to %struct.config_bool*
  store %struct.config_bool* %121, %struct.config_bool** %9, align 8
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 9
  store i8* null, i8** %123, align 8
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 10
  store i8* null, i8** %125, align 8
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 11
  store i8* null, i8** %127, align 8
  %128 = load %struct.config_bool*, %struct.config_bool** %9, align 8
  %129 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %134 = call i8* @pstrdup(i8* %133)
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 12
  store i8* %134, i8** %136, align 8
  %137 = load %struct.config_bool*, %struct.config_bool** %9, align 8
  %138 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %143 = call i8* @pstrdup(i8* %142)
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 13
  store i8* %143, i8** %145, align 8
  br label %306

146:                                              ; preds = %55
  %147 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %148 = bitcast %struct.config_generic* %147 to %struct.config_int*
  store %struct.config_int* %148, %struct.config_int** %10, align 8
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %150 = load %struct.config_int*, %struct.config_int** %10, align 8
  %151 = getelementptr inbounds %struct.config_int, %struct.config_int* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @snprintf(i8* %149, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %155 = call i8* @pstrdup(i8* %154)
  %156 = load i8**, i8*** %5, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 9
  store i8* %155, i8** %157, align 8
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %159 = load %struct.config_int*, %struct.config_int** %10, align 8
  %160 = getelementptr inbounds %struct.config_int, %struct.config_int* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @snprintf(i8* %158, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %164 = call i8* @pstrdup(i8* %163)
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 10
  store i8* %164, i8** %166, align 8
  %167 = load i8**, i8*** %5, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 11
  store i8* null, i8** %168, align 8
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %170 = load %struct.config_int*, %struct.config_int** %10, align 8
  %171 = getelementptr inbounds %struct.config_int, %struct.config_int* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @snprintf(i8* %169, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  %174 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %175 = call i8* @pstrdup(i8* %174)
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 12
  store i8* %175, i8** %177, align 8
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %179 = load %struct.config_int*, %struct.config_int** %10, align 8
  %180 = getelementptr inbounds %struct.config_int, %struct.config_int* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @snprintf(i8* %178, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %184 = call i8* @pstrdup(i8* %183)
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 13
  store i8* %184, i8** %186, align 8
  br label %306

187:                                              ; preds = %55
  %188 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %189 = bitcast %struct.config_generic* %188 to %struct.config_real*
  store %struct.config_real* %189, %struct.config_real** %11, align 8
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %191 = load %struct.config_real*, %struct.config_real** %11, align 8
  %192 = getelementptr inbounds %struct.config_real, %struct.config_real* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @snprintf(i8* %190, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  %195 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %196 = call i8* @pstrdup(i8* %195)
  %197 = load i8**, i8*** %5, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 9
  store i8* %196, i8** %198, align 8
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %200 = load %struct.config_real*, %struct.config_real** %11, align 8
  %201 = getelementptr inbounds %struct.config_real, %struct.config_real* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @snprintf(i8* %199, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  %204 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %205 = call i8* @pstrdup(i8* %204)
  %206 = load i8**, i8*** %5, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 10
  store i8* %205, i8** %207, align 8
  %208 = load i8**, i8*** %5, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 11
  store i8* null, i8** %209, align 8
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %211 = load %struct.config_real*, %struct.config_real** %11, align 8
  %212 = getelementptr inbounds %struct.config_real, %struct.config_real* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @snprintf(i8* %210, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %216 = call i8* @pstrdup(i8* %215)
  %217 = load i8**, i8*** %5, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 12
  store i8* %216, i8** %218, align 8
  %219 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %220 = load %struct.config_real*, %struct.config_real** %11, align 8
  %221 = getelementptr inbounds %struct.config_real, %struct.config_real* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @snprintf(i8* %219, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %222)
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %225 = call i8* @pstrdup(i8* %224)
  %226 = load i8**, i8*** %5, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 13
  store i8* %225, i8** %227, align 8
  br label %306

228:                                              ; preds = %55
  %229 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %230 = bitcast %struct.config_generic* %229 to %struct.config_string*
  store %struct.config_string* %230, %struct.config_string** %12, align 8
  %231 = load i8**, i8*** %5, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 9
  store i8* null, i8** %232, align 8
  %233 = load i8**, i8*** %5, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 10
  store i8* null, i8** %234, align 8
  %235 = load i8**, i8*** %5, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 11
  store i8* null, i8** %236, align 8
  %237 = load %struct.config_string*, %struct.config_string** %12, align 8
  %238 = getelementptr inbounds %struct.config_string, %struct.config_string* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %228
  %242 = load i8**, i8*** %5, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 12
  store i8* null, i8** %243, align 8
  br label %251

244:                                              ; preds = %228
  %245 = load %struct.config_string*, %struct.config_string** %12, align 8
  %246 = getelementptr inbounds %struct.config_string, %struct.config_string* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i8* @pstrdup(i8* %247)
  %249 = load i8**, i8*** %5, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 12
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %244, %241
  %252 = load %struct.config_string*, %struct.config_string** %12, align 8
  %253 = getelementptr inbounds %struct.config_string, %struct.config_string* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = icmp eq i8* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i8**, i8*** %5, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 13
  store i8* null, i8** %258, align 8
  br label %266

259:                                              ; preds = %251
  %260 = load %struct.config_string*, %struct.config_string** %12, align 8
  %261 = getelementptr inbounds %struct.config_string, %struct.config_string* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = call i8* @pstrdup(i8* %262)
  %264 = load i8**, i8*** %5, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 13
  store i8* %263, i8** %265, align 8
  br label %266

266:                                              ; preds = %259, %256
  br label %306

267:                                              ; preds = %55
  %268 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %269 = bitcast %struct.config_generic* %268 to %struct.config_enum*
  store %struct.config_enum* %269, %struct.config_enum** %13, align 8
  %270 = load i8**, i8*** %5, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 9
  store i8* null, i8** %271, align 8
  %272 = load i8**, i8*** %5, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 10
  store i8* null, i8** %273, align 8
  %274 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %275 = bitcast %struct.config_generic* %274 to %struct.config_enum*
  %276 = call i8* @config_enum_get_options(%struct.config_enum* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %277 = load i8**, i8*** %5, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 11
  store i8* %276, i8** %278, align 8
  %279 = load %struct.config_enum*, %struct.config_enum** %13, align 8
  %280 = load %struct.config_enum*, %struct.config_enum** %13, align 8
  %281 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i8* @config_enum_lookup_by_value(%struct.config_enum* %279, i32 %282)
  %284 = call i8* @pstrdup(i8* %283)
  %285 = load i8**, i8*** %5, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 12
  store i8* %284, i8** %286, align 8
  %287 = load %struct.config_enum*, %struct.config_enum** %13, align 8
  %288 = load %struct.config_enum*, %struct.config_enum** %13, align 8
  %289 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i8* @config_enum_lookup_by_value(%struct.config_enum* %287, i32 %290)
  %292 = call i8* @pstrdup(i8* %291)
  %293 = load i8**, i8*** %5, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 13
  store i8* %292, i8** %294, align 8
  br label %306

295:                                              ; preds = %55
  %296 = load i8**, i8*** %5, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 9
  store i8* null, i8** %297, align 8
  %298 = load i8**, i8*** %5, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 10
  store i8* null, i8** %299, align 8
  %300 = load i8**, i8*** %5, align 8
  %301 = getelementptr inbounds i8*, i8** %300, i64 11
  store i8* null, i8** %301, align 8
  %302 = load i8**, i8*** %5, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i64 12
  store i8* null, i8** %303, align 8
  %304 = load i8**, i8*** %5, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 13
  store i8* null, i8** %305, align 8
  br label %306

306:                                              ; preds = %295, %267, %266, %187, %146, %119
  %307 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %308 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @PGC_S_FILE, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %332

312:                                              ; preds = %306
  %313 = call i32 (...) @GetUserId()
  %314 = load i32, i32* @DEFAULT_ROLE_READ_ALL_SETTINGS, align 4
  %315 = call i64 @is_member_of_role(i32 %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %312
  %318 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %319 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %318, i32 0, i32 6
  %320 = load i8*, i8** %319, align 8
  %321 = load i8**, i8*** %5, align 8
  %322 = getelementptr inbounds i8*, i8** %321, i64 14
  store i8* %320, i8** %322, align 8
  %323 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %324 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %325 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @snprintf(i8* %323, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %326)
  %328 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %329 = call i8* @pstrdup(i8* %328)
  %330 = load i8**, i8*** %5, align 8
  %331 = getelementptr inbounds i8*, i8** %330, i64 15
  store i8* %329, i8** %331, align 8
  br label %337

332:                                              ; preds = %312, %306
  %333 = load i8**, i8*** %5, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 14
  store i8* null, i8** %334, align 8
  %335 = load i8**, i8*** %5, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 15
  store i8* null, i8** %336, align 8
  br label %337

337:                                              ; preds = %332, %317
  %338 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %339 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %338, i32 0, i32 8
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @GUC_PENDING_RESTART, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  %344 = zext i1 %343 to i64
  %345 = select i1 %343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %346 = load i8**, i8*** %5, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 16
  store i8* %345, i8** %347, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @is_member_of_role(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i8* @_ShowOption(%struct.config_generic*, i32) #1

declare dso_local i8* @get_config_unit_name(i32) #1

declare dso_local i8* @_(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @config_enum_get_options(%struct.config_enum*, i8*, i8*, i8*) #1

declare dso_local i8* @config_enum_lookup_by_value(%struct.config_enum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
