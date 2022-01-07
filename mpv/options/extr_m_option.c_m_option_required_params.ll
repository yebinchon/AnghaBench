; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_m_option_required_params.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_m_option_required_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.m_opt_choice_alternatives*, %struct.TYPE_5__* }
%struct.m_opt_choice_alternatives = type { i64 }

@M_OPT_TYPE_OPTIONAL_PARAM = common dso_local global i32 0, align 4
@M_OPT_OPTIONAL_PARAM = common dso_local global i32 0, align 4
@m_option_type_choice = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_option_required_params(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.m_opt_choice_alternatives*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @M_OPT_TYPE_OPTIONAL_PARAM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @M_OPT_OPTIONAL_PARAM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %49

22:                                               ; preds = %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, @m_option_type_choice
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %29, align 8
  store %struct.m_opt_choice_alternatives* %30, %struct.m_opt_choice_alternatives** %4, align 8
  br label %31

31:                                               ; preds = %44, %27
  %32 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %4, align 8
  %33 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %4, align 8
  %38 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @strcmp(i64 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %49

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %4, align 8
  %46 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %45, i32 1
  store %struct.m_opt_choice_alternatives* %46, %struct.m_opt_choice_alternatives** %4, align 8
  br label %31

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %22
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %21, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
