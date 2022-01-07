; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_choice_values.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_choice_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.m_option = type { i32, i32, i32, %struct.m_opt_choice_alternatives* }
%struct.m_opt_choice_alternatives = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"(passing nothing)\00", align 1
@M_OPT_MIN = common dso_local global i32 0, align 4
@M_OPT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"    %g-%g (integer range)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_log*, %struct.m_option*)* @print_choice_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_choice_values(%struct.mp_log* %0, %struct.m_option* %1) #0 {
  %3 = alloca %struct.mp_log*, align 8
  %4 = alloca %struct.m_option*, align 8
  %5 = alloca %struct.m_opt_choice_alternatives*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %3, align 8
  store %struct.m_option* %1, %struct.m_option** %4, align 8
  %6 = load %struct.m_option*, %struct.m_option** %4, align 8
  %7 = getelementptr inbounds %struct.m_option, %struct.m_option* %6, i32 0, i32 3
  %8 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  store %struct.m_opt_choice_alternatives* %8, %struct.m_opt_choice_alternatives** %5, align 8
  br label %9

9:                                                ; preds = %31, %2
  %10 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %5, align 8
  %11 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.mp_log*, %struct.mp_log** %3, align 8
  %16 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %5, align 8
  %17 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %5, align 8
  %25 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = call i32 (%struct.mp_log*, i8*, i8*, ...) @mp_info(%struct.mp_log* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28
  %32 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %5, align 8
  %33 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %32, i32 1
  store %struct.m_opt_choice_alternatives* %33, %struct.m_opt_choice_alternatives** %5, align 8
  br label %9

34:                                               ; preds = %9
  %35 = load %struct.m_option*, %struct.m_option** %4, align 8
  %36 = getelementptr inbounds %struct.m_option, %struct.m_option* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @M_OPT_MIN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.m_option*, %struct.m_option** %4, align 8
  %43 = getelementptr inbounds %struct.m_option, %struct.m_option* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @M_OPT_MAX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.mp_log*, %struct.mp_log** %3, align 8
  %50 = load %struct.m_option*, %struct.m_option** %4, align 8
  %51 = getelementptr inbounds %struct.m_option, %struct.m_option* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.m_option*, %struct.m_option** %4, align 8
  %56 = getelementptr inbounds %struct.m_option, %struct.m_option* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.mp_log*, i8*, i8*, ...) @mp_info(%struct.mp_log* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %57)
  br label %59

59:                                               ; preds = %48, %41, %34
  ret void
}

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
