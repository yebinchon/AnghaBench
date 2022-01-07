; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_changearctarget.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_changearctarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc = type { %struct.arc*, %struct.arc*, %struct.state* }
%struct.state = type { i32, %struct.arc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arc*, %struct.state*)* @changearctarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @changearctarget(%struct.arc* %0, %struct.state* %1) #0 {
  %3 = alloca %struct.arc*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.arc*, align 8
  store %struct.arc* %0, %struct.arc** %3, align 8
  store %struct.state* %1, %struct.state** %4, align 8
  %7 = load %struct.arc*, %struct.arc** %3, align 8
  %8 = getelementptr inbounds %struct.arc, %struct.arc* %7, i32 0, i32 2
  %9 = load %struct.state*, %struct.state** %8, align 8
  store %struct.state* %9, %struct.state** %5, align 8
  %10 = load %struct.state*, %struct.state** %5, align 8
  %11 = load %struct.state*, %struct.state** %4, align 8
  %12 = icmp ne %struct.state* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.state*, %struct.state** %5, align 8
  %16 = icmp ne %struct.state* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.arc*, %struct.arc** %3, align 8
  %20 = getelementptr inbounds %struct.arc, %struct.arc* %19, i32 0, i32 0
  %21 = load %struct.arc*, %struct.arc** %20, align 8
  store %struct.arc* %21, %struct.arc** %6, align 8
  %22 = load %struct.arc*, %struct.arc** %6, align 8
  %23 = icmp eq %struct.arc* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.state*, %struct.state** %5, align 8
  %26 = getelementptr inbounds %struct.state, %struct.state* %25, i32 0, i32 1
  %27 = load %struct.arc*, %struct.arc** %26, align 8
  %28 = load %struct.arc*, %struct.arc** %3, align 8
  %29 = icmp eq %struct.arc* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.arc*, %struct.arc** %3, align 8
  %33 = getelementptr inbounds %struct.arc, %struct.arc* %32, i32 0, i32 1
  %34 = load %struct.arc*, %struct.arc** %33, align 8
  %35 = load %struct.state*, %struct.state** %5, align 8
  %36 = getelementptr inbounds %struct.state, %struct.state* %35, i32 0, i32 1
  store %struct.arc* %34, %struct.arc** %36, align 8
  br label %50

37:                                               ; preds = %2
  %38 = load %struct.arc*, %struct.arc** %6, align 8
  %39 = getelementptr inbounds %struct.arc, %struct.arc* %38, i32 0, i32 1
  %40 = load %struct.arc*, %struct.arc** %39, align 8
  %41 = load %struct.arc*, %struct.arc** %3, align 8
  %42 = icmp eq %struct.arc* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.arc*, %struct.arc** %3, align 8
  %46 = getelementptr inbounds %struct.arc, %struct.arc* %45, i32 0, i32 1
  %47 = load %struct.arc*, %struct.arc** %46, align 8
  %48 = load %struct.arc*, %struct.arc** %6, align 8
  %49 = getelementptr inbounds %struct.arc, %struct.arc* %48, i32 0, i32 1
  store %struct.arc* %47, %struct.arc** %49, align 8
  br label %50

50:                                               ; preds = %37, %24
  %51 = load %struct.arc*, %struct.arc** %3, align 8
  %52 = getelementptr inbounds %struct.arc, %struct.arc* %51, i32 0, i32 1
  %53 = load %struct.arc*, %struct.arc** %52, align 8
  %54 = icmp ne %struct.arc* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.arc*, %struct.arc** %3, align 8
  %57 = getelementptr inbounds %struct.arc, %struct.arc* %56, i32 0, i32 1
  %58 = load %struct.arc*, %struct.arc** %57, align 8
  %59 = getelementptr inbounds %struct.arc, %struct.arc* %58, i32 0, i32 0
  %60 = load %struct.arc*, %struct.arc** %59, align 8
  %61 = load %struct.arc*, %struct.arc** %3, align 8
  %62 = icmp eq %struct.arc* %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.arc*, %struct.arc** %6, align 8
  %66 = load %struct.arc*, %struct.arc** %3, align 8
  %67 = getelementptr inbounds %struct.arc, %struct.arc* %66, i32 0, i32 1
  %68 = load %struct.arc*, %struct.arc** %67, align 8
  %69 = getelementptr inbounds %struct.arc, %struct.arc* %68, i32 0, i32 0
  store %struct.arc* %65, %struct.arc** %69, align 8
  br label %70

70:                                               ; preds = %55, %50
  %71 = load %struct.state*, %struct.state** %5, align 8
  %72 = getelementptr inbounds %struct.state, %struct.state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.state*, %struct.state** %4, align 8
  %76 = load %struct.arc*, %struct.arc** %3, align 8
  %77 = getelementptr inbounds %struct.arc, %struct.arc* %76, i32 0, i32 2
  store %struct.state* %75, %struct.state** %77, align 8
  %78 = load %struct.state*, %struct.state** %4, align 8
  %79 = getelementptr inbounds %struct.state, %struct.state* %78, i32 0, i32 1
  %80 = load %struct.arc*, %struct.arc** %79, align 8
  %81 = load %struct.arc*, %struct.arc** %3, align 8
  %82 = getelementptr inbounds %struct.arc, %struct.arc* %81, i32 0, i32 1
  store %struct.arc* %80, %struct.arc** %82, align 8
  %83 = load %struct.arc*, %struct.arc** %3, align 8
  %84 = getelementptr inbounds %struct.arc, %struct.arc* %83, i32 0, i32 0
  store %struct.arc* null, %struct.arc** %84, align 8
  %85 = load %struct.state*, %struct.state** %4, align 8
  %86 = getelementptr inbounds %struct.state, %struct.state* %85, i32 0, i32 1
  %87 = load %struct.arc*, %struct.arc** %86, align 8
  %88 = icmp ne %struct.arc* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %70
  %90 = load %struct.arc*, %struct.arc** %3, align 8
  %91 = load %struct.state*, %struct.state** %4, align 8
  %92 = getelementptr inbounds %struct.state, %struct.state* %91, i32 0, i32 1
  %93 = load %struct.arc*, %struct.arc** %92, align 8
  %94 = getelementptr inbounds %struct.arc, %struct.arc* %93, i32 0, i32 0
  store %struct.arc* %90, %struct.arc** %94, align 8
  br label %95

95:                                               ; preds = %89, %70
  %96 = load %struct.arc*, %struct.arc** %3, align 8
  %97 = load %struct.state*, %struct.state** %4, align 8
  %98 = getelementptr inbounds %struct.state, %struct.state* %97, i32 0, i32 1
  store %struct.arc* %96, %struct.arc** %98, align 8
  %99 = load %struct.state*, %struct.state** %4, align 8
  %100 = getelementptr inbounds %struct.state, %struct.state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
