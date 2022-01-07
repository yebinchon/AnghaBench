; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_find_next_flag.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_find_next_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_option = type { %struct.m_opt_choice_alternatives* }
%struct.m_opt_choice_alternatives = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.m_option*, i32*)* @find_next_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_next_flag(%struct.m_option* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.m_option*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.m_opt_choice_alternatives*, align 8
  %7 = alloca %struct.m_opt_choice_alternatives*, align 8
  store %struct.m_option* %0, %struct.m_option** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.m_opt_choice_alternatives* null, %struct.m_opt_choice_alternatives** %6, align 8
  %8 = load %struct.m_option*, %struct.m_option** %4, align 8
  %9 = getelementptr inbounds %struct.m_option, %struct.m_option* %8, i32 0, i32 0
  %10 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %9, align 8
  store %struct.m_opt_choice_alternatives* %10, %struct.m_opt_choice_alternatives** %7, align 8
  br label %11

11:                                               ; preds = %49, %2
  %12 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %13 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %11
  %17 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %18 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %23 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %24, %26
  %28 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %29 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %6, align 8
  %34 = icmp ne %struct.m_opt_choice_alternatives* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %37 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @av_popcount64(i32 %38)
  %40 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %6, align 8
  %41 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @av_popcount64(i32 %42)
  %44 = icmp sgt i64 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35, %32
  %46 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  store %struct.m_opt_choice_alternatives* %46, %struct.m_opt_choice_alternatives** %6, align 8
  br label %47

47:                                               ; preds = %45, %35
  br label %48

48:                                               ; preds = %47, %21, %16
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %7, align 8
  %51 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %50, i32 1
  store %struct.m_opt_choice_alternatives* %51, %struct.m_opt_choice_alternatives** %7, align 8
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %6, align 8
  %54 = icmp ne %struct.m_opt_choice_alternatives* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %6, align 8
  %59 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = xor i32 %60, -1
  %62 = and i32 %57, %61
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %6, align 8
  %65 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %3, align 8
  br label %69

67:                                               ; preds = %52
  %68 = load i32*, i32** %5, align 8
  store i32 0, i32* %68, align 4
  store i8* null, i8** %3, align 8
  br label %69

69:                                               ; preds = %67, %55
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i64 @av_popcount64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
