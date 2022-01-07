; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_optimize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfa*, i32*)* @optimize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @optimize(%struct.nfa* %0, i32* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca i32*, align 8
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.nfa*, %struct.nfa** %3, align 8
  %6 = call i32 @cleanup(%struct.nfa* %5)
  %7 = load %struct.nfa*, %struct.nfa** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @fixempties(%struct.nfa* %7, i32* %8)
  %10 = load %struct.nfa*, %struct.nfa** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @fixconstraintloops(%struct.nfa* %10, i32* %11)
  %13 = load %struct.nfa*, %struct.nfa** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @pullback(%struct.nfa* %13, i32* %14)
  %16 = load %struct.nfa*, %struct.nfa** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @pushfwd(%struct.nfa* %16, i32* %17)
  %19 = load %struct.nfa*, %struct.nfa** %3, align 8
  %20 = call i32 @cleanup(%struct.nfa* %19)
  %21 = load %struct.nfa*, %struct.nfa** %3, align 8
  %22 = call i64 @analyze(%struct.nfa* %21)
  ret i64 %22
}

declare dso_local i32 @cleanup(%struct.nfa*) #1

declare dso_local i32 @fixempties(%struct.nfa*, i32*) #1

declare dso_local i32 @fixconstraintloops(%struct.nfa*, i32*) #1

declare dso_local i32 @pullback(%struct.nfa*, i32*) #1

declare dso_local i32 @pushfwd(%struct.nfa*, i32*) #1

declare dso_local i64 @analyze(%struct.nfa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
