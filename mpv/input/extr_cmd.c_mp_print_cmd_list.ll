; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_mp_print_cmd_list.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_mp_print_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_def = type { i64, %struct.m_option*, i64 }
%struct.m_option = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mp_log = type { i32 }

@mp_cmds = common dso_local global %struct.mp_cmd_def* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%-20.20s\00", align 1
@MP_CMD_DEF_MAX_ARGS = common dso_local global i32 0, align 4
@MP_CMD_OPT_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" %s%s=%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_print_cmd_list(%struct.mp_log* %0) #0 {
  %2 = alloca %struct.mp_log*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_cmd_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_option*, align 8
  %7 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %95, %1
  %9 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** @mp_cmds, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %9, i64 %11
  %13 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %98

16:                                               ; preds = %8
  %17 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** @mp_cmds, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %17, i64 %19
  store %struct.mp_cmd_def* %20, %struct.mp_cmd_def** %4, align 8
  %21 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %22 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** %4, align 8
  %23 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %81, %16
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MP_CMD_DEF_MAX_ARGS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** %4, align 8
  %32 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %31, i32 0, i32 1
  %33 = load %struct.m_option*, %struct.m_option** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.m_option, %struct.m_option* %33, i64 %35
  %37 = getelementptr inbounds %struct.m_option, %struct.m_option* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br label %40

40:                                               ; preds = %30, %26
  %41 = phi i1 [ false, %26 ], [ %39, %30 ]
  br i1 %41, label %42, label %84

42:                                               ; preds = %40
  %43 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** %4, align 8
  %44 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %43, i32 0, i32 1
  %45 = load %struct.m_option*, %struct.m_option** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.m_option, %struct.m_option* %45, i64 %47
  store %struct.m_option* %48, %struct.m_option** %6, align 8
  %49 = load %struct.m_option*, %struct.m_option** %6, align 8
  %50 = getelementptr inbounds %struct.m_option, %struct.m_option* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %42
  %54 = load %struct.m_option*, %struct.m_option** %6, align 8
  %55 = getelementptr inbounds %struct.m_option, %struct.m_option* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MP_CMD_OPT_ARG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %53, %42
  %61 = phi i1 [ true, %42 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %68 = load %struct.m_option*, %struct.m_option** %6, align 8
  %69 = getelementptr inbounds %struct.m_option, %struct.m_option* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.m_option*, %struct.m_option** %6, align 8
  %72 = getelementptr inbounds %struct.m_option, %struct.m_option* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %80 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %70, i32 %75, i8* %79)
  br label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %26

84:                                               ; preds = %40
  %85 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** %4, align 8
  %86 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %91 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %94 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %8

98:                                               ; preds = %8
  ret void
}

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
