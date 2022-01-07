; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_onechr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_onechr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.state = type { i32 }

@REG_ICASE = common dso_local global i32 0, align 4
@COLORLESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, i32, %struct.state*, %struct.state*)* @onechr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onechr(%struct.vars* %0, i32 %1, %struct.state* %2, %struct.state* %3) #0 {
  %5 = alloca %struct.vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.state* %2, %struct.state** %7, align 8
  store %struct.state* %3, %struct.state** %8, align 8
  %10 = load %struct.vars*, %struct.vars** %5, align 8
  %11 = getelementptr inbounds %struct.vars, %struct.vars* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @REG_ICASE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @COLORLESS, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.vars*, %struct.vars** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.state*, %struct.state** %7, align 8
  %21 = load %struct.state*, %struct.state** %8, align 8
  %22 = call i32 @subcoloronechr(%struct.vars* %18, i32 %19, %struct.state* %20, %struct.state* %21, i32* %9)
  br label %31

23:                                               ; preds = %4
  %24 = load %struct.vars*, %struct.vars** %5, align 8
  %25 = load %struct.vars*, %struct.vars** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @allcases(%struct.vars* %25, i32 %26)
  %28 = load %struct.state*, %struct.state** %7, align 8
  %29 = load %struct.state*, %struct.state** %8, align 8
  %30 = call i32 @subcolorcvec(%struct.vars* %24, i32 %27, %struct.state* %28, %struct.state* %29)
  br label %31

31:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @subcoloronechr(%struct.vars*, i32, %struct.state*, %struct.state*, i32*) #1

declare dso_local i32 @subcolorcvec(%struct.vars*, i32, %struct.state*, %struct.state*) #1

declare dso_local i32 @allcases(%struct.vars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
