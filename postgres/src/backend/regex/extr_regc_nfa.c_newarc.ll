; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_newarc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_newarc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { i64, i64, %struct.arc*, %struct.arc* }
%struct.arc = type { i64, i32, %struct.state*, %struct.arc*, %struct.state*, %struct.arc* }

@REG_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, i32, i64, %struct.state*, %struct.state*)* @newarc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newarc(%struct.nfa* %0, i32 %1, i64 %2, %struct.state* %3, %struct.state* %4) #0 {
  %6 = alloca %struct.nfa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca %struct.state*, align 8
  %11 = alloca %struct.arc*, align 8
  store %struct.nfa* %0, %struct.nfa** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.state* %3, %struct.state** %9, align 8
  store %struct.state* %4, %struct.state** %10, align 8
  %12 = load %struct.state*, %struct.state** %9, align 8
  %13 = icmp ne %struct.state* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load %struct.state*, %struct.state** %10, align 8
  %16 = icmp ne %struct.state* %15, null
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i1 [ false, %5 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.nfa*, %struct.nfa** %6, align 8
  %22 = getelementptr inbounds %struct.nfa, %struct.nfa* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @CANCEL_REQUESTED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* @REG_CANCEL, align 4
  %30 = call i32 @NERR(i32 %29)
  br label %110

31:                                               ; preds = %17
  %32 = load %struct.state*, %struct.state** %9, align 8
  %33 = getelementptr inbounds %struct.state, %struct.state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.state*, %struct.state** %10, align 8
  %36 = getelementptr inbounds %struct.state, %struct.state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %31
  %40 = load %struct.state*, %struct.state** %9, align 8
  %41 = getelementptr inbounds %struct.state, %struct.state* %40, i32 0, i32 3
  %42 = load %struct.arc*, %struct.arc** %41, align 8
  store %struct.arc* %42, %struct.arc** %11, align 8
  br label %43

43:                                               ; preds = %66, %39
  %44 = load %struct.arc*, %struct.arc** %11, align 8
  %45 = icmp ne %struct.arc* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load %struct.arc*, %struct.arc** %11, align 8
  %48 = getelementptr inbounds %struct.arc, %struct.arc* %47, i32 0, i32 4
  %49 = load %struct.state*, %struct.state** %48, align 8
  %50 = load %struct.state*, %struct.state** %10, align 8
  %51 = icmp eq %struct.state* %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.arc*, %struct.arc** %11, align 8
  %54 = getelementptr inbounds %struct.arc, %struct.arc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.arc*, %struct.arc** %11, align 8
  %60 = getelementptr inbounds %struct.arc, %struct.arc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %110

65:                                               ; preds = %58, %52, %46
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.arc*, %struct.arc** %11, align 8
  %68 = getelementptr inbounds %struct.arc, %struct.arc* %67, i32 0, i32 5
  %69 = load %struct.arc*, %struct.arc** %68, align 8
  store %struct.arc* %69, %struct.arc** %11, align 8
  br label %43

70:                                               ; preds = %43
  br label %103

71:                                               ; preds = %31
  %72 = load %struct.state*, %struct.state** %10, align 8
  %73 = getelementptr inbounds %struct.state, %struct.state* %72, i32 0, i32 2
  %74 = load %struct.arc*, %struct.arc** %73, align 8
  store %struct.arc* %74, %struct.arc** %11, align 8
  br label %75

75:                                               ; preds = %98, %71
  %76 = load %struct.arc*, %struct.arc** %11, align 8
  %77 = icmp ne %struct.arc* %76, null
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load %struct.arc*, %struct.arc** %11, align 8
  %80 = getelementptr inbounds %struct.arc, %struct.arc* %79, i32 0, i32 2
  %81 = load %struct.state*, %struct.state** %80, align 8
  %82 = load %struct.state*, %struct.state** %9, align 8
  %83 = icmp eq %struct.state* %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.arc*, %struct.arc** %11, align 8
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.arc*, %struct.arc** %11, align 8
  %92 = getelementptr inbounds %struct.arc, %struct.arc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %110

97:                                               ; preds = %90, %84, %78
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.arc*, %struct.arc** %11, align 8
  %100 = getelementptr inbounds %struct.arc, %struct.arc* %99, i32 0, i32 3
  %101 = load %struct.arc*, %struct.arc** %100, align 8
  store %struct.arc* %101, %struct.arc** %11, align 8
  br label %75

102:                                              ; preds = %75
  br label %103

103:                                              ; preds = %102, %70
  %104 = load %struct.nfa*, %struct.nfa** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.state*, %struct.state** %9, align 8
  %108 = load %struct.state*, %struct.state** %10, align 8
  %109 = call i32 @createarc(%struct.nfa* %104, i32 %105, i64 %106, %struct.state* %107, %struct.state* %108)
  br label %110

110:                                              ; preds = %103, %96, %64, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i32 @createarc(%struct.nfa*, i32, i64, %struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
