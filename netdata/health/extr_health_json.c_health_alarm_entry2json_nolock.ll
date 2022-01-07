; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health_json.c_health_alarm_entry2json_nolock.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health_json.c_health_alarm_entry2json_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [593 x i8] c"\0A\09{\0A\09\09\22hostname\22: \22%s\22,\0A\09\09\22unique_id\22: %u,\0A\09\09\22alarm_id\22: %u,\0A\09\09\22alarm_event_id\22: %u,\0A\09\09\22name\22: \22%s\22,\0A\09\09\22chart\22: \22%s\22,\0A\09\09\22family\22: \22%s\22,\0A\09\09\22processed\22: %s,\0A\09\09\22updated\22: %s,\0A\09\09\22exec_run\22: %lu,\0A\09\09\22exec_failed\22: %s,\0A\09\09\22exec\22: \22%s\22,\0A\09\09\22recipient\22: \22%s\22,\0A\09\09\22exec_code\22: %d,\0A\09\09\22source\22: \22%s\22,\0A\09\09\22units\22: \22%s\22,\0A\09\09\22when\22: %lu,\0A\09\09\22duration\22: %lu,\0A\09\09\22non_clear_duration\22: %lu,\0A\09\09\22status\22: \22%s\22,\0A\09\09\22old_status\22: \22%s\22,\0A\09\09\22delay\22: %d,\0A\09\09\22delay_up_to_timestamp\22: %lu,\0A\09\09\22updated_by_id\22: %u,\0A\09\09\22updates_id\22: %u,\0A\09\09\22value_string\22: \22%s\22,\0A\09\09\22old_value_string\22: \22%s\22,\0A\09\09\22last_repeat\22: \22%lu\22,\0A\09\09\22silenced\22: \22%s\22,\0A\00", align 1
@HEALTH_ENTRY_FLAG_PROCESSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@HEALTH_ENTRY_FLAG_UPDATED = common dso_local global i32 0, align 4
@HEALTH_ENTRY_FLAG_EXEC_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HEALTH_ENTRY_FLAG_SILENCED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@HEALTH_ENTRY_FLAG_NO_CLEAR_NOTIFICATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"\09\09\22no_clear_notification\22: true,\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\09\09\22value\22:\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09\09\22old_value\22:\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\09}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, %struct.TYPE_5__*)* @health_alarm_entry2json_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @health_alarm_entry2json_nolock(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 27
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 26
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 25
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 24
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 22
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HEALTH_ENTRY_FLAG_PROCESSED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HEALTH_ENTRY_FLAG_UPDATED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 21
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @HEALTH_ENTRY_FLAG_EXEC_FAILED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 20
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 20
  %63 = load i64, i64* %62, align 8
  br label %68

64:                                               ; preds = %3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i64 [ %63, %60 ], [ %67, %64 ]
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 19
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 19
  %77 = load i64, i64* %76, align 8
  br label %82

78:                                               ; preds = %68
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i64 [ %77, %74 ], [ %81, %78 ]
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 18
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 17
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %82
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  br label %99

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i8* [ %97, %94 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %98 ]
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 16
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 15
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 14
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 13
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @rrdcalc_status2string(i32 %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 12
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @rrdcalc_status2string(i32 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 10
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @HEALTH_ENTRY_FLAG_SILENCED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %147 = call i32 @buffer_sprintf(i32* %7, i8* getelementptr inbounds ([593 x i8], [593 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i8* %36, i8* %44, i64 %47, i8* %55, i64 %69, i64 %83, i32 %86, i32 %89, i8* %100, i64 %103, i64 %106, i64 %109, i32 %113, i32 %117, i32 %120, i64 %123, i32 %126, i32 %129, i32 %132, i32 %135, i64 %138, i8* %146)
  %148 = load i32*, i32** %4, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %99
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  br label %158

157:                                              ; preds = %99
  br label %158

158:                                              ; preds = %157, %153
  %159 = phi i8* [ %156, %153 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %157 ]
  %160 = call i32 @health_string2json(i32* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @HEALTH_ENTRY_FLAG_NO_CLEAR_NOTIFICATION, align 4
  %165 = and i32 %163, %164
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @buffer_strcat(i32* %169, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %158
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @buffer_strcat(i32* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %174 = load i32*, i32** %4, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @buffer_rrd_value(i32* %174, i32 %177)
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @buffer_strcat(i32* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @buffer_strcat(i32* %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %183 = load i32*, i32** %4, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @buffer_rrd_value(i32* %183, i32 %186)
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 @buffer_strcat(i32* %188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @buffer_strcat(i32* %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @buffer_sprintf(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i8*, i64, i64, i32, i32, i8*, i64, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @rrdcalc_status2string(i32) #1

declare dso_local i32 @health_string2json(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @buffer_rrd_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
