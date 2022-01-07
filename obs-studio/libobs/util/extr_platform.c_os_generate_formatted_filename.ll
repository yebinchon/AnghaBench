; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform.c_os_generate_formatted_filename.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform.c_os_generate_formatted_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }
%struct.obs_video_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dstr = type { i64, i8*, i32 }

@os_generate_formatted_filename.spec = internal global [23 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)]], align 16
@.str = private unnamed_addr constant [6 x i8] c"%CCYY\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%Y\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%YY\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%y\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%MM\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%DD\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%hh\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%H\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%mm\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%M\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%ss\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%%\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%b\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%B\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%I\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%Z\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%FPS\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%CRES\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%ux%u\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%ORES\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"%VF\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @os_generate_formatted_filename(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm*, align 8
  %9 = alloca %struct.obs_video_info, align 4
  %10 = alloca i64, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca %struct.dstr, align 8
  %13 = alloca %struct.dstr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %19 = call i32 @time(i32 0)
  store i32 %19, i32* %7, align 4
  %20 = call %struct.tm* @localtime(i32* %7)
  store %struct.tm* %20, %struct.tm** %8, align 8
  %21 = call i32 @obs_get_video_info(%struct.obs_video_info* %9)
  store i64 23, i64* %10, align 8
  %22 = bitcast [128 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 128, i1 false)
  %23 = bitcast %struct.dstr* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  store i64 0, i64* %14, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @dstr_init_copy(%struct.dstr* %12, i8* %24)
  br label %26

26:                                               ; preds = %215, %3
  %27 = load i64, i64* %14, align 8
  %28 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %216

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %15, align 8
  store i64 0, i64* %16, align 8
  br label %36

36:                                               ; preds = %103, %31
  %37 = load i64, i64* %16, align 8
  %38 = icmp ult i64 %37, 23
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = icmp ne i8 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %106

46:                                               ; preds = %44
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds [23 x [2 x i8*]], [23 x [2 x i8*]]* @os_generate_formatted_filename.spec, i64 0, i64 %47
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %48, i64 0, i64 0
  %50 = load i8*, i8** %49, align 16
  %51 = call i64 @strlen(i8* %50)
  store i64 %51, i64* %17, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds [23 x [2 x i8*]], [23 x [2 x i8*]]* @os_generate_formatted_filename.spec, i64 0, i64 %53
  %55 = getelementptr inbounds [2 x i8*], [2 x i8*]* %54, i64 0, i64 0
  %56 = load i8*, i8** %55, align 16
  %57 = load i64, i64* %17, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i64 @astrcmp_n(i8* %52, i8* %56, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %46
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds [23 x [2 x i8*]], [23 x [2 x i8*]]* @os_generate_formatted_filename.spec, i64 0, i64 %62
  %64 = getelementptr inbounds [2 x i8*], [2 x i8*]* %63, i64 0, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds [23 x [2 x i8*]], [23 x [2 x i8*]]* @os_generate_formatted_filename.spec, i64 0, i64 %70
  %72 = getelementptr inbounds [2 x i8*], [2 x i8*]* %71, i64 0, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.tm*, %struct.tm** %8, align 8
  %75 = call i32 @strftime(i8* %69, i32 128, i8* %73, %struct.tm* %74)
  br label %84

76:                                               ; preds = %61
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds [23 x [2 x i8*]], [23 x [2 x i8*]]* @os_generate_formatted_filename.spec, i64 0, i64 %78
  %80 = getelementptr inbounds [2 x i8*], [2 x i8*]* %79, i64 0, i64 0
  %81 = load i8*, i8** %80, align 16
  %82 = load %struct.tm*, %struct.tm** %8, align 8
  %83 = call i32 @strftime(i8* %77, i32 128, i8* %81, %struct.tm* %82)
  br label %84

84:                                               ; preds = %76, %68
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %86 = call i32 @dstr_copy(%struct.dstr* %13, i8* %85)
  %87 = getelementptr inbounds %struct.dstr, %struct.dstr* %13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.dstr, %struct.dstr* %13, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @valid_string(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %17, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %100 = call i32 @replace_text(%struct.dstr* %12, i64 %96, i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %95, %90, %84
  br label %102

102:                                              ; preds = %101, %46
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %16, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %16, align 8
  br label %36

106:                                              ; preds = %44
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %108 = load i8, i8* %107, align 16
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %186, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %15, align 8
  %112 = call i64 @astrcmp_n(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 4)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %120 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sitofp i32 %121 to double
  %123 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), double %122)
  br label %135

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sitofp i32 %126 to double
  %128 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sitofp i32 %129 to double
  %131 = fdiv double %127, %130
  store double %131, double* %18, align 8
  %132 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %133 = load double, double* %18, align 8
  %134 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), double %133)
  br label %135

135:                                              ; preds = %124, %118
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %138 = call i32 @replace_text(%struct.dstr* %12, i64 %136, i32 4, i8* %137)
  br label %185

139:                                              ; preds = %110
  %140 = load i8*, i8** %15, align 8
  %141 = call i64 @astrcmp_n(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 5)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %145 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = sitofp i32 %146 to double
  %148 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), double %147, i32 %149)
  %151 = load i64, i64* %14, align 8
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %153 = call i32 @replace_text(%struct.dstr* %12, i64 %151, i32 5, i8* %152)
  br label %184

154:                                              ; preds = %139
  %155 = load i8*, i8** %15, align 8
  %156 = call i64 @astrcmp_n(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 5)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %160 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = sitofp i32 %161 to double
  %163 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), double %162, i32 %164)
  %166 = load i64, i64* %14, align 8
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %168 = call i32 @replace_text(%struct.dstr* %12, i64 %166, i32 5, i8* %167)
  br label %183

169:                                              ; preds = %154
  %170 = load i8*, i8** %15, align 8
  %171 = call i64 @astrcmp_n(i8* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i32 3)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %175 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @get_video_format_name(i32 %176)
  %178 = call i32 @strcpy(i8* %174, i32 %177)
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %181 = call i32 @replace_text(%struct.dstr* %12, i64 %179, i32 3, i8* %180)
  br label %182

182:                                              ; preds = %173, %169
  br label %183

183:                                              ; preds = %182, %158
  br label %184

184:                                              ; preds = %183, %143
  br label %185

185:                                              ; preds = %184, %135
  br label %186

186:                                              ; preds = %185, %106
  %187 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %188 = load i8, i8* %187, align 16
  %189 = icmp ne i8 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %192 = call i64 @strlen(i8* %191)
  %193 = load i64, i64* %14, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %14, align 8
  %195 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %195, align 16
  br label %215

196:                                              ; preds = %186
  %197 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %198 = load i8, i8* %197, align 16
  %199 = icmp ne i8 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load i64, i64* %14, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 37
  br i1 %207, label %208, label %211

208:                                              ; preds = %200
  %209 = load i64, i64* %14, align 8
  %210 = call i32 @erase_ch(%struct.dstr* %12, i64 %209)
  br label %214

211:                                              ; preds = %200, %196
  %212 = load i64, i64* %14, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %14, align 8
  br label %214

214:                                              ; preds = %211, %208
  br label %215

215:                                              ; preds = %214, %190
  br label %26

216:                                              ; preds = %26
  %217 = load i32, i32* %5, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = call i32 @dstr_replace(%struct.dstr* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %216
  %222 = call i32 @dstr_cat_ch(%struct.dstr* %12, i8 signext 46)
  %223 = load i8*, i8** %4, align 8
  %224 = call i32 @dstr_cat(%struct.dstr* %12, i8* %223)
  %225 = call i32 @dstr_free(%struct.dstr* %13)
  %226 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ugt i64 %227, 255
  br i1 %228, label %229, label %231

229:                                              ; preds = %221
  %230 = call i32 @dstr_mid(%struct.dstr* %12, %struct.dstr* %12, i32 0, i32 255)
  br label %231

231:                                              ; preds = %229, %221
  %232 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  ret i8* %233
}

declare dso_local i32 @time(i32) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @obs_get_video_info(%struct.obs_video_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dstr_init_copy(%struct.dstr*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @astrcmp_n(i8*, i8*, i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #1

declare dso_local i64 @valid_string(i8*) #1

declare dso_local i32 @replace_text(%struct.dstr*, i64, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, double, ...) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @get_video_format_name(i32) #1

declare dso_local i32 @erase_ch(%struct.dstr*, i64) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i8 signext) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @dstr_mid(%struct.dstr*, %struct.dstr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
