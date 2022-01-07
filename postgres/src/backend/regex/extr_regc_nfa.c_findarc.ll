; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_findarc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_findarc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc = type { i32, i64, %struct.arc* }
%struct.state = type { %struct.arc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arc* (%struct.state*, i32, i64)* @findarc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arc* @findarc(%struct.state* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.arc*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.arc*, align 8
  store %struct.state* %0, %struct.state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.state*, %struct.state** %5, align 8
  %10 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 0
  %11 = load %struct.arc*, %struct.arc** %10, align 8
  store %struct.arc* %11, %struct.arc** %8, align 8
  br label %12

12:                                               ; preds = %30, %3
  %13 = load %struct.arc*, %struct.arc** %8, align 8
  %14 = icmp ne %struct.arc* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.arc*, %struct.arc** %8, align 8
  %17 = getelementptr inbounds %struct.arc, %struct.arc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.arc*, %struct.arc** %8, align 8
  %23 = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %28, %struct.arc** %4, align 8
  br label %35

29:                                               ; preds = %21, %15
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.arc*, %struct.arc** %8, align 8
  %32 = getelementptr inbounds %struct.arc, %struct.arc* %31, i32 0, i32 2
  %33 = load %struct.arc*, %struct.arc** %32, align 8
  store %struct.arc* %33, %struct.arc** %8, align 8
  br label %12

34:                                               ; preds = %12
  store %struct.arc* null, %struct.arc** %4, align 8
  br label %35

35:                                               ; preds = %34, %27
  %36 = load %struct.arc*, %struct.arc** %4, align 8
  ret %struct.arc* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
