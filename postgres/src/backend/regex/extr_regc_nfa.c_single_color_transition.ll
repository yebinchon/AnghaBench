; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_single_color_transition.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_single_color_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, i32, %struct.arc*, %struct.TYPE_2__* }
%struct.arc = type { i64, %struct.state*, %struct.arc* }
%struct.TYPE_2__ = type { i64, %struct.state* }

@EMPTY = common dso_local global i64 0, align 8
@PLAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.state* (%struct.state*, %struct.state*)* @single_color_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.state* @single_color_transition(%struct.state* %0, %struct.state* %1) #0 {
  %3 = alloca %struct.state*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.arc*, align 8
  store %struct.state* %0, %struct.state** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  %7 = load %struct.state*, %struct.state** %4, align 8
  %8 = getelementptr inbounds %struct.state, %struct.state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.state*, %struct.state** %4, align 8
  %13 = getelementptr inbounds %struct.state, %struct.state* %12, i32 0, i32 2
  %14 = load %struct.arc*, %struct.arc** %13, align 8
  %15 = getelementptr inbounds %struct.arc, %struct.arc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EMPTY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.state*, %struct.state** %4, align 8
  %21 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 2
  %22 = load %struct.arc*, %struct.arc** %21, align 8
  %23 = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 1
  %24 = load %struct.state*, %struct.state** %23, align 8
  store %struct.state* %24, %struct.state** %4, align 8
  br label %25

25:                                               ; preds = %19, %11, %2
  %26 = load %struct.state*, %struct.state** %5, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.state*, %struct.state** %5, align 8
  %32 = getelementptr inbounds %struct.state, %struct.state* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EMPTY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.state*, %struct.state** %5, align 8
  %40 = getelementptr inbounds %struct.state, %struct.state* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.state*, %struct.state** %42, align 8
  store %struct.state* %43, %struct.state** %5, align 8
  br label %44

44:                                               ; preds = %38, %30, %25
  %45 = load %struct.state*, %struct.state** %4, align 8
  %46 = load %struct.state*, %struct.state** %5, align 8
  %47 = icmp eq %struct.state* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.state* null, %struct.state** %3, align 8
  br label %82

49:                                               ; preds = %44
  %50 = load %struct.state*, %struct.state** %4, align 8
  %51 = getelementptr inbounds %struct.state, %struct.state* %50, i32 0, i32 2
  %52 = load %struct.arc*, %struct.arc** %51, align 8
  %53 = icmp eq %struct.arc* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store %struct.state* null, %struct.state** %3, align 8
  br label %82

55:                                               ; preds = %49
  %56 = load %struct.state*, %struct.state** %4, align 8
  %57 = getelementptr inbounds %struct.state, %struct.state* %56, i32 0, i32 2
  %58 = load %struct.arc*, %struct.arc** %57, align 8
  store %struct.arc* %58, %struct.arc** %6, align 8
  br label %59

59:                                               ; preds = %76, %55
  %60 = load %struct.arc*, %struct.arc** %6, align 8
  %61 = icmp ne %struct.arc* %60, null
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.arc*, %struct.arc** %6, align 8
  %64 = getelementptr inbounds %struct.arc, %struct.arc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PLAIN, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.arc*, %struct.arc** %6, align 8
  %70 = getelementptr inbounds %struct.arc, %struct.arc* %69, i32 0, i32 1
  %71 = load %struct.state*, %struct.state** %70, align 8
  %72 = load %struct.state*, %struct.state** %5, align 8
  %73 = icmp ne %struct.state* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %62
  store %struct.state* null, %struct.state** %3, align 8
  br label %82

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.arc*, %struct.arc** %6, align 8
  %78 = getelementptr inbounds %struct.arc, %struct.arc* %77, i32 0, i32 2
  %79 = load %struct.arc*, %struct.arc** %78, align 8
  store %struct.arc* %79, %struct.arc** %6, align 8
  br label %59

80:                                               ; preds = %59
  %81 = load %struct.state*, %struct.state** %4, align 8
  store %struct.state* %81, %struct.state** %3, align 8
  br label %82

82:                                               ; preds = %80, %74, %54, %48
  %83 = load %struct.state*, %struct.state** %3, align 8
  ret %struct.state* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
