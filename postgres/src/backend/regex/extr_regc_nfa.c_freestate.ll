; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_freestate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_freestate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.state*, %struct.state*, %struct.state* }
%struct.state = type { i64, i64, %struct.state*, %struct.state*, i64, i32 }

@FREESTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*)* @freestate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freestate(%struct.nfa* %0, %struct.state* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store %struct.state* %1, %struct.state** %4, align 8
  %5 = load %struct.state*, %struct.state** %4, align 8
  %6 = icmp ne %struct.state* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.state*, %struct.state** %4, align 8
  %10 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.state*, %struct.state** %4, align 8
  %15 = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ false, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @FREESTATE, align 4
  %23 = load %struct.state*, %struct.state** %4, align 8
  %24 = getelementptr inbounds %struct.state, %struct.state* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.state*, %struct.state** %4, align 8
  %26 = getelementptr inbounds %struct.state, %struct.state* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.state*, %struct.state** %4, align 8
  %28 = getelementptr inbounds %struct.state, %struct.state* %27, i32 0, i32 2
  %29 = load %struct.state*, %struct.state** %28, align 8
  %30 = icmp ne %struct.state* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load %struct.state*, %struct.state** %4, align 8
  %33 = getelementptr inbounds %struct.state, %struct.state* %32, i32 0, i32 3
  %34 = load %struct.state*, %struct.state** %33, align 8
  %35 = load %struct.state*, %struct.state** %4, align 8
  %36 = getelementptr inbounds %struct.state, %struct.state* %35, i32 0, i32 2
  %37 = load %struct.state*, %struct.state** %36, align 8
  %38 = getelementptr inbounds %struct.state, %struct.state* %37, i32 0, i32 3
  store %struct.state* %34, %struct.state** %38, align 8
  br label %52

39:                                               ; preds = %18
  %40 = load %struct.state*, %struct.state** %4, align 8
  %41 = load %struct.nfa*, %struct.nfa** %3, align 8
  %42 = getelementptr inbounds %struct.nfa, %struct.nfa* %41, i32 0, i32 2
  %43 = load %struct.state*, %struct.state** %42, align 8
  %44 = icmp eq %struct.state* %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.state*, %struct.state** %4, align 8
  %48 = getelementptr inbounds %struct.state, %struct.state* %47, i32 0, i32 3
  %49 = load %struct.state*, %struct.state** %48, align 8
  %50 = load %struct.nfa*, %struct.nfa** %3, align 8
  %51 = getelementptr inbounds %struct.nfa, %struct.nfa* %50, i32 0, i32 2
  store %struct.state* %49, %struct.state** %51, align 8
  br label %52

52:                                               ; preds = %39, %31
  %53 = load %struct.state*, %struct.state** %4, align 8
  %54 = getelementptr inbounds %struct.state, %struct.state* %53, i32 0, i32 3
  %55 = load %struct.state*, %struct.state** %54, align 8
  %56 = icmp ne %struct.state* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.state*, %struct.state** %4, align 8
  %59 = getelementptr inbounds %struct.state, %struct.state* %58, i32 0, i32 2
  %60 = load %struct.state*, %struct.state** %59, align 8
  %61 = load %struct.state*, %struct.state** %4, align 8
  %62 = getelementptr inbounds %struct.state, %struct.state* %61, i32 0, i32 3
  %63 = load %struct.state*, %struct.state** %62, align 8
  %64 = getelementptr inbounds %struct.state, %struct.state* %63, i32 0, i32 2
  store %struct.state* %60, %struct.state** %64, align 8
  br label %78

65:                                               ; preds = %52
  %66 = load %struct.state*, %struct.state** %4, align 8
  %67 = load %struct.nfa*, %struct.nfa** %3, align 8
  %68 = getelementptr inbounds %struct.nfa, %struct.nfa* %67, i32 0, i32 1
  %69 = load %struct.state*, %struct.state** %68, align 8
  %70 = icmp eq %struct.state* %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.state*, %struct.state** %4, align 8
  %74 = getelementptr inbounds %struct.state, %struct.state* %73, i32 0, i32 2
  %75 = load %struct.state*, %struct.state** %74, align 8
  %76 = load %struct.nfa*, %struct.nfa** %3, align 8
  %77 = getelementptr inbounds %struct.nfa, %struct.nfa* %76, i32 0, i32 1
  store %struct.state* %75, %struct.state** %77, align 8
  br label %78

78:                                               ; preds = %65, %57
  %79 = load %struct.state*, %struct.state** %4, align 8
  %80 = getelementptr inbounds %struct.state, %struct.state* %79, i32 0, i32 3
  store %struct.state* null, %struct.state** %80, align 8
  %81 = load %struct.nfa*, %struct.nfa** %3, align 8
  %82 = getelementptr inbounds %struct.nfa, %struct.nfa* %81, i32 0, i32 0
  %83 = load %struct.state*, %struct.state** %82, align 8
  %84 = load %struct.state*, %struct.state** %4, align 8
  %85 = getelementptr inbounds %struct.state, %struct.state* %84, i32 0, i32 2
  store %struct.state* %83, %struct.state** %85, align 8
  %86 = load %struct.state*, %struct.state** %4, align 8
  %87 = load %struct.nfa*, %struct.nfa** %3, align 8
  %88 = getelementptr inbounds %struct.nfa, %struct.nfa* %87, i32 0, i32 0
  store %struct.state* %86, %struct.state** %88, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
