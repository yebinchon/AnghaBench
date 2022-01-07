; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_deltraverse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_deltraverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { i64, i64, i64, %struct.state*, %struct.arc* }
%struct.arc = type { %struct.state* }

@REG_ETOOBIG = common dso_local global i32 0, align 4
@FREESTATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.state*)* @deltraverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deltraverse(%struct.nfa* %0, %struct.state* %1, %struct.state* %2) #0 {
  %4 = alloca %struct.nfa*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.arc*, align 8
  %8 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  store %struct.state* %2, %struct.state** %6, align 8
  %9 = load %struct.nfa*, %struct.nfa** %4, align 8
  %10 = getelementptr inbounds %struct.nfa, %struct.nfa* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @STACK_TOO_DEEP(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @REG_ETOOBIG, align 4
  %18 = call i32 @NERR(i32 %17)
  br label %115

19:                                               ; preds = %3
  %20 = load %struct.state*, %struct.state** %6, align 8
  %21 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %115

25:                                               ; preds = %19
  %26 = load %struct.state*, %struct.state** %6, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 3
  %28 = load %struct.state*, %struct.state** %27, align 8
  %29 = icmp ne %struct.state* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %115

31:                                               ; preds = %25
  %32 = load %struct.state*, %struct.state** %6, align 8
  %33 = load %struct.state*, %struct.state** %6, align 8
  %34 = getelementptr inbounds %struct.state, %struct.state* %33, i32 0, i32 3
  store %struct.state* %32, %struct.state** %34, align 8
  br label %35

35:                                               ; preds = %86, %31
  %36 = load %struct.state*, %struct.state** %6, align 8
  %37 = getelementptr inbounds %struct.state, %struct.state* %36, i32 0, i32 4
  %38 = load %struct.arc*, %struct.arc** %37, align 8
  store %struct.arc* %38, %struct.arc** %7, align 8
  %39 = icmp ne %struct.arc* %38, null
  br i1 %39, label %40, label %87

40:                                               ; preds = %35
  %41 = load %struct.arc*, %struct.arc** %7, align 8
  %42 = getelementptr inbounds %struct.arc, %struct.arc* %41, i32 0, i32 0
  %43 = load %struct.state*, %struct.state** %42, align 8
  store %struct.state* %43, %struct.state** %8, align 8
  %44 = load %struct.nfa*, %struct.nfa** %4, align 8
  %45 = load %struct.state*, %struct.state** %5, align 8
  %46 = load %struct.state*, %struct.state** %8, align 8
  call void @deltraverse(%struct.nfa* %44, %struct.state* %45, %struct.state* %46)
  %47 = call i64 (...) @NISERR()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %115

50:                                               ; preds = %40
  %51 = load %struct.state*, %struct.state** %8, align 8
  %52 = getelementptr inbounds %struct.state, %struct.state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.state*, %struct.state** %8, align 8
  %57 = getelementptr inbounds %struct.state, %struct.state* %56, i32 0, i32 3
  %58 = load %struct.state*, %struct.state** %57, align 8
  %59 = icmp ne %struct.state* %58, null
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ true, %50 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.nfa*, %struct.nfa** %4, align 8
  %65 = load %struct.arc*, %struct.arc** %7, align 8
  %66 = call i32 @freearc(%struct.nfa* %64, %struct.arc* %65)
  %67 = load %struct.state*, %struct.state** %8, align 8
  %68 = getelementptr inbounds %struct.state, %struct.state* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %60
  %72 = load %struct.state*, %struct.state** %8, align 8
  %73 = getelementptr inbounds %struct.state, %struct.state* %72, i32 0, i32 3
  %74 = load %struct.state*, %struct.state** %73, align 8
  %75 = icmp eq %struct.state* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.state*, %struct.state** %8, align 8
  %78 = getelementptr inbounds %struct.state, %struct.state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.nfa*, %struct.nfa** %4, align 8
  %84 = load %struct.state*, %struct.state** %8, align 8
  %85 = call i32 @freestate(%struct.nfa* %83, %struct.state* %84)
  br label %86

86:                                               ; preds = %76, %71, %60
  br label %35

87:                                               ; preds = %35
  %88 = load %struct.state*, %struct.state** %6, align 8
  %89 = getelementptr inbounds %struct.state, %struct.state* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FREESTATE, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.state*, %struct.state** %6, align 8
  %96 = load %struct.state*, %struct.state** %5, align 8
  %97 = icmp eq %struct.state* %95, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %87
  %99 = load %struct.state*, %struct.state** %6, align 8
  %100 = getelementptr inbounds %struct.state, %struct.state* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %98, %87
  %104 = phi i1 [ true, %87 ], [ %102, %98 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.state*, %struct.state** %6, align 8
  %108 = getelementptr inbounds %struct.state, %struct.state* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.state*, %struct.state** %6, align 8
  %114 = getelementptr inbounds %struct.state, %struct.state* %113, i32 0, i32 3
  store %struct.state* null, %struct.state** %114, align 8
  br label %115

115:                                              ; preds = %103, %49, %30, %24, %16
  ret void
}

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

declare dso_local i32 @freestate(%struct.nfa*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
