; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_emptyreachable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_emptyreachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { i64, %struct.state* }
%struct.arc = type { i64, %struct.state*, %struct.arc* }

@REG_ETOOBIG = common dso_local global i32 0, align 4
@EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.state* (%struct.nfa*, %struct.state*, %struct.state*, %struct.arc**)* @emptyreachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.state* @emptyreachable(%struct.nfa* %0, %struct.state* %1, %struct.state* %2, %struct.arc** %3) #0 {
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.nfa*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.arc**, align 8
  %10 = alloca %struct.arc*, align 8
  store %struct.nfa* %0, %struct.nfa** %6, align 8
  store %struct.state* %1, %struct.state** %7, align 8
  store %struct.state* %2, %struct.state** %8, align 8
  store %struct.arc** %3, %struct.arc*** %9, align 8
  %11 = load %struct.nfa*, %struct.nfa** %6, align 8
  %12 = getelementptr inbounds %struct.nfa, %struct.nfa* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @STACK_TOO_DEEP(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @REG_ETOOBIG, align 4
  %20 = call i32 @NERR(i32 %19)
  %21 = load %struct.state*, %struct.state** %8, align 8
  store %struct.state* %21, %struct.state** %5, align 8
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.state*, %struct.state** %8, align 8
  %24 = load %struct.state*, %struct.state** %7, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 1
  store %struct.state* %23, %struct.state** %25, align 8
  %26 = load %struct.state*, %struct.state** %7, align 8
  store %struct.state* %26, %struct.state** %8, align 8
  %27 = load %struct.arc**, %struct.arc*** %9, align 8
  %28 = load %struct.state*, %struct.state** %7, align 8
  %29 = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.arc*, %struct.arc** %27, i64 %30
  %32 = load %struct.arc*, %struct.arc** %31, align 8
  store %struct.arc* %32, %struct.arc** %10, align 8
  br label %33

33:                                               ; preds = %58, %22
  %34 = load %struct.arc*, %struct.arc** %10, align 8
  %35 = icmp ne %struct.arc* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load %struct.arc*, %struct.arc** %10, align 8
  %38 = getelementptr inbounds %struct.arc, %struct.arc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EMPTY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.arc*, %struct.arc** %10, align 8
  %44 = getelementptr inbounds %struct.arc, %struct.arc* %43, i32 0, i32 1
  %45 = load %struct.state*, %struct.state** %44, align 8
  %46 = getelementptr inbounds %struct.state, %struct.state* %45, i32 0, i32 1
  %47 = load %struct.state*, %struct.state** %46, align 8
  %48 = icmp eq %struct.state* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.nfa*, %struct.nfa** %6, align 8
  %51 = load %struct.arc*, %struct.arc** %10, align 8
  %52 = getelementptr inbounds %struct.arc, %struct.arc* %51, i32 0, i32 1
  %53 = load %struct.state*, %struct.state** %52, align 8
  %54 = load %struct.state*, %struct.state** %8, align 8
  %55 = load %struct.arc**, %struct.arc*** %9, align 8
  %56 = call %struct.state* @emptyreachable(%struct.nfa* %50, %struct.state* %53, %struct.state* %54, %struct.arc** %55)
  store %struct.state* %56, %struct.state** %8, align 8
  br label %57

57:                                               ; preds = %49, %42, %36
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.arc*, %struct.arc** %10, align 8
  %60 = getelementptr inbounds %struct.arc, %struct.arc* %59, i32 0, i32 2
  %61 = load %struct.arc*, %struct.arc** %60, align 8
  store %struct.arc* %61, %struct.arc** %10, align 8
  br label %33

62:                                               ; preds = %33
  %63 = load %struct.state*, %struct.state** %8, align 8
  store %struct.state* %63, %struct.state** %5, align 8
  br label %64

64:                                               ; preds = %62, %18
  %65 = load %struct.state*, %struct.state** %5, align 8
  ret %struct.state* %65
}

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @NERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
