; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_duptraverse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_duptraverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { %struct.state*, %struct.arc* }
%struct.arc = type { %struct.state*, %struct.arc* }

@REG_ETOOBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.state*)* @duptraverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duptraverse(%struct.nfa* %0, %struct.state* %1, %struct.state* %2) #0 {
  %4 = alloca %struct.nfa*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.arc*, align 8
  store %struct.nfa* %0, %struct.nfa** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  store %struct.state* %2, %struct.state** %6, align 8
  %8 = load %struct.nfa*, %struct.nfa** %4, align 8
  %9 = getelementptr inbounds %struct.nfa, %struct.nfa* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @STACK_TOO_DEEP(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @REG_ETOOBIG, align 4
  %17 = call i32 @NERR(i32 %16)
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.state*, %struct.state** %5, align 8
  %20 = getelementptr inbounds %struct.state, %struct.state* %19, i32 0, i32 0
  %21 = load %struct.state*, %struct.state** %20, align 8
  %22 = icmp ne %struct.state* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %89

24:                                               ; preds = %18
  %25 = load %struct.state*, %struct.state** %6, align 8
  %26 = icmp eq %struct.state* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.nfa*, %struct.nfa** %4, align 8
  %29 = call %struct.state* @newstate(%struct.nfa* %28)
  br label %32

30:                                               ; preds = %24
  %31 = load %struct.state*, %struct.state** %6, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi %struct.state* [ %29, %27 ], [ %31, %30 ]
  %34 = load %struct.state*, %struct.state** %5, align 8
  %35 = getelementptr inbounds %struct.state, %struct.state* %34, i32 0, i32 0
  store %struct.state* %33, %struct.state** %35, align 8
  %36 = load %struct.state*, %struct.state** %5, align 8
  %37 = getelementptr inbounds %struct.state, %struct.state* %36, i32 0, i32 0
  %38 = load %struct.state*, %struct.state** %37, align 8
  %39 = icmp eq %struct.state* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = call i64 (...) @NISERR()
  %42 = call i32 @assert(i64 %41)
  br label %89

43:                                               ; preds = %32
  %44 = load %struct.state*, %struct.state** %5, align 8
  %45 = getelementptr inbounds %struct.state, %struct.state* %44, i32 0, i32 1
  %46 = load %struct.arc*, %struct.arc** %45, align 8
  store %struct.arc* %46, %struct.arc** %7, align 8
  br label %47

47:                                               ; preds = %85, %43
  %48 = load %struct.arc*, %struct.arc** %7, align 8
  %49 = icmp ne %struct.arc* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i64 (...) @NISERR()
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %89

56:                                               ; preds = %54
  %57 = load %struct.nfa*, %struct.nfa** %4, align 8
  %58 = load %struct.arc*, %struct.arc** %7, align 8
  %59 = getelementptr inbounds %struct.arc, %struct.arc* %58, i32 0, i32 0
  %60 = load %struct.state*, %struct.state** %59, align 8
  call void @duptraverse(%struct.nfa* %57, %struct.state* %60, %struct.state* null)
  %61 = call i64 (...) @NISERR()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %89

64:                                               ; preds = %56
  %65 = load %struct.arc*, %struct.arc** %7, align 8
  %66 = getelementptr inbounds %struct.arc, %struct.arc* %65, i32 0, i32 0
  %67 = load %struct.state*, %struct.state** %66, align 8
  %68 = getelementptr inbounds %struct.state, %struct.state* %67, i32 0, i32 0
  %69 = load %struct.state*, %struct.state** %68, align 8
  %70 = icmp ne %struct.state* %69, null
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = call i32 @assert(i64 %72)
  %74 = load %struct.nfa*, %struct.nfa** %4, align 8
  %75 = load %struct.arc*, %struct.arc** %7, align 8
  %76 = load %struct.state*, %struct.state** %5, align 8
  %77 = getelementptr inbounds %struct.state, %struct.state* %76, i32 0, i32 0
  %78 = load %struct.state*, %struct.state** %77, align 8
  %79 = load %struct.arc*, %struct.arc** %7, align 8
  %80 = getelementptr inbounds %struct.arc, %struct.arc* %79, i32 0, i32 0
  %81 = load %struct.state*, %struct.state** %80, align 8
  %82 = getelementptr inbounds %struct.state, %struct.state* %81, i32 0, i32 0
  %83 = load %struct.state*, %struct.state** %82, align 8
  %84 = call i32 @cparc(%struct.nfa* %74, %struct.arc* %75, %struct.state* %78, %struct.state* %83)
  br label %85

85:                                               ; preds = %64
  %86 = load %struct.arc*, %struct.arc** %7, align 8
  %87 = getelementptr inbounds %struct.arc, %struct.arc* %86, i32 0, i32 1
  %88 = load %struct.arc*, %struct.arc** %87, align 8
  store %struct.arc* %88, %struct.arc** %7, align 8
  br label %47

89:                                               ; preds = %15, %23, %40, %63, %54
  ret void
}

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local %struct.state* @newstate(%struct.nfa*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @cparc(%struct.nfa*, %struct.arc*, %struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
