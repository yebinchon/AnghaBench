; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_cparc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_cparc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32 }
%struct.arc = type { i32, i32 }
%struct.state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.arc*, %struct.state*, %struct.state*)* @cparc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cparc(%struct.nfa* %0, %struct.arc* %1, %struct.state* %2, %struct.state* %3) #0 {
  %5 = alloca %struct.nfa*, align 8
  %6 = alloca %struct.arc*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %5, align 8
  store %struct.arc* %1, %struct.arc** %6, align 8
  store %struct.state* %2, %struct.state** %7, align 8
  store %struct.state* %3, %struct.state** %8, align 8
  %9 = load %struct.nfa*, %struct.nfa** %5, align 8
  %10 = load %struct.arc*, %struct.arc** %6, align 8
  %11 = getelementptr inbounds %struct.arc, %struct.arc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.arc*, %struct.arc** %6, align 8
  %14 = getelementptr inbounds %struct.arc, %struct.arc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.state*, %struct.state** %7, align 8
  %17 = load %struct.state*, %struct.state** %8, align 8
  %18 = call i32 @newarc(%struct.nfa* %9, i32 %12, i32 %15, %struct.state* %16, %struct.state* %17)
  ret void
}

declare dso_local i32 @newarc(%struct.nfa*, i32, i32, %struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
