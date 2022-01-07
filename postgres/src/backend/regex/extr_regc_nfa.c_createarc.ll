; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_createarc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_createarc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32, i32* }
%struct.state = type { i32, i32, %struct.arc*, %struct.arc* }
%struct.arc = type { i32, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.state*, %struct.state*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, i32, i32, %struct.state*, %struct.state*)* @createarc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createarc(%struct.nfa* %0, i32 %1, i32 %2, %struct.state* %3, %struct.state* %4) #0 {
  %6 = alloca %struct.nfa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.state*, align 8
  %10 = alloca %struct.state*, align 8
  %11 = alloca %struct.arc*, align 8
  store %struct.nfa* %0, %struct.nfa** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.state* %3, %struct.state** %9, align 8
  store %struct.state* %4, %struct.state** %10, align 8
  %12 = load %struct.nfa*, %struct.nfa** %6, align 8
  %13 = load %struct.state*, %struct.state** %9, align 8
  %14 = call %struct.arc* @allocarc(%struct.nfa* %12, %struct.state* %13)
  store %struct.arc* %14, %struct.arc** %11, align 8
  %15 = call i64 (...) @NISERR()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %99

18:                                               ; preds = %5
  %19 = load %struct.arc*, %struct.arc** %11, align 8
  %20 = icmp ne %struct.arc* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.arc*, %struct.arc** %11, align 8
  %25 = getelementptr inbounds %struct.arc, %struct.arc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.arc*, %struct.arc** %11, align 8
  %28 = getelementptr inbounds %struct.arc, %struct.arc* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.state*, %struct.state** %10, align 8
  %30 = load %struct.arc*, %struct.arc** %11, align 8
  %31 = getelementptr inbounds %struct.arc, %struct.arc* %30, i32 0, i32 6
  store %struct.state* %29, %struct.state** %31, align 8
  %32 = load %struct.state*, %struct.state** %9, align 8
  %33 = load %struct.arc*, %struct.arc** %11, align 8
  %34 = getelementptr inbounds %struct.arc, %struct.arc* %33, i32 0, i32 5
  store %struct.state* %32, %struct.state** %34, align 8
  %35 = load %struct.state*, %struct.state** %10, align 8
  %36 = getelementptr inbounds %struct.state, %struct.state* %35, i32 0, i32 3
  %37 = load %struct.arc*, %struct.arc** %36, align 8
  %38 = load %struct.arc*, %struct.arc** %11, align 8
  %39 = getelementptr inbounds %struct.arc, %struct.arc* %38, i32 0, i32 4
  store %struct.arc* %37, %struct.arc** %39, align 8
  %40 = load %struct.arc*, %struct.arc** %11, align 8
  %41 = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 3
  store %struct.arc* null, %struct.arc** %41, align 8
  %42 = load %struct.state*, %struct.state** %10, align 8
  %43 = getelementptr inbounds %struct.state, %struct.state* %42, i32 0, i32 3
  %44 = load %struct.arc*, %struct.arc** %43, align 8
  %45 = icmp ne %struct.arc* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %18
  %47 = load %struct.arc*, %struct.arc** %11, align 8
  %48 = load %struct.state*, %struct.state** %10, align 8
  %49 = getelementptr inbounds %struct.state, %struct.state* %48, i32 0, i32 3
  %50 = load %struct.arc*, %struct.arc** %49, align 8
  %51 = getelementptr inbounds %struct.arc, %struct.arc* %50, i32 0, i32 3
  store %struct.arc* %47, %struct.arc** %51, align 8
  br label %52

52:                                               ; preds = %46, %18
  %53 = load %struct.arc*, %struct.arc** %11, align 8
  %54 = load %struct.state*, %struct.state** %10, align 8
  %55 = getelementptr inbounds %struct.state, %struct.state* %54, i32 0, i32 3
  store %struct.arc* %53, %struct.arc** %55, align 8
  %56 = load %struct.state*, %struct.state** %9, align 8
  %57 = getelementptr inbounds %struct.state, %struct.state* %56, i32 0, i32 2
  %58 = load %struct.arc*, %struct.arc** %57, align 8
  %59 = load %struct.arc*, %struct.arc** %11, align 8
  %60 = getelementptr inbounds %struct.arc, %struct.arc* %59, i32 0, i32 2
  store %struct.arc* %58, %struct.arc** %60, align 8
  %61 = load %struct.arc*, %struct.arc** %11, align 8
  %62 = getelementptr inbounds %struct.arc, %struct.arc* %61, i32 0, i32 1
  store %struct.arc* null, %struct.arc** %62, align 8
  %63 = load %struct.state*, %struct.state** %9, align 8
  %64 = getelementptr inbounds %struct.state, %struct.state* %63, i32 0, i32 2
  %65 = load %struct.arc*, %struct.arc** %64, align 8
  %66 = icmp ne %struct.arc* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %52
  %68 = load %struct.arc*, %struct.arc** %11, align 8
  %69 = load %struct.state*, %struct.state** %9, align 8
  %70 = getelementptr inbounds %struct.state, %struct.state* %69, i32 0, i32 2
  %71 = load %struct.arc*, %struct.arc** %70, align 8
  %72 = getelementptr inbounds %struct.arc, %struct.arc* %71, i32 0, i32 1
  store %struct.arc* %68, %struct.arc** %72, align 8
  br label %73

73:                                               ; preds = %67, %52
  %74 = load %struct.arc*, %struct.arc** %11, align 8
  %75 = load %struct.state*, %struct.state** %9, align 8
  %76 = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 2
  store %struct.arc* %74, %struct.arc** %76, align 8
  %77 = load %struct.state*, %struct.state** %9, align 8
  %78 = getelementptr inbounds %struct.state, %struct.state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.state*, %struct.state** %10, align 8
  %82 = getelementptr inbounds %struct.state, %struct.state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.arc*, %struct.arc** %11, align 8
  %86 = call i64 @COLORED(%struct.arc* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %73
  %89 = load %struct.nfa*, %struct.nfa** %6, align 8
  %90 = getelementptr inbounds %struct.nfa, %struct.nfa* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.nfa*, %struct.nfa** %6, align 8
  %95 = getelementptr inbounds %struct.nfa, %struct.nfa* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.arc*, %struct.arc** %11, align 8
  %98 = call i32 @colorchain(i32 %96, %struct.arc* %97)
  br label %99

99:                                               ; preds = %17, %93, %88, %73
  ret void
}

declare dso_local %struct.arc* @allocarc(%struct.nfa*, %struct.state*) #1

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @COLORED(%struct.arc*) #1

declare dso_local i32 @colorchain(i32, %struct.arc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
