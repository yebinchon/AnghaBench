; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_choice.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_opt_choice_alternatives = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @print_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_choice(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_opt_choice_alternatives*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.m_opt_choice_alternatives* @get_choice(i32* %7, i8* %8, i32* %5)
  store %struct.m_opt_choice_alternatives* %9, %struct.m_opt_choice_alternatives** %6, align 8
  %10 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %6, align 8
  %11 = icmp ne %struct.m_opt_choice_alternatives* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %6, align 8
  %14 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @talloc_strdup(i32* null, i32 %15)
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i8* [ %16, %12 ], [ %19, %17 ]
  ret i8* %21
}

declare dso_local %struct.m_opt_choice_alternatives* @get_choice(i32*, i8*, i32*) #1

declare dso_local i8* @talloc_strdup(i32*, i32) #1

declare dso_local i8* @talloc_asprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
