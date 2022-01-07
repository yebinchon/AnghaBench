; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_freenfa.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_freenfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32, i32*, i32*, i32*, %struct.state*, %struct.state* }
%struct.state = type { %struct.state*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*)* @freenfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freenfa(%struct.nfa* %0) #0 {
  %2 = alloca %struct.nfa*, align 8
  %3 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.nfa*, %struct.nfa** %2, align 8
  %6 = getelementptr inbounds %struct.nfa, %struct.nfa* %5, i32 0, i32 5
  %7 = load %struct.state*, %struct.state** %6, align 8
  store %struct.state* %7, %struct.state** %3, align 8
  %8 = icmp ne %struct.state* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.state*, %struct.state** %3, align 8
  %11 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.state*, %struct.state** %3, align 8
  %13 = getelementptr inbounds %struct.state, %struct.state* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.nfa*, %struct.nfa** %2, align 8
  %15 = load %struct.state*, %struct.state** %3, align 8
  %16 = call i32 @freestate(%struct.nfa* %14, %struct.state* %15)
  br label %4

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.nfa*, %struct.nfa** %2, align 8
  %20 = getelementptr inbounds %struct.nfa, %struct.nfa* %19, i32 0, i32 4
  %21 = load %struct.state*, %struct.state** %20, align 8
  store %struct.state* %21, %struct.state** %3, align 8
  %22 = icmp ne %struct.state* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.state*, %struct.state** %3, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 0
  %26 = load %struct.state*, %struct.state** %25, align 8
  %27 = load %struct.nfa*, %struct.nfa** %2, align 8
  %28 = getelementptr inbounds %struct.nfa, %struct.nfa* %27, i32 0, i32 4
  store %struct.state* %26, %struct.state** %28, align 8
  %29 = load %struct.nfa*, %struct.nfa** %2, align 8
  %30 = load %struct.state*, %struct.state** %3, align 8
  %31 = call i32 @destroystate(%struct.nfa* %29, %struct.state* %30)
  br label %18

32:                                               ; preds = %18
  %33 = load %struct.nfa*, %struct.nfa** %2, align 8
  %34 = getelementptr inbounds %struct.nfa, %struct.nfa* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.nfa*, %struct.nfa** %2, align 8
  %36 = getelementptr inbounds %struct.nfa, %struct.nfa* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.nfa*, %struct.nfa** %2, align 8
  %38 = getelementptr inbounds %struct.nfa, %struct.nfa* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.nfa*, %struct.nfa** %2, align 8
  %40 = getelementptr inbounds %struct.nfa, %struct.nfa* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.nfa*, %struct.nfa** %2, align 8
  %42 = call i32 @FREE(%struct.nfa* %41)
  ret void
}

declare dso_local i32 @freestate(%struct.nfa*, %struct.state*) #1

declare dso_local i32 @destroystate(%struct.nfa*, %struct.state*) #1

declare dso_local i32 @FREE(%struct.nfa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
