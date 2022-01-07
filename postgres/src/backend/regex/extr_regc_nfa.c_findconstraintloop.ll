; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_findconstraintloop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_findconstraintloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { %struct.state*, %struct.arc* }
%struct.arc = type { %struct.state*, %struct.arc* }

@REG_ETOOBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfa*, %struct.state*)* @findconstraintloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findconstraintloop(%struct.nfa* %0, %struct.state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfa*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.arc*, align 8
  %7 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  %8 = load %struct.nfa*, %struct.nfa** %4, align 8
  %9 = getelementptr inbounds %struct.nfa, %struct.nfa* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @STACK_TOO_DEEP(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @REG_ETOOBIG, align 4
  %17 = call i32 @NERR(i32 %16)
  store i32 1, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.state*, %struct.state** %5, align 8
  %20 = getelementptr inbounds %struct.state, %struct.state* %19, i32 0, i32 0
  %21 = load %struct.state*, %struct.state** %20, align 8
  %22 = icmp ne %struct.state* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.state*, %struct.state** %5, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 0
  %26 = load %struct.state*, %struct.state** %25, align 8
  %27 = load %struct.state*, %struct.state** %5, align 8
  %28 = icmp eq %struct.state* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %72

30:                                               ; preds = %23
  %31 = load %struct.nfa*, %struct.nfa** %4, align 8
  %32 = load %struct.state*, %struct.state** %5, align 8
  %33 = call i32 @breakconstraintloop(%struct.nfa* %31, %struct.state* %32)
  store i32 1, i32* %3, align 4
  br label %72

34:                                               ; preds = %18
  %35 = load %struct.state*, %struct.state** %5, align 8
  %36 = getelementptr inbounds %struct.state, %struct.state* %35, i32 0, i32 1
  %37 = load %struct.arc*, %struct.arc** %36, align 8
  store %struct.arc* %37, %struct.arc** %6, align 8
  br label %38

38:                                               ; preds = %64, %34
  %39 = load %struct.arc*, %struct.arc** %6, align 8
  %40 = icmp ne %struct.arc* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load %struct.arc*, %struct.arc** %6, align 8
  %43 = call i64 @isconstraintarc(%struct.arc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load %struct.arc*, %struct.arc** %6, align 8
  %47 = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 0, i32 0
  %48 = load %struct.state*, %struct.state** %47, align 8
  store %struct.state* %48, %struct.state** %7, align 8
  %49 = load %struct.state*, %struct.state** %7, align 8
  %50 = load %struct.state*, %struct.state** %5, align 8
  %51 = icmp ne %struct.state* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.state*, %struct.state** %7, align 8
  %55 = load %struct.state*, %struct.state** %5, align 8
  %56 = getelementptr inbounds %struct.state, %struct.state* %55, i32 0, i32 0
  store %struct.state* %54, %struct.state** %56, align 8
  %57 = load %struct.nfa*, %struct.nfa** %4, align 8
  %58 = load %struct.state*, %struct.state** %7, align 8
  %59 = call i32 @findconstraintloop(%struct.nfa* %57, %struct.state* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %72

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.arc*, %struct.arc** %6, align 8
  %66 = getelementptr inbounds %struct.arc, %struct.arc* %65, i32 0, i32 1
  %67 = load %struct.arc*, %struct.arc** %66, align 8
  store %struct.arc* %67, %struct.arc** %6, align 8
  br label %38

68:                                               ; preds = %38
  %69 = load %struct.state*, %struct.state** %5, align 8
  %70 = load %struct.state*, %struct.state** %5, align 8
  %71 = getelementptr inbounds %struct.state, %struct.state* %70, i32 0, i32 0
  store %struct.state* %69, %struct.state** %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %61, %30, %29, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i32 @breakconstraintloop(%struct.nfa*, %struct.state*) #1

declare dso_local i64 @isconstraintarc(%struct.arc*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
