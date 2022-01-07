; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_delsub.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_delsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32 }
%struct.state = type { i64, i64, i64, %struct.state* }

@FREESTATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.state*)* @delsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delsub(%struct.nfa* %0, %struct.state* %1, %struct.state* %2) #0 {
  %4 = alloca %struct.nfa*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  store %struct.state* %2, %struct.state** %6, align 8
  %7 = load %struct.state*, %struct.state** %5, align 8
  %8 = load %struct.state*, %struct.state** %6, align 8
  %9 = icmp ne %struct.state* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.state*, %struct.state** %6, align 8
  %13 = load %struct.state*, %struct.state** %6, align 8
  %14 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 3
  store %struct.state* %12, %struct.state** %14, align 8
  %15 = load %struct.nfa*, %struct.nfa** %4, align 8
  %16 = load %struct.state*, %struct.state** %5, align 8
  %17 = load %struct.state*, %struct.state** %5, align 8
  %18 = call i32 @deltraverse(%struct.nfa* %15, %struct.state* %16, %struct.state* %17)
  %19 = call i64 (...) @NISERR()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %55

22:                                               ; preds = %3
  %23 = load %struct.state*, %struct.state** %5, align 8
  %24 = getelementptr inbounds %struct.state, %struct.state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.state*, %struct.state** %6, align 8
  %29 = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.state*, %struct.state** %5, align 8
  %37 = getelementptr inbounds %struct.state, %struct.state* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FREESTATE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.state*, %struct.state** %6, align 8
  %43 = getelementptr inbounds %struct.state, %struct.state* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FREESTATE, align 8
  %46 = icmp ne i64 %44, %45
  br label %47

47:                                               ; preds = %41, %32
  %48 = phi i1 [ false, %32 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.state*, %struct.state** %6, align 8
  %52 = getelementptr inbounds %struct.state, %struct.state* %51, i32 0, i32 3
  store %struct.state* null, %struct.state** %52, align 8
  %53 = load %struct.state*, %struct.state** %5, align 8
  %54 = getelementptr inbounds %struct.state, %struct.state* %53, i32 0, i32 3
  store %struct.state* null, %struct.state** %54, align 8
  br label %55

55:                                               ; preds = %47, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @deltraverse(%struct.nfa*, %struct.state*, %struct.state*) #1

declare dso_local i64 @NISERR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
