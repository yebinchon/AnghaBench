; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_status.c_fpm_status_export_to_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_status.c_fpm_status_export_to_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_s = type { i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.timeval = type { i64, i64 }
%struct.fpm_scoreboard_proc_s = type { i32, i64, i8*, i8*, i8*, i8*, i8*, i64, i64, i32, %struct.timeval, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"[pool %s] status: scoreboard already in use.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pool\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"process-manager\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"start-time\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"start-since\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"accepted-conn\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"idle-processes\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"active-processes\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"total-processes\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"max-active-processes\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"max-children-reached\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"slow-requests\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"requests\00", align 1
@FPM_REQUEST_ACCEPTING = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"request-duration\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"request-method\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"request-uri\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"query-string\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"request-length\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"last-request-memory\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"procs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_status_export_to_zval(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fpm_scoreboard_s, align 8
  %5 = alloca %struct.fpm_scoreboard_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.fpm_scoreboard_proc_s*, align 8
  store i32* %0, i32** %3, align 8
  %16 = call %struct.fpm_scoreboard_s* @fpm_scoreboard_acquire(i32* null, i32 1)
  store %struct.fpm_scoreboard_s* %16, %struct.fpm_scoreboard_s** %5, align 8
  %17 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %5, align 8
  %18 = icmp ne %struct.fpm_scoreboard_s* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ZLOG_NOTICE, align 4
  %21 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %5, align 8
  %22 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @zlog(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %2, align 4
  br label %299

25:                                               ; preds = %1
  %26 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %5, align 8
  %27 = bitcast %struct.fpm_scoreboard_s* %4 to i8*
  %28 = bitcast %struct.fpm_scoreboard_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 104, i1 false)
  %29 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %13, align 8
  %33 = alloca %struct.fpm_scoreboard_proc_s, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %59, %25
  %35 = load i32, i32* %12, align 4
  %36 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %5, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_acquire(%struct.fpm_scoreboard_s* %40, i32 %41, i32 1)
  store %struct.fpm_scoreboard_proc_s* %42, %struct.fpm_scoreboard_proc_s** %15, align 8
  %43 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %15, align 8
  %44 = icmp ne %struct.fpm_scoreboard_proc_s* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %47
  %49 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 16
  br label %59

50:                                               ; preds = %39
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %52
  %54 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %15, align 8
  %55 = bitcast %struct.fpm_scoreboard_proc_s* %53 to i8*
  %56 = bitcast %struct.fpm_scoreboard_proc_s* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %55, i8* align 8 %56, i64 144, i1 false)
  %57 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %15, align 8
  %58 = call i32 @fpm_scoreboard_proc_release(%struct.fpm_scoreboard_proc_s* %57)
  br label %59

59:                                               ; preds = %50, %45
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %5, align 8
  %64 = call i32 @fpm_scoreboard_release(%struct.fpm_scoreboard_s* %63)
  %65 = call i64 @time(i32* null)
  store i64 %65, i64* %8, align 8
  %66 = call i32 @fpm_clock_get(%struct.timeval* %10)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @array_init(i32* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @add_assoc_string(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 12
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @PM2STR(i32 %75)
  %77 = call i32 @add_assoc_string(i32* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @add_assoc_long(i32* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %83, %85
  %87 = call i32 @add_assoc_long(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @add_assoc_long(i32* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @add_assoc_long(i32* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @add_assoc_long(i32* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %102, %104
  %106 = call i32 @add_assoc_long(i32* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @add_assoc_long(i32* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @add_assoc_long(i32* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @add_assoc_long(i32* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 %117)
  %119 = call i32 @array_init(i32* %6)
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %292, %62
  %121 = load i32, i32* %12, align 4
  %122 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %4, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %295

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %127
  %129 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 16
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  br label %292

133:                                              ; preds = %125
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %135
  store %struct.fpm_scoreboard_proc_s* %136, %struct.fpm_scoreboard_proc_s** %15, align 8
  %137 = call i32 @array_init(i32* %7)
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %139
  %141 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %140, i32 0, i32 13
  %142 = load i64, i64* %141, align 16
  %143 = call i32 @add_assoc_long(i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 %142)
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %145
  %147 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @fpm_request_get_stage_name(i64 %148)
  %150 = call i32 @add_assoc_string(i32* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %152
  %154 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %153, i32 0, i32 12
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @add_assoc_long(i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %155)
  %157 = load i64, i64* %8, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %159
  %161 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %160, i32 0, i32 12
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %157, %162
  %164 = call i32 @add_assoc_long(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %163)
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %166
  %168 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 16
  %170 = call i32 @add_assoc_long(i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i64 %169)
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %172
  %174 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @FPM_REQUEST_ACCEPTING, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %133
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %180
  %182 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %181, i32 0, i32 10
  %183 = bitcast %struct.timeval* %9 to i8*
  %184 = bitcast %struct.timeval* %182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 16 %184, i64 16, i1 false)
  br label %191

185:                                              ; preds = %133
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %187
  %189 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %188, i32 0, i32 9
  %190 = call i32 @timersub(%struct.timeval* %10, i32* %189, %struct.timeval* %9)
  br label %191

191:                                              ; preds = %185, %178
  %192 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = mul i64 %193, 1000000
  %195 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %194, %196
  %198 = call i32 @add_assoc_long(i32* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i64 %197)
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %200
  %202 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 16
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %191
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %210
  %212 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 16
  br label %215

214:                                              ; preds = %191
  br label %215

215:                                              ; preds = %214, %208
  %216 = phi i8* [ %213, %208 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %214 ]
  %217 = call i32 @add_assoc_string(i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %219
  %221 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %220, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @add_assoc_string(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %222)
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %225
  %227 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %226, i32 0, i32 4
  %228 = load i8*, i8** %227, align 16
  %229 = call i32 @add_assoc_string(i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %228)
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %231
  %233 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %232, i32 0, i32 8
  %234 = load i64, i64* %233, align 16
  %235 = call i32 @add_assoc_long(i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i64 %234)
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %237
  %239 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %238, i32 0, i32 5
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %215
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %247
  %249 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %248, i32 0, i32 5
  %250 = load i8*, i8** %249, align 8
  br label %252

251:                                              ; preds = %215
  br label %252

252:                                              ; preds = %251, %245
  %253 = phi i8* [ %250, %245 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %251 ]
  %254 = call i32 @add_assoc_string(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %253)
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %256
  %258 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %257, i32 0, i32 6
  %259 = load i8*, i8** %258, align 16
  %260 = getelementptr inbounds i8, i8* %259, i64 0
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %252
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %266
  %268 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %267, i32 0, i32 6
  %269 = load i8*, i8** %268, align 16
  br label %271

270:                                              ; preds = %252
  br label %271

271:                                              ; preds = %270, %264
  %272 = phi i8* [ %269, %264 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %270 ]
  %273 = call i32 @add_assoc_string(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %272)
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %275
  %277 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @FPM_REQUEST_ACCEPTING, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %271
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i64 %283
  %285 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %284, i32 0, i32 7
  %286 = load i64, i64* %285, align 8
  br label %288

287:                                              ; preds = %271
  br label %288

288:                                              ; preds = %287, %281
  %289 = phi i64 [ %286, %281 ], [ 0, %287 ]
  %290 = call i32 @add_assoc_long(i32* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i64 %289)
  %291 = call i32 @add_next_index_zval(i32* %6, i32* %7)
  br label %292

292:                                              ; preds = %288, %132
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %12, align 4
  br label %120

295:                                              ; preds = %120
  %296 = load i32*, i32** %3, align 8
  %297 = call i32 @add_assoc_zval(i32* %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32* %6)
  store i32 0, i32* %2, align 4
  %298 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %298)
  br label %299

299:                                              ; preds = %295, %19
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local %struct.fpm_scoreboard_s* @fpm_scoreboard_acquire(i32*, i32) #1

declare dso_local i32 @zlog(i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_acquire(%struct.fpm_scoreboard_s*, i32, i32) #1

declare dso_local i32 @fpm_scoreboard_proc_release(%struct.fpm_scoreboard_proc_s*) #1

declare dso_local i32 @fpm_scoreboard_release(%struct.fpm_scoreboard_s*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @fpm_clock_get(%struct.timeval*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i8* @PM2STR(i32) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i64) #1

declare dso_local i8* @fpm_request_get_stage_name(i64) #1

declare dso_local i32 @timersub(%struct.timeval*, i32*, %struct.timeval*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
