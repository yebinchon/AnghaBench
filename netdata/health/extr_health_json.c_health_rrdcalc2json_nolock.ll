; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health_json.c_health_rrdcalc2json_nolock.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health_json.c_health_rrdcalc2json_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i8*, i32, i8*, i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32, i64, i64, i64*, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_10__*, i32, i32, i64 }
%struct.TYPE_13__ = type { i64*, i64* }
%struct.TYPE_12__ = type { i64*, i64* }
%struct.TYPE_11__ = type { i64*, i64* }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [622 x i8] c"\09\09\22%s.%s\22: {\0A\09\09\09\22id\22: %lu,\0A\09\09\09\22name\22: \22%s\22,\0A\09\09\09\22chart\22: \22%s\22,\0A\09\09\09\22family\22: \22%s\22,\0A\09\09\09\22active\22: %s,\0A\09\09\09\22disabled\22: %s,\0A\09\09\09\22silenced\22: %s,\0A\09\09\09\22exec\22: \22%s\22,\0A\09\09\09\22recipient\22: \22%s\22,\0A\09\09\09\22source\22: \22%s\22,\0A\09\09\09\22units\22: \22%s\22,\0A\09\09\09\22info\22: \22%s\22,\0A\09\09\09\22status\22: \22%s\22,\0A\09\09\09\22last_status_change\22: %lu,\0A\09\09\09\22last_updated\22: %lu,\0A\09\09\09\22next_update\22: %lu,\0A\09\09\09\22update_every\22: %d,\0A\09\09\09\22delay_up_duration\22: %d,\0A\09\09\09\22delay_down_duration\22: %d,\0A\09\09\09\22delay_max_duration\22: %d,\0A\09\09\09\22delay_multiplier\22: %f,\0A\09\09\09\22delay\22: %d,\0A\09\09\09\22delay_up_to_timestamp\22: %lu,\0A\09\09\09\22warn_repeat_every\22: \22%u\22,\0A\09\09\09\22crit_repeat_every\22: \22%u\22,\0A\09\09\09\22value_string\22: \22%s\22,\0A\09\09\09\22last_repeat\22: \22%lu\22,\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@RRDCALC_FLAG_DISABLED = common dso_local global i32 0, align 4
@RRDCALC_FLAG_SILENCED = common dso_local global i32 0, align 4
@RRDCALC_FLAG_NO_CLEAR_NOTIFICATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"\09\09\09\22no_clear_notification\22: true,\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\09\09\09\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"lookup_dimensions\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.8 = private unnamed_addr constant [137 x i8] c"\09\09\09\22db_after\22: %lu,\0A\09\09\09\22db_before\22: %lu,\0A\09\09\09\22lookup_method\22: \22%s\22,\0A\09\09\09\22lookup_after\22: %d,\0A\09\09\09\22lookup_before\22: %d,\0A\09\09\09\22lookup_options\22: \22\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\22,\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"calc\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"calc_parsed\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"warn_parsed\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"crit\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"crit_parsed\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"\09\09\09\22green\22:\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\09\09\09\22red\22:\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"\09\09\09\22value\22:\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\09\09}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, %struct.TYPE_15__*)* @health_rrdcalc2json_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @health_rrdcalc2json_nolock(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca [101 x i8], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %8 = getelementptr inbounds [101 x i8], [101 x i8]* %7, i64 0, i64 0
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @format_value_and_unit(i8* %8, i32 100, i32 %11, i8* %14, i32 -1)
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 34
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 35
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 36
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 35
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 34
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 33
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 33
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  br label %52

51:                                               ; preds = %38, %3
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i8* [ %50, %45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %51 ]
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 33
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RRDCALC_FLAG_DISABLED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @RRDCALC_FLAG_SILENCED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 32
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %52
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 32
  %83 = load i64, i64* %82, align 8
  br label %88

84:                                               ; preds = %52
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i64 [ %83, %80 ], [ %87, %84 ]
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 31
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 31
  %97 = load i64, i64* %96, align 8
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i64 [ %97, %94 ], [ %101, %98 ]
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 30
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  br label %116

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %111
  %117 = phi i8* [ %114, %111 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %115 ]
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  br label %127

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i8* [ %125, %122 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %126 ]
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 29
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @rrdcalc_status2string(i32 %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 28
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 27
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 26
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 25
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 24
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 23
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 22
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 21
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 20
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 19
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 18
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 17
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds [101 x i8], [101 x i8]* %7, i64 0, i64 0
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 16
  %172 = load i64, i64* %171, align 8
  %173 = call i32 (i32*, i8*, i64, i64, i64, i32, i32, ...) @buffer_sprintf(i32* %16, i8* getelementptr inbounds ([622 x i8], [622 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %24, i64 %27, i32 %30, i32 %33, i8* %53, i8* %59, i8* %67, i8* %75, i64 %89, i64 %103, i32 %106, i8* %117, i8* %128, i32 %132, i64 %135, i64 %138, i64 %141, i32 %144, i32 %147, i32 %150, i32 %153, i32 %156, i32 %159, i64 %162, i32 %165, i32 %168, i8* %169, i64 %172)
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @RRDCALC_FLAG_NO_CLEAR_NOTIFICATION, align 4
  %178 = and i32 %176, %177
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %127
  %182 = load i32*, i32** %5, align 8
  %183 = call i32 @buffer_strcat(i32* %182, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %127
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %186 = call i64 @RRDCALC_HAS_DB_LOOKUP(%struct.TYPE_15__* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %232

188:                                              ; preds = %184
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 15
  %191 = load i64*, i64** %190, align 8
  %192 = icmp ne i64* %191, null
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 15
  %196 = load i64*, i64** %195, align 8
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i32*, i32** %5, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 15
  %203 = load i64*, i64** %202, align 8
  %204 = call i32 @health_string2json(i32* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64* %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %205

205:                                              ; preds = %199, %193, %188
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 14
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 13
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 12
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @group_method2string(i32 %215)
  %217 = sext i32 %216 to i64
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 11
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (i32*, i8*, i64, i64, i64, i32, i32, ...) @buffer_sprintf(i32* %206, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.8, i64 0, i64 0), i64 %209, i64 %212, i64 %217, i32 %220, i32 %223)
  %225 = load i32*, i32** %5, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @buffer_data_options2string(i32* %225, i32 %228)
  %230 = load i32*, i32** %5, align 8
  %231 = call i32 @buffer_strcat(i32* %230, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %232

232:                                              ; preds = %205, %184
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 9
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = icmp ne %struct.TYPE_11__* %235, null
  br i1 %236, label %237, label %252

237:                                              ; preds = %232
  %238 = load i32*, i32** %5, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 9
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load i64*, i64** %242, align 8
  %244 = call i32 @health_string2json(i32* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64* %243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %245 = load i32*, i32** %5, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 9
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = call i32 @health_string2json(i32* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64* %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %252

252:                                              ; preds = %237, %232
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = icmp ne %struct.TYPE_12__* %255, null
  br i1 %256, label %257, label %272

257:                                              ; preds = %252
  %258 = load i32*, i32** %5, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 8
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %263 = load i64*, i64** %262, align 8
  %264 = call i32 @health_string2json(i32* %258, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64* %263, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %265 = load i32*, i32** %5, align 8
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = call i32 @health_string2json(i32* %265, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %272

272:                                              ; preds = %257, %252
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 7
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = icmp ne %struct.TYPE_13__* %275, null
  br i1 %276, label %277, label %292

277:                                              ; preds = %272
  %278 = load i32*, i32** %5, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 7
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  %283 = load i64*, i64** %282, align 8
  %284 = call i32 @health_string2json(i32* %278, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64* %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %285 = load i32*, i32** %5, align 8
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 7
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = load i64*, i64** %289, align 8
  %291 = call i32 @health_string2json(i32* %285, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i64* %290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %292

292:                                              ; preds = %277, %272
  %293 = load i32*, i32** %5, align 8
  %294 = call i32 @buffer_strcat(i32* %293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %295 = load i32*, i32** %5, align 8
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @buffer_rrd_value(i32* %295, i32 %298)
  %300 = load i32*, i32** %5, align 8
  %301 = call i32 @buffer_strcat(i32* %300, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @buffer_strcat(i32* %302, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %304 = load i32*, i32** %5, align 8
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @buffer_rrd_value(i32* %304, i32 %307)
  %309 = load i32*, i32** %5, align 8
  %310 = call i32 @buffer_strcat(i32* %309, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %311 = load i32*, i32** %5, align 8
  %312 = call i32 @buffer_strcat(i32* %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %313 = load i32*, i32** %5, align 8
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @buffer_rrd_value(i32* %313, i32 %316)
  %318 = load i32*, i32** %5, align 8
  %319 = call i32 @buffer_strcat(i32* %318, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %320 = load i32*, i32** %5, align 8
  %321 = call i32 @buffer_strcat(i32* %320, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local i32 @format_value_and_unit(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @buffer_sprintf(i32*, i8*, i64, i64, i64, i32, i32, ...) #1

declare dso_local i32 @rrdcalc_status2string(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i64 @RRDCALC_HAS_DB_LOOKUP(%struct.TYPE_15__*) #1

declare dso_local i32 @health_string2json(i32*, i8*, i8*, i64*, i8*) #1

declare dso_local i32 @group_method2string(i32) #1

declare dso_local i32 @buffer_data_options2string(i32*, i32) #1

declare dso_local i32 @buffer_rrd_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
