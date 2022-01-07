; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_InitializeOneGUCOption.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_InitializeOneGUCOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i64, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i64 }
%struct.config_bool = type { i32, i32*, i32, i8*, %struct.TYPE_6__, i32 (i32, i8*)* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.config_int = type { i32, i32, i32, i32*, i32, i8*, %struct.TYPE_7__, i32 (i32, i8*)* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.config_real = type { double, double, double, double*, double, i8*, %struct.TYPE_8__, i32 (double, i8*)* }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.config_string = type { i8**, i8*, i8*, %struct.TYPE_9__, i32 (i8*, i8*)*, i32* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.config_enum = type { i32, i32*, i32, i8*, %struct.TYPE_10__, i32 (i32, i8*)* }
%struct.TYPE_10__ = type { i8*, i32 }

@PGC_S_DEFAULT = common dso_local global i8* null, align 8
@PGC_INTERNAL = common dso_local global i8* null, align 8
@LOG = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to initialize %s to %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to initialize %s to %g\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to initialize %s to \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_generic*)* @InitializeOneGUCOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitializeOneGUCOption(%struct.config_generic* %0) #0 {
  %2 = alloca %struct.config_generic*, align 8
  %3 = alloca %struct.config_bool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_int*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.config_real*, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.config_string*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.config_enum*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.config_generic* %0, %struct.config_generic** %2, align 8
  %18 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %19 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %18, i32 0, i32 9
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** @PGC_S_DEFAULT, align 8
  %21 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %22 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @PGC_S_DEFAULT, align 8
  %24 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %25 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @PGC_INTERNAL, align 8
  %27 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %28 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @PGC_INTERNAL, align 8
  %30 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %31 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %33 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %35 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %37 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %39 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %41 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %306 [
    i32 132, label %43
    i32 130, label %87
    i32 129, label %145
    i32 128, label %203
    i32 131, label %262
  ]

43:                                               ; preds = %1
  %44 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %45 = bitcast %struct.config_generic* %44 to %struct.config_bool*
  store %struct.config_bool* %45, %struct.config_bool** %3, align 8
  %46 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %47 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %49 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %50 = load i8*, i8** @PGC_S_DEFAULT, align 8
  %51 = load i32, i32* @LOG, align 4
  %52 = call i32 @call_bool_check_hook(%struct.config_bool* %49, i32* %4, i8** %5, i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @FATAL, align 4
  %56 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %57 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, i32, ...) @elog(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %43
  %63 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %64 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %63, i32 0, i32 5
  %65 = load i32 (i32, i8*)*, i32 (i32, i8*)** %64, align 8
  %66 = icmp ne i32 (i32, i8*)* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %69 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %68, i32 0, i32 5
  %70 = load i32 (i32, i8*)*, i32 (i32, i8*)** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 %70(i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %77 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %79 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  store i32 %75, i32* %80, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %83 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.config_bool*, %struct.config_bool** %3, align 8
  %85 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i8* %81, i8** %86, align 8
  br label %306

87:                                               ; preds = %1
  %88 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %89 = bitcast %struct.config_generic* %88 to %struct.config_int*
  store %struct.config_int* %89, %struct.config_int** %6, align 8
  %90 = load %struct.config_int*, %struct.config_int** %6, align 8
  %91 = getelementptr inbounds %struct.config_int, %struct.config_int* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.config_int*, %struct.config_int** %6, align 8
  %95 = getelementptr inbounds %struct.config_int, %struct.config_int* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %93, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @Assert(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.config_int*, %struct.config_int** %6, align 8
  %102 = getelementptr inbounds %struct.config_int, %struct.config_int* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp sle i32 %100, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @Assert(i32 %105)
  %107 = load %struct.config_int*, %struct.config_int** %6, align 8
  %108 = load i8*, i8** @PGC_S_DEFAULT, align 8
  %109 = load i32, i32* @LOG, align 4
  %110 = call i32 @call_int_check_hook(%struct.config_int* %107, i32* %7, i8** %8, i8* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %87
  %113 = load i32, i32* @FATAL, align 4
  %114 = load %struct.config_int*, %struct.config_int** %6, align 8
  %115 = getelementptr inbounds %struct.config_int, %struct.config_int* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (i32, i8*, i32, ...) @elog(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %112, %87
  %121 = load %struct.config_int*, %struct.config_int** %6, align 8
  %122 = getelementptr inbounds %struct.config_int, %struct.config_int* %121, i32 0, i32 7
  %123 = load i32 (i32, i8*)*, i32 (i32, i8*)** %122, align 8
  %124 = icmp ne i32 (i32, i8*)* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.config_int*, %struct.config_int** %6, align 8
  %127 = getelementptr inbounds %struct.config_int, %struct.config_int* %126, i32 0, i32 7
  %128 = load i32 (i32, i8*)*, i32 (i32, i8*)** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 %128(i32 %129, i8* %130)
  br label %132

132:                                              ; preds = %125, %120
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.config_int*, %struct.config_int** %6, align 8
  %135 = getelementptr inbounds %struct.config_int, %struct.config_int* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.config_int*, %struct.config_int** %6, align 8
  %137 = getelementptr inbounds %struct.config_int, %struct.config_int* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  store i32 %133, i32* %138, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = load %struct.config_int*, %struct.config_int** %6, align 8
  %141 = getelementptr inbounds %struct.config_int, %struct.config_int* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  %142 = load %struct.config_int*, %struct.config_int** %6, align 8
  %143 = getelementptr inbounds %struct.config_int, %struct.config_int* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i8* %139, i8** %144, align 8
  br label %306

145:                                              ; preds = %1
  %146 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %147 = bitcast %struct.config_generic* %146 to %struct.config_real*
  store %struct.config_real* %147, %struct.config_real** %9, align 8
  %148 = load %struct.config_real*, %struct.config_real** %9, align 8
  %149 = getelementptr inbounds %struct.config_real, %struct.config_real* %148, i32 0, i32 0
  %150 = load double, double* %149, align 8
  store double %150, double* %10, align 8
  store i8* null, i8** %11, align 8
  %151 = load double, double* %10, align 8
  %152 = load %struct.config_real*, %struct.config_real** %9, align 8
  %153 = getelementptr inbounds %struct.config_real, %struct.config_real* %152, i32 0, i32 1
  %154 = load double, double* %153, align 8
  %155 = fcmp oge double %151, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @Assert(i32 %156)
  %158 = load double, double* %10, align 8
  %159 = load %struct.config_real*, %struct.config_real** %9, align 8
  %160 = getelementptr inbounds %struct.config_real, %struct.config_real* %159, i32 0, i32 2
  %161 = load double, double* %160, align 8
  %162 = fcmp ole double %158, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @Assert(i32 %163)
  %165 = load %struct.config_real*, %struct.config_real** %9, align 8
  %166 = load i8*, i8** @PGC_S_DEFAULT, align 8
  %167 = load i32, i32* @LOG, align 4
  %168 = call i32 @call_real_check_hook(%struct.config_real* %165, double* %10, i8** %11, i8* %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %145
  %171 = load i32, i32* @FATAL, align 4
  %172 = load %struct.config_real*, %struct.config_real** %9, align 8
  %173 = getelementptr inbounds %struct.config_real, %struct.config_real* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load double, double* %10, align 8
  %177 = call i32 (i32, i8*, i32, ...) @elog(i32 %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %175, double %176)
  br label %178

178:                                              ; preds = %170, %145
  %179 = load %struct.config_real*, %struct.config_real** %9, align 8
  %180 = getelementptr inbounds %struct.config_real, %struct.config_real* %179, i32 0, i32 7
  %181 = load i32 (double, i8*)*, i32 (double, i8*)** %180, align 8
  %182 = icmp ne i32 (double, i8*)* %181, null
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.config_real*, %struct.config_real** %9, align 8
  %185 = getelementptr inbounds %struct.config_real, %struct.config_real* %184, i32 0, i32 7
  %186 = load i32 (double, i8*)*, i32 (double, i8*)** %185, align 8
  %187 = load double, double* %10, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = call i32 %186(double %187, i8* %188)
  br label %190

190:                                              ; preds = %183, %178
  %191 = load double, double* %10, align 8
  %192 = load %struct.config_real*, %struct.config_real** %9, align 8
  %193 = getelementptr inbounds %struct.config_real, %struct.config_real* %192, i32 0, i32 4
  store double %191, double* %193, align 8
  %194 = load %struct.config_real*, %struct.config_real** %9, align 8
  %195 = getelementptr inbounds %struct.config_real, %struct.config_real* %194, i32 0, i32 3
  %196 = load double*, double** %195, align 8
  store double %191, double* %196, align 8
  %197 = load i8*, i8** %11, align 8
  %198 = load %struct.config_real*, %struct.config_real** %9, align 8
  %199 = getelementptr inbounds %struct.config_real, %struct.config_real* %198, i32 0, i32 5
  store i8* %197, i8** %199, align 8
  %200 = load %struct.config_real*, %struct.config_real** %9, align 8
  %201 = getelementptr inbounds %struct.config_real, %struct.config_real* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  store i8* %197, i8** %202, align 8
  br label %306

203:                                              ; preds = %1
  %204 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %205 = bitcast %struct.config_generic* %204 to %struct.config_string*
  store %struct.config_string* %205, %struct.config_string** %12, align 8
  store i8* null, i8** %14, align 8
  %206 = load %struct.config_string*, %struct.config_string** %12, align 8
  %207 = getelementptr inbounds %struct.config_string, %struct.config_string* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %203
  %211 = load i32, i32* @FATAL, align 4
  %212 = load %struct.config_string*, %struct.config_string** %12, align 8
  %213 = getelementptr inbounds %struct.config_string, %struct.config_string* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = call i8* @guc_strdup(i32 %211, i32* %214)
  store i8* %215, i8** %13, align 8
  br label %217

216:                                              ; preds = %203
  store i8* null, i8** %13, align 8
  br label %217

217:                                              ; preds = %216, %210
  %218 = load %struct.config_string*, %struct.config_string** %12, align 8
  %219 = load i8*, i8** @PGC_S_DEFAULT, align 8
  %220 = load i32, i32* @LOG, align 4
  %221 = call i32 @call_string_check_hook(%struct.config_string* %218, i8** %13, i8** %14, i8* %219, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %237, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* @FATAL, align 4
  %225 = load %struct.config_string*, %struct.config_string** %12, align 8
  %226 = getelementptr inbounds %struct.config_string, %struct.config_string* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i8*, i8** %13, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i8*, i8** %13, align 8
  br label %234

233:                                              ; preds = %223
  br label %234

234:                                              ; preds = %233, %231
  %235 = phi i8* [ %232, %231 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %233 ]
  %236 = call i32 (i32, i8*, i32, ...) @elog(i32 %224, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %228, i8* %235)
  br label %237

237:                                              ; preds = %234, %217
  %238 = load %struct.config_string*, %struct.config_string** %12, align 8
  %239 = getelementptr inbounds %struct.config_string, %struct.config_string* %238, i32 0, i32 4
  %240 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %239, align 8
  %241 = icmp ne i32 (i8*, i8*)* %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load %struct.config_string*, %struct.config_string** %12, align 8
  %244 = getelementptr inbounds %struct.config_string, %struct.config_string* %243, i32 0, i32 4
  %245 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %244, align 8
  %246 = load i8*, i8** %13, align 8
  %247 = load i8*, i8** %14, align 8
  %248 = call i32 %245(i8* %246, i8* %247)
  br label %249

249:                                              ; preds = %242, %237
  %250 = load i8*, i8** %13, align 8
  %251 = load %struct.config_string*, %struct.config_string** %12, align 8
  %252 = getelementptr inbounds %struct.config_string, %struct.config_string* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  %253 = load %struct.config_string*, %struct.config_string** %12, align 8
  %254 = getelementptr inbounds %struct.config_string, %struct.config_string* %253, i32 0, i32 0
  %255 = load i8**, i8*** %254, align 8
  store i8* %250, i8** %255, align 8
  %256 = load i8*, i8** %14, align 8
  %257 = load %struct.config_string*, %struct.config_string** %12, align 8
  %258 = getelementptr inbounds %struct.config_string, %struct.config_string* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  %259 = load %struct.config_string*, %struct.config_string** %12, align 8
  %260 = getelementptr inbounds %struct.config_string, %struct.config_string* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  store i8* %256, i8** %261, align 8
  br label %306

262:                                              ; preds = %1
  %263 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %264 = bitcast %struct.config_generic* %263 to %struct.config_enum*
  store %struct.config_enum* %264, %struct.config_enum** %15, align 8
  %265 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %266 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  store i32 %267, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %268 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %269 = load i8*, i8** @PGC_S_DEFAULT, align 8
  %270 = load i32, i32* @LOG, align 4
  %271 = call i32 @call_enum_check_hook(%struct.config_enum* %268, i32* %16, i8** %17, i8* %269, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %281, label %273

273:                                              ; preds = %262
  %274 = load i32, i32* @FATAL, align 4
  %275 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %276 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %16, align 4
  %280 = call i32 (i32, i8*, i32, ...) @elog(i32 %274, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %273, %262
  %282 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %283 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %282, i32 0, i32 5
  %284 = load i32 (i32, i8*)*, i32 (i32, i8*)** %283, align 8
  %285 = icmp ne i32 (i32, i8*)* %284, null
  br i1 %285, label %286, label %293

286:                                              ; preds = %281
  %287 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %288 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %287, i32 0, i32 5
  %289 = load i32 (i32, i8*)*, i32 (i32, i8*)** %288, align 8
  %290 = load i32, i32* %16, align 4
  %291 = load i8*, i8** %17, align 8
  %292 = call i32 %289(i32 %290, i8* %291)
  br label %293

293:                                              ; preds = %286, %281
  %294 = load i32, i32* %16, align 4
  %295 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %296 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  %297 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %298 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  store i32 %294, i32* %299, align 4
  %300 = load i8*, i8** %17, align 8
  %301 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %302 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %301, i32 0, i32 3
  store i8* %300, i8** %302, align 8
  %303 = load %struct.config_enum*, %struct.config_enum** %15, align 8
  %304 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  store i8* %300, i8** %305, align 8
  br label %306

306:                                              ; preds = %1, %293, %249, %190, %132, %74
  ret void
}

declare dso_local i32 @call_bool_check_hook(%struct.config_bool*, i32*, i8**, i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @call_int_check_hook(%struct.config_int*, i32*, i8**, i8*, i32) #1

declare dso_local i32 @call_real_check_hook(%struct.config_real*, double*, i8**, i8*, i32) #1

declare dso_local i8* @guc_strdup(i32, i32*) #1

declare dso_local i32 @call_string_check_hook(%struct.config_string*, i8**, i8**, i8*, i32) #1

declare dso_local i32 @call_enum_check_hook(%struct.config_enum*, i32*, i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
