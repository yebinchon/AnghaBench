; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_markreachable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_markreachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { %struct.arc*, %struct.state* }
%struct.arc = type { %struct.state*, %struct.arc* }

@REG_ETOOBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.state*, %struct.state*)* @markreachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markreachable(%struct.nfa* %0, %struct.state* %1, %struct.state* %2, %struct.state* %3) #0 {
  %5 = alloca %struct.nfa*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.arc*, align 8
  store %struct.nfa* %0, %struct.nfa** %5, align 8
  store %struct.state* %1, %struct.state** %6, align 8
  store %struct.state* %2, %struct.state** %7, align 8
  store %struct.state* %3, %struct.state** %8, align 8
  %10 = load %struct.nfa*, %struct.nfa** %5, align 8
  %11 = getelementptr inbounds %struct.nfa, %struct.nfa* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @STACK_TOO_DEEP(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @REG_ETOOBIG, align 4
  %19 = call i32 @NERR(i32 %18)
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.state*, %struct.state** %6, align 8
  %22 = getelementptr inbounds %struct.state, %struct.state* %21, i32 0, i32 1
  %23 = load %struct.state*, %struct.state** %22, align 8
  %24 = load %struct.state*, %struct.state** %7, align 8
  %25 = icmp ne %struct.state* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %48

27:                                               ; preds = %20
  %28 = load %struct.state*, %struct.state** %8, align 8
  %29 = load %struct.state*, %struct.state** %6, align 8
  %30 = getelementptr inbounds %struct.state, %struct.state* %29, i32 0, i32 1
  store %struct.state* %28, %struct.state** %30, align 8
  %31 = load %struct.state*, %struct.state** %6, align 8
  %32 = getelementptr inbounds %struct.state, %struct.state* %31, i32 0, i32 0
  %33 = load %struct.arc*, %struct.arc** %32, align 8
  store %struct.arc* %33, %struct.arc** %9, align 8
  br label %34

34:                                               ; preds = %44, %27
  %35 = load %struct.arc*, %struct.arc** %9, align 8
  %36 = icmp ne %struct.arc* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.nfa*, %struct.nfa** %5, align 8
  %39 = load %struct.arc*, %struct.arc** %9, align 8
  %40 = getelementptr inbounds %struct.arc, %struct.arc* %39, i32 0, i32 0
  %41 = load %struct.state*, %struct.state** %40, align 8
  %42 = load %struct.state*, %struct.state** %7, align 8
  %43 = load %struct.state*, %struct.state** %8, align 8
  call void @markreachable(%struct.nfa* %38, %struct.state* %41, %struct.state* %42, %struct.state* %43)
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.arc*, %struct.arc** %9, align 8
  %46 = getelementptr inbounds %struct.arc, %struct.arc* %45, i32 0, i32 1
  %47 = load %struct.arc*, %struct.arc** %46, align 8
  store %struct.arc* %47, %struct.arc** %9, align 8
  br label %34

48:                                               ; preds = %17, %26, %34
  ret void
}

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @NERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
