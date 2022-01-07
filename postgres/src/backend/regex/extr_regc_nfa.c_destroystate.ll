; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_destroystate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_destroystate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.state = type { i64, %struct.state*, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.state* }
%struct.arcbatch = type { i64, %struct.arcbatch*, i32*, i32*, %struct.TYPE_4__ }

@FREESTATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*)* @destroystate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroystate(%struct.nfa* %0, %struct.state* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.arcbatch*, align 8
  %6 = alloca %struct.arcbatch*, align 8
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store %struct.state* %1, %struct.state** %4, align 8
  %7 = load %struct.state*, %struct.state** %4, align 8
  %8 = getelementptr inbounds %struct.state, %struct.state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FREESTATE, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.state*, %struct.state** %4, align 8
  %15 = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.state*, %struct.state** %16, align 8
  %18 = bitcast %struct.state* %17 to %struct.arcbatch*
  store %struct.arcbatch* %18, %struct.arcbatch** %5, align 8
  br label %19

19:                                               ; preds = %37, %2
  %20 = load %struct.arcbatch*, %struct.arcbatch** %5, align 8
  %21 = icmp ne %struct.arcbatch* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.arcbatch*, %struct.arcbatch** %5, align 8
  %24 = getelementptr inbounds %struct.arcbatch, %struct.arcbatch* %23, i32 0, i32 1
  %25 = load %struct.arcbatch*, %struct.arcbatch** %24, align 8
  store %struct.arcbatch* %25, %struct.arcbatch** %6, align 8
  %26 = load %struct.arcbatch*, %struct.arcbatch** %5, align 8
  %27 = bitcast %struct.arcbatch* %26 to %struct.state*
  %28 = call i32 @FREE(%struct.state* %27)
  %29 = load %struct.nfa*, %struct.nfa** %3, align 8
  %30 = getelementptr inbounds %struct.nfa, %struct.nfa* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 40
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  br label %37

37:                                               ; preds = %22
  %38 = load %struct.arcbatch*, %struct.arcbatch** %6, align 8
  store %struct.arcbatch* %38, %struct.arcbatch** %5, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.state*, %struct.state** %4, align 8
  %41 = getelementptr inbounds %struct.state, %struct.state* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.state*, %struct.state** %4, align 8
  %43 = getelementptr inbounds %struct.state, %struct.state* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.state*, %struct.state** %4, align 8
  %45 = getelementptr inbounds %struct.state, %struct.state* %44, i32 0, i32 1
  store %struct.state* null, %struct.state** %45, align 8
  %46 = load %struct.state*, %struct.state** %4, align 8
  %47 = call i32 @FREE(%struct.state* %46)
  %48 = load %struct.nfa*, %struct.nfa** %3, align 8
  %49 = getelementptr inbounds %struct.nfa, %struct.nfa* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %53, 40
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FREE(%struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
