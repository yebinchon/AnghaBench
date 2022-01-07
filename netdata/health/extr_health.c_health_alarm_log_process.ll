; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health.c_health_alarm_log_process.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health.c_health_alarm_log_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64, %struct.TYPE_12__* }

@HEALTH_ENTRY_FLAG_PROCESSED = common dso_local global i32 0, align 4
@HEALTH_ENTRY_FLAG_UPDATED = common dso_local global i32 0, align 4
@D_HEALTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Health removing alarm log entry with id: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @health_alarm_log_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @health_alarm_log_process(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi i64 [ %20, %14 ], [ 0, %21 ]
  store i64 %23, i64* %3, align 8
  %24 = call i64 (...) @now_realtime_sec()
  store i64 %24, i64* %4, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = call i32 @netdata_rwlock_rdlock(i32* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %5, align 8
  br label %33

33:                                               ; preds = %104, %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br label %44

44:                                               ; preds = %36, %33
  %45 = phi i1 [ false, %33 ], [ %43, %36 ]
  br i1 %45, label %46, label %108

46:                                               ; preds = %44
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = call i32 @alarm_entry_isrepeating(%struct.TYPE_11__* %47, %struct.TYPE_12__* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %46
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HEALTH_ENTRY_FLAG_PROCESSED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HEALTH_ENTRY_FLAG_UPDATED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %62, %55
  %71 = phi i1 [ false, %55 ], [ %69, %62 ]
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %70
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %3, align 8
  %80 = icmp slt i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %84, %75
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %89, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @likely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = call i32 @health_process_notifications(%struct.TYPE_11__* %98, %struct.TYPE_12__* %99)
  br label %101

101:                                              ; preds = %97, %88
  br label %102

102:                                              ; preds = %101, %70
  br label %103

103:                                              ; preds = %102, %46
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %5, align 8
  br label %33

108:                                              ; preds = %44
  %109 = load i64, i64* %3, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = call i32 @netdata_rwlock_unlock(i32* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %119, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %108
  br label %209

126:                                              ; preds = %108
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = call i32 @netdata_rwlock_wrlock(i32* %129)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %134, 2
  %136 = sdiv i32 %135, 3
  store i32 %136, i32* %7, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %5, align 8
  br label %141

141:                                              ; preds = %150, %126
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = icmp ne %struct.TYPE_12__* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %144, %141
  %148 = phi i1 [ false, %141 ], [ %146, %144 ]
  br i1 %148, label %149, label %157

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %7, align 4
  %152 = add i32 %151, -1
  store i32 %152, i32* %7, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %153, %struct.TYPE_12__** %6, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %5, align 8
  br label %141

157:                                              ; preds = %147
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = icmp ne %struct.TYPE_12__* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %157
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = icmp ne %struct.TYPE_12__* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = icmp eq %struct.TYPE_12__* %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %171, align 8
  br label %173

172:                                              ; preds = %163, %160, %157
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %173

173:                                              ; preds = %172, %169
  br label %174

174:                                              ; preds = %202, %173
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %176 = icmp ne %struct.TYPE_12__* %175, null
  br i1 %176, label %177, label %204

177:                                              ; preds = %174
  %178 = load i32, i32* @D_HEALTH, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @debug(i32 %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %181)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %8, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = call i32 @alarm_entry_isrepeating(%struct.TYPE_11__* %186, %struct.TYPE_12__* %187)
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i64 @likely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %177
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %196 = call i32 @health_alarm_log_free_one_nochecks_nounlink(%struct.TYPE_12__* %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %194, %177
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %203, %struct.TYPE_12__** %5, align 8
  br label %174

204:                                              ; preds = %174
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  %208 = call i32 @netdata_rwlock_unlock(i32* %207)
  br label %209

209:                                              ; preds = %204, %125
  ret void
}

declare dso_local i64 @now_realtime_sec(...) #1

declare dso_local i32 @netdata_rwlock_rdlock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @alarm_entry_isrepeating(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @health_process_notifications(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @netdata_rwlock_unlock(i32*) #1

declare dso_local i32 @netdata_rwlock_wrlock(i32*) #1

declare dso_local i32 @debug(i32, i8*, i64) #1

declare dso_local i32 @health_alarm_log_free_one_nochecks_nounlink(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
