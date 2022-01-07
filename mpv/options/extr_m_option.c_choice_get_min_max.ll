; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_choice_get_min_max.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_choice_get_min_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_option = type { i32, i32, i32, %struct.m_opt_choice_alternatives*, i32* }
%struct.m_opt_choice_alternatives = type { i32, i64 }

@m_option_type_choice = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@M_OPT_MIN = common dso_local global i32 0, align 4
@M_OPT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m_option*, i32*, i32*)* @choice_get_min_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choice_get_min_max(%struct.m_option* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.m_option*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.m_opt_choice_alternatives*, align 8
  store %struct.m_option* %0, %struct.m_option** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.m_option*, %struct.m_option** %4, align 8
  %9 = getelementptr inbounds %struct.m_option, %struct.m_option* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @m_option_type_choice
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @INT_MAX, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @INT_MIN, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.m_option*, %struct.m_option** %4, align 8
  %19 = getelementptr inbounds %struct.m_option, %struct.m_option* %18, i32 0, i32 3
  %20 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %19, align 8
  store %struct.m_opt_choice_alternatives* %20, %struct.m_opt_choice_alternatives** %7, align 8
  br label %21

21:                                               ; preds = %41, %3
  %22 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %23 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %30 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MPMIN(i32 %28, i32 %31)
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %37 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MPMAX(i32 %35, i32 %38)
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %26
  %42 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %43 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %42, i32 1
  store %struct.m_opt_choice_alternatives* %43, %struct.m_opt_choice_alternatives** %7, align 8
  br label %21

44:                                               ; preds = %21
  %45 = load %struct.m_option*, %struct.m_option** %4, align 8
  %46 = getelementptr inbounds %struct.m_option, %struct.m_option* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @M_OPT_MIN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = load %struct.m_option*, %struct.m_option** %4, align 8
  %53 = getelementptr inbounds %struct.m_option, %struct.m_option* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @M_OPT_MAX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.m_option*, %struct.m_option** %4, align 8
  %62 = getelementptr inbounds %struct.m_option, %struct.m_option* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @MPMIN(i32 %60, i32 %63)
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.m_option*, %struct.m_option** %4, align 8
  %69 = getelementptr inbounds %struct.m_option, %struct.m_option* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MPMAX(i32 %67, i32 %70)
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %58, %51, %44
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @MPMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
