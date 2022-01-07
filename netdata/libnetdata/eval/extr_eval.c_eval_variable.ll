; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_eval_variable.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_eval_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64*, i64*, i64*, i64* }
%struct.TYPE_5__ = type { i64, i32 }

@eval_variable.this_hash = internal global i64 0, align 8
@eval_variable.now_hash = internal global i64 0, align 8
@eval_variable.after_hash = internal global i64 0, align 8
@eval_variable.before_hash = internal global i64 0, align 8
@eval_variable.status_hash = internal global i64 0, align 8
@eval_variable.removed_hash = internal global i64 0, align 8
@eval_variable.uninitialized_hash = internal global i64 0, align 8
@eval_variable.undefined_hash = internal global i64 0, align 8
@eval_variable.clear_hash = internal global i64 0, align 8
@eval_variable.warning_hash = internal global i64 0, align 8
@eval_variable.critical_hash = internal global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"REMOVED\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"UNINITIALIZED\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"CRITICAL\00", align 1
@NAN = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"[ $this = \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" ] \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"[ $after = \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"[ $before = \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"[ $now = \00", align 1
@RRDCALC_STATUS_UNINITIALIZED = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"[ $status = \00", align 1
@RRDCALC_STATUS_REMOVED = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"[ $REMOVED = \00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"[ $UNINITIALIZED = \00", align 1
@RRDCALC_STATUS_UNDEFINED = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [16 x i8] c"[ $UNDEFINED = \00", align 1
@RRDCALC_STATUS_CLEAR = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"[ $CLEAR = \00", align 1
@RRDCALC_STATUS_WARNING = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"[ $WARNING = \00", align 1
@RRDCALC_STATUS_CRITICAL = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"[ $CRITICAL = \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"[ ${%s} = \00", align 1
@EVAL_ERROR_UNKNOWN_VARIABLE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"[ undefined variable '%s' ] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*)* @eval_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval_variable(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* @eval_variable.this_hash, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = call i64 @simple_hash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %15, i64* @eval_variable.this_hash, align 8
  %16 = call i64 @simple_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %16, i64* @eval_variable.now_hash, align 8
  %17 = call i64 @simple_hash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i64 %17, i64* @eval_variable.after_hash, align 8
  %18 = call i64 @simple_hash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i64 %18, i64* @eval_variable.before_hash, align 8
  %19 = call i64 @simple_hash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i64 %19, i64* @eval_variable.status_hash, align 8
  %20 = call i64 @simple_hash(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i64 %20, i64* @eval_variable.removed_hash, align 8
  %21 = call i64 @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i64 %21, i64* @eval_variable.uninitialized_hash, align 8
  %22 = call i64 @simple_hash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i64 %22, i64* @eval_variable.undefined_hash, align 8
  %23 = call i64 @simple_hash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i64 %23, i64* @eval_variable.clear_hash, align 8
  %24 = call i64 @simple_hash(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i64 %24, i64* @eval_variable.warning_hash, align 8
  %25 = call i64 @simple_hash(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i64 %25, i64* @eval_variable.critical_hash, align 8
  br label %26

26:                                               ; preds = %14, %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @eval_variable.this_hash, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strcmp(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %32, %26
  %40 = phi i1 [ false, %26 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = load i64*, i64** %46, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %52, align 8
  br label %56

54:                                               ; preds = %44
  %55 = load i64, i64* @NAN, align 8
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi i64 [ %53, %49 ], [ %55, %54 ]
  store i64 %57, i64* %8, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @buffer_strcat(i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @print_parsed_as_constant(i32 %64, i64 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @buffer_strcat(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %4, align 8
  br label %506

72:                                               ; preds = %39
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @eval_variable.after_hash, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strcmp(i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %78, %72
  %86 = phi i1 [ false, %72 ], [ %84, %78 ]
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %104, align 8
  br label %108

106:                                              ; preds = %95, %90
  %107 = load i64, i64* @NAN, align 8
  br label %108

108:                                              ; preds = %106, %101
  %109 = phi i64 [ %105, %101 ], [ %107, %106 ]
  store i64 %109, i64* %8, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @buffer_strcat(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @print_parsed_as_constant(i32 %116, i64 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @buffer_strcat(i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %123 = load i64, i64* %8, align 8
  store i64 %123, i64* %4, align 8
  br label %506

124:                                              ; preds = %85
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @eval_variable.before_hash, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @strcmp(i32 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br label %137

137:                                              ; preds = %130, %124
  %138 = phi i1 [ false, %124 ], [ %136, %130 ]
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %176

142:                                              ; preds = %137
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i64*, i64** %144, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %156, align 8
  br label %160

158:                                              ; preds = %147, %142
  %159 = load i64, i64* @NAN, align 8
  br label %160

160:                                              ; preds = %158, %153
  %161 = phi i64 [ %157, %153 ], [ %159, %158 ]
  store i64 %161, i64* %8, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @buffer_strcat(i32 %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i32 @print_parsed_as_constant(i32 %168, i64 %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @buffer_strcat(i32 %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %175 = load i64, i64* %8, align 8
  store i64 %175, i64* %4, align 8
  br label %506

176:                                              ; preds = %137
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @eval_variable.now_hash, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @strcmp(i32 %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  br label %189

189:                                              ; preds = %182, %176
  %190 = phi i1 [ false, %176 ], [ %188, %182 ]
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %189
  %195 = call i64 (...) @now_realtime_sec()
  store i64 %195, i64* %8, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @buffer_strcat(i32 %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i64, i64* %8, align 8
  %204 = call i32 @print_parsed_as_constant(i32 %202, i64 %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @buffer_strcat(i32 %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %209 = load i64, i64* %8, align 8
  store i64 %209, i64* %4, align 8
  br label %506

210:                                              ; preds = %189
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @eval_variable.status_hash, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %210
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @strcmp(i32 %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  br label %223

223:                                              ; preds = %216, %210
  %224 = phi i1 [ false, %210 ], [ %222, %216 ]
  %225 = zext i1 %224 to i32
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %256

228:                                              ; preds = %223
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  %232 = icmp ne i64* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  %236 = load i64*, i64** %235, align 8
  %237 = load i64, i64* %236, align 8
  br label %240

238:                                              ; preds = %228
  %239 = load i64, i64* @RRDCALC_STATUS_UNINITIALIZED, align 8
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi i64 [ %237, %233 ], [ %239, %238 ]
  store i64 %241, i64* %8, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @buffer_strcat(i32 %244, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i64, i64* %8, align 8
  %250 = call i32 @print_parsed_as_constant(i32 %248, i64 %249)
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @buffer_strcat(i32 %253, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %255 = load i64, i64* %8, align 8
  store i64 %255, i64* %4, align 8
  br label %506

256:                                              ; preds = %223
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @eval_variable.removed_hash, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %256
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @strcmp(i32 %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  %268 = xor i1 %267, true
  br label %269

269:                                              ; preds = %262, %256
  %270 = phi i1 [ false, %256 ], [ %268, %262 ]
  %271 = zext i1 %270 to i32
  %272 = call i64 @unlikely(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %290

274:                                              ; preds = %269
  %275 = load i64, i64* @RRDCALC_STATUS_REMOVED, align 8
  store i64 %275, i64* %8, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @buffer_strcat(i32 %278, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i64, i64* %8, align 8
  %284 = call i32 @print_parsed_as_constant(i32 %282, i64 %283)
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @buffer_strcat(i32 %287, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %289 = load i64, i64* %8, align 8
  store i64 %289, i64* %4, align 8
  br label %506

290:                                              ; preds = %269
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @eval_variable.uninitialized_hash, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %290
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @strcmp(i32 %299, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  br label %303

303:                                              ; preds = %296, %290
  %304 = phi i1 [ false, %290 ], [ %302, %296 ]
  %305 = zext i1 %304 to i32
  %306 = call i64 @unlikely(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %324

308:                                              ; preds = %303
  %309 = load i64, i64* @RRDCALC_STATUS_UNINITIALIZED, align 8
  store i64 %309, i64* %8, align 8
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @buffer_strcat(i32 %312, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i64, i64* %8, align 8
  %318 = call i32 @print_parsed_as_constant(i32 %316, i64 %317)
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @buffer_strcat(i32 %321, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %323 = load i64, i64* %8, align 8
  store i64 %323, i64* %4, align 8
  br label %506

324:                                              ; preds = %303
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @eval_variable.undefined_hash, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %324
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @strcmp(i32 %333, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %335 = icmp ne i32 %334, 0
  %336 = xor i1 %335, true
  br label %337

337:                                              ; preds = %330, %324
  %338 = phi i1 [ false, %324 ], [ %336, %330 ]
  %339 = zext i1 %338 to i32
  %340 = call i64 @unlikely(i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %358

342:                                              ; preds = %337
  %343 = load i64, i64* @RRDCALC_STATUS_UNDEFINED, align 8
  store i64 %343, i64* %8, align 8
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @buffer_strcat(i32 %346, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i64, i64* %8, align 8
  %352 = call i32 @print_parsed_as_constant(i32 %350, i64 %351)
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @buffer_strcat(i32 %355, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %357 = load i64, i64* %8, align 8
  store i64 %357, i64* %4, align 8
  br label %506

358:                                              ; preds = %337
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @eval_variable.clear_hash, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %371

364:                                              ; preds = %358
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @strcmp(i32 %367, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %369 = icmp ne i32 %368, 0
  %370 = xor i1 %369, true
  br label %371

371:                                              ; preds = %364, %358
  %372 = phi i1 [ false, %358 ], [ %370, %364 ]
  %373 = zext i1 %372 to i32
  %374 = call i64 @unlikely(i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %392

376:                                              ; preds = %371
  %377 = load i64, i64* @RRDCALC_STATUS_CLEAR, align 8
  store i64 %377, i64* %8, align 8
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @buffer_strcat(i32 %380, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i64, i64* %8, align 8
  %386 = call i32 @print_parsed_as_constant(i32 %384, i64 %385)
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @buffer_strcat(i32 %389, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %391 = load i64, i64* %8, align 8
  store i64 %391, i64* %4, align 8
  br label %506

392:                                              ; preds = %371
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @eval_variable.warning_hash, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %405

398:                                              ; preds = %392
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @strcmp(i32 %401, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %403 = icmp ne i32 %402, 0
  %404 = xor i1 %403, true
  br label %405

405:                                              ; preds = %398, %392
  %406 = phi i1 [ false, %392 ], [ %404, %398 ]
  %407 = zext i1 %406 to i32
  %408 = call i64 @unlikely(i32 %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %426

410:                                              ; preds = %405
  %411 = load i64, i64* @RRDCALC_STATUS_WARNING, align 8
  store i64 %411, i64* %8, align 8
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @buffer_strcat(i32 %414, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i64, i64* %8, align 8
  %420 = call i32 @print_parsed_as_constant(i32 %418, i64 %419)
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = call i32 @buffer_strcat(i32 %423, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %425 = load i64, i64* %8, align 8
  store i64 %425, i64* %4, align 8
  br label %506

426:                                              ; preds = %405
  %427 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @eval_variable.critical_hash, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %439

432:                                              ; preds = %426
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @strcmp(i32 %435, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %437 = icmp ne i32 %436, 0
  %438 = xor i1 %437, true
  br label %439

439:                                              ; preds = %432, %426
  %440 = phi i1 [ false, %426 ], [ %438, %432 ]
  %441 = zext i1 %440 to i32
  %442 = call i64 @unlikely(i32 %441)
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %460

444:                                              ; preds = %439
  %445 = load i64, i64* @RRDCALC_STATUS_CRITICAL, align 8
  store i64 %445, i64* %8, align 8
  %446 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @buffer_strcat(i32 %448, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %450 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = load i64, i64* %8, align 8
  %454 = call i32 @print_parsed_as_constant(i32 %452, i64 %453)
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @buffer_strcat(i32 %457, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %459 = load i64, i64* %8, align 8
  store i64 %459, i64* %4, align 8
  br label %506

460:                                              ; preds = %439
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %495

465:                                              ; preds = %460
  %466 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = call i64 @health_variable_lookup(i32 %468, i64 %471, i64 %474, i64* %8)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %495

477:                                              ; preds = %465
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @buffer_sprintf(i32 %480, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %483)
  %485 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i64, i64* %8, align 8
  %489 = call i32 @print_parsed_as_constant(i32 %487, i64 %488)
  %490 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @buffer_strcat(i32 %492, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %494 = load i64, i64* %8, align 8
  store i64 %494, i64* %4, align 8
  br label %506

495:                                              ; preds = %465, %460
  %496 = load i32, i32* @EVAL_ERROR_UNKNOWN_VARIABLE, align 4
  %497 = load i32*, i32** %7, align 8
  store i32 %496, i32* %497, align 4
  %498 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = call i32 @buffer_sprintf(i32 %500, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %503)
  %505 = load i64, i64* @NAN, align 8
  store i64 %505, i64* %4, align 8
  br label %506

506:                                              ; preds = %495, %477, %444, %410, %376, %342, %308, %274, %240, %194, %160, %108, %56
  %507 = load i64, i64* %4, align 8
  ret i64 %507
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @buffer_strcat(i32, i8*) #1

declare dso_local i32 @print_parsed_as_constant(i32, i64) #1

declare dso_local i64 @now_realtime_sec(...) #1

declare dso_local i64 @health_variable_lookup(i32, i64, i64, i64*) #1

declare dso_local i32 @buffer_sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
