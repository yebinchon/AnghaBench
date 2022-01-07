; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_per_event_excludes.c_per_event_excludes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_per_event_excludes.c_per_event_excludes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@AT_BASE_PLATFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"power8\00", align 1
@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"instructions\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"instructions(k)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"instructions(h)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"instructions(u)\00", align 1
@PR_TASK_PERF_EVENTS_ENABLE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PR_TASK_PERF_EVENTS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @per_event_excludes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @per_event_excludes() #0 {
  %1 = alloca %struct.event*, align 8
  %2 = alloca [4 x %struct.event], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @AT_BASE_PLATFORM, align 4
  %6 = call i64 @get_auxv_entry(i32 %5)
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @FAIL_IF(i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @SKIP_IF(i32 %16)
  %18 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 0
  store %struct.event* %18, %struct.event** %1, align 8
  %19 = load %struct.event*, %struct.event** %1, align 8
  %20 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  %21 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %22 = call i32 @event_init_opts(%struct.event* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.event*, %struct.event** %1, align 8
  %24 = getelementptr inbounds %struct.event, %struct.event* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 1
  store %struct.event* %26, %struct.event** %1, align 8
  %27 = load %struct.event*, %struct.event** %1, align 8
  %28 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  %29 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %30 = call i32 @event_init_opts(%struct.event* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.event*, %struct.event** %1, align 8
  %32 = getelementptr inbounds %struct.event, %struct.event* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.event*, %struct.event** %1, align 8
  %35 = getelementptr inbounds %struct.event, %struct.event* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.event*, %struct.event** %1, align 8
  %38 = getelementptr inbounds %struct.event, %struct.event* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 2
  store %struct.event* %40, %struct.event** %1, align 8
  %41 = load %struct.event*, %struct.event** %1, align 8
  %42 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  %43 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %44 = call i32 @event_init_opts(%struct.event* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.event*, %struct.event** %1, align 8
  %46 = getelementptr inbounds %struct.event, %struct.event* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.event*, %struct.event** %1, align 8
  %49 = getelementptr inbounds %struct.event, %struct.event* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.event*, %struct.event** %1, align 8
  %52 = getelementptr inbounds %struct.event, %struct.event* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 3
  store %struct.event* %54, %struct.event** %1, align 8
  %55 = load %struct.event*, %struct.event** %1, align 8
  %56 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  %57 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %58 = call i32 @event_init_opts(%struct.event* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.event*, %struct.event** %1, align 8
  %60 = getelementptr inbounds %struct.event, %struct.event* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.event*, %struct.event** %1, align 8
  %63 = getelementptr inbounds %struct.event, %struct.event* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 1, i32* %64, align 4
  %65 = load %struct.event*, %struct.event** %1, align 8
  %66 = getelementptr inbounds %struct.event, %struct.event* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 0
  %69 = call i32 @event_open(%struct.event* %68)
  %70 = call i32 @FAIL_IF(i32 %69)
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %83, %0
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 %76
  %78 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 0
  %79 = getelementptr inbounds %struct.event, %struct.event* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @event_open_with_group(%struct.event* %77, i32 %80)
  %82 = call i32 @FAIL_IF(i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %71

86:                                               ; preds = %71
  %87 = load i32, i32* @PR_TASK_PERF_EVENTS_ENABLE, align 4
  %88 = call i32 @prctl(i32 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %94, %86
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @INT_MAX, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %89

97:                                               ; preds = %89
  %98 = load i32, i32* @PR_TASK_PERF_EVENTS_DISABLE, align 4
  %99 = call i32 @prctl(i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %113, %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 %105
  %107 = call i32 @event_read(%struct.event* %106)
  %108 = call i32 @FAIL_IF(i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 %110
  %112 = call i32 @event_report(%struct.event* %111)
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %100

116:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %136, %116
  %118 = load i32, i32* %4, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %139

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.event, %struct.event* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 16
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.event, %struct.event* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %126, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @FAIL_IF(i32 %134)
  br label %136

136:                                              ; preds = %120
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %117

139:                                              ; preds = %117
  store i32 1, i32* %4, align 4
  br label %140

140:                                              ; preds = %157, %139
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %141, 4
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 0
  %145 = getelementptr inbounds %struct.event, %struct.event* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 16
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 %149
  %151 = getelementptr inbounds %struct.event, %struct.event* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 16
  %154 = icmp slt i64 %147, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @FAIL_IF(i32 %155)
  br label %157

157:                                              ; preds = %143
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %140

160:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %169, %160
  %162 = load i32, i32* %4, align 4
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x %struct.event], [4 x %struct.event]* %2, i64 0, i64 %166
  %168 = call i32 @event_close(%struct.event* %167)
  br label %169

169:                                              ; preds = %164
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %161

172:                                              ; preds = %161
  ret i32 0
}

declare dso_local i64 @get_auxv_entry(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @event_init_opts(%struct.event*, i32, i32, i8*) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @event_open_with_group(%struct.event*, i32) #1

declare dso_local i32 @prctl(i32) #1

declare dso_local i32 @event_read(%struct.event*) #1

declare dso_local i32 @event_report(%struct.event*) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2122}
