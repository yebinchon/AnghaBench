; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_apply_flag.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_apply_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_option = type { %struct.m_opt_choice_alternatives* }
%struct.m_opt_choice_alternatives = type { i32, i64 }

@M_OPT_INVALID = common dso_local global i32 0, align 4
@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_option*, i32*, i32)* @apply_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_flag(%struct.m_option* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_option*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.m_opt_choice_alternatives*, align 8
  store %struct.m_option* %0, %struct.m_option** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.m_option*, %struct.m_option** %5, align 8
  %10 = getelementptr inbounds %struct.m_option, %struct.m_option* %9, i32 0, i32 0
  %11 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %10, align 8
  store %struct.m_opt_choice_alternatives* %11, %struct.m_opt_choice_alternatives** %8, align 8
  br label %12

12:                                               ; preds = %42, %3
  %13 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %8, align 8
  %14 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %8, align 8
  %20 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @bstr_equals0(i32 %18, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %8, align 8
  %28 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %24
  %35 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %8, align 8
  %36 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %47

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %8, align 8
  %44 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %43, i32 1
  store %struct.m_opt_choice_alternatives* %44, %struct.m_opt_choice_alternatives** %8, align 8
  br label %12

45:                                               ; preds = %12
  %46 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %34, %32
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @bstr_equals0(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
