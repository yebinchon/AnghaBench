; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_BeginReportingGUCOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_BeginReportingGUCOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32 }

@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@FrontendProtocol = common dso_local global i32 0, align 4
@reporting_enabled = common dso_local global i32 0, align 4
@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global %struct.config_generic** null, align 8
@GUC_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginReportingGUCOptions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.config_generic*, align 8
  %3 = load i64, i64* @whereToSendOutput, align 8
  %4 = load i64, i64* @DestRemote, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @FrontendProtocol, align 4
  %8 = call i32 @PG_PROTOCOL_MAJOR(i32 %7)
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %0
  br label %35

11:                                               ; preds = %6
  store i32 1, i32* @reporting_enabled, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @num_guc_variables, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %17, i64 %19
  %21 = load %struct.config_generic*, %struct.config_generic** %20, align 8
  store %struct.config_generic* %21, %struct.config_generic** %2, align 8
  %22 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %23 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GUC_REPORT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %30 = call i32 @ReportGUCOption(%struct.config_generic* %29)
  br label %31

31:                                               ; preds = %28, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %12

35:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @ReportGUCOption(%struct.config_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
