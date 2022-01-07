; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_parse_commandline.c_split_opt.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_parse_commandline.c_split_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Error parsing commandline option %.*s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_state*)* @split_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_opt(%struct.parse_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parse_state*, align 8
  %4 = alloca i32, align 4
  store %struct.parse_state* %0, %struct.parse_state** %3, align 8
  %5 = load %struct.parse_state*, %struct.parse_state** %3, align 8
  %6 = call i32 @split_opt_silent(%struct.parse_state* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.parse_state*, %struct.parse_state** %3, align 8
  %15 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.parse_state*, %struct.parse_state** %3, align 8
  %17 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.parse_state*, %struct.parse_state** %3, align 8
  %20 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BSTR_P(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @m_option_strerror(i32 %23)
  %25 = call i32 @MP_FATAL(i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @split_opt_silent(%struct.parse_state*) #1

declare dso_local i32 @MP_FATAL(i32, i8*, i32, i32) #1

declare dso_local i32 @BSTR_P(i32) #1

declare dso_local i32 @m_option_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
