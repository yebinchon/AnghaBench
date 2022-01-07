; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_get_arg_type.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_get_arg_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_option = type { i64 }
%struct.mp_cmd_def = type { %struct.m_option* }

@MP_CMD_DEF_MAX_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.m_option* (%struct.mp_cmd_def*, i32)* @get_arg_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.m_option* @get_arg_type(%struct.mp_cmd_def* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_cmd_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_option*, align 8
  %6 = alloca i32, align 4
  store %struct.mp_cmd_def* %0, %struct.mp_cmd_def** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.m_option* null, %struct.m_option** %5, align 8
  %7 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @is_vararg(%struct.mp_cmd_def* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MP_CMD_DEF_MAX_ARGS, align 4
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @MPMIN(i32 %12, i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %37, %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** %3, align 8
  %21 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %20, i32 0, i32 0
  %22 = load %struct.m_option*, %struct.m_option** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.m_option, %struct.m_option* %22, i64 %24
  %26 = getelementptr inbounds %struct.m_option, %struct.m_option* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** %3, align 8
  %31 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %30, i32 0, i32 0
  %32 = load %struct.m_option*, %struct.m_option** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.m_option, %struct.m_option* %32, i64 %34
  store %struct.m_option* %35, %struct.m_option** %5, align 8
  br label %40

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %16

40:                                               ; preds = %29, %16
  br label %53

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MP_CMD_DEF_MAX_ARGS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.mp_cmd_def*, %struct.mp_cmd_def** %3, align 8
  %47 = getelementptr inbounds %struct.mp_cmd_def, %struct.mp_cmd_def* %46, i32 0, i32 0
  %48 = load %struct.m_option*, %struct.m_option** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.m_option, %struct.m_option* %48, i64 %50
  store %struct.m_option* %51, %struct.m_option** %5, align 8
  br label %52

52:                                               ; preds = %45, %41
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.m_option*, %struct.m_option** %5, align 8
  %55 = icmp ne %struct.m_option* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.m_option*, %struct.m_option** %5, align 8
  %58 = getelementptr inbounds %struct.m_option, %struct.m_option* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load %struct.m_option*, %struct.m_option** %5, align 8
  br label %64

63:                                               ; preds = %56, %53
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi %struct.m_option* [ %62, %61 ], [ null, %63 ]
  ret %struct.m_option* %65
}

declare dso_local i64 @is_vararg(%struct.mp_cmd_def*, i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
