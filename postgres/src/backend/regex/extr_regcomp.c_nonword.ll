; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_nonword.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_nonword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i32, i32 }
%struct.state = type { i32 }

@AHEAD = common dso_local global i32 0, align 4
@BEHIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, i32, %struct.state*, %struct.state*)* @nonword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nonword(%struct.vars* %0, i32 %1, %struct.state* %2, %struct.state* %3) #0 {
  %5 = alloca %struct.vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.state* %2, %struct.state** %7, align 8
  store %struct.state* %3, %struct.state** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AHEAD, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 36, i32 94
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AHEAD, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BEHIND, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ true, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.vars*, %struct.vars** %5, align 8
  %27 = getelementptr inbounds %struct.vars, %struct.vars* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.state*, %struct.state** %7, align 8
  %31 = load %struct.state*, %struct.state** %8, align 8
  %32 = call i32 @newarc(i32 %28, i32 %29, i32 1, %struct.state* %30, %struct.state* %31)
  %33 = load %struct.vars*, %struct.vars** %5, align 8
  %34 = getelementptr inbounds %struct.vars, %struct.vars* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.state*, %struct.state** %7, align 8
  %38 = load %struct.state*, %struct.state** %8, align 8
  %39 = call i32 @newarc(i32 %35, i32 %36, i32 0, %struct.state* %37, %struct.state* %38)
  %40 = load %struct.vars*, %struct.vars** %5, align 8
  %41 = getelementptr inbounds %struct.vars, %struct.vars* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vars*, %struct.vars** %5, align 8
  %44 = getelementptr inbounds %struct.vars, %struct.vars* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.vars*, %struct.vars** %5, align 8
  %48 = getelementptr inbounds %struct.vars, %struct.vars* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.state*, %struct.state** %7, align 8
  %51 = load %struct.state*, %struct.state** %8, align 8
  %52 = call i32 @colorcomplement(i32 %42, i32 %45, i32 %46, i32 %49, %struct.state* %50, %struct.state* %51)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @newarc(i32, i32, i32, %struct.state*, %struct.state*) #1

declare dso_local i32 @colorcomplement(i32, i32, i32, i32, %struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
