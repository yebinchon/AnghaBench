; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_cbracket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_cbracket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i32, i32, i32 }
%struct.state = type { i64, i64 }

@REG_NLSTOP = common dso_local global i32 0, align 4
@PLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.state*, %struct.state*)* @cbracket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbracket(%struct.vars* %0, %struct.state* %1, %struct.state* %2) #0 {
  %4 = alloca %struct.vars*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  store %struct.vars* %0, %struct.vars** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  store %struct.state* %2, %struct.state** %6, align 8
  %9 = load %struct.vars*, %struct.vars** %4, align 8
  %10 = getelementptr inbounds %struct.vars, %struct.vars* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.state* @newstate(i32 %11)
  store %struct.state* %12, %struct.state** %7, align 8
  %13 = load %struct.vars*, %struct.vars** %4, align 8
  %14 = getelementptr inbounds %struct.vars, %struct.vars* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.state* @newstate(i32 %15)
  store %struct.state* %16, %struct.state** %8, align 8
  %17 = call i32 (...) @NOERR()
  %18 = load %struct.vars*, %struct.vars** %4, align 8
  %19 = load %struct.state*, %struct.state** %7, align 8
  %20 = load %struct.state*, %struct.state** %8, align 8
  %21 = call i32 @bracket(%struct.vars* %18, %struct.state* %19, %struct.state* %20)
  %22 = load %struct.vars*, %struct.vars** %4, align 8
  %23 = getelementptr inbounds %struct.vars, %struct.vars* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @REG_NLSTOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load %struct.vars*, %struct.vars** %4, align 8
  %30 = getelementptr inbounds %struct.vars, %struct.vars* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PLAIN, align 4
  %33 = load %struct.vars*, %struct.vars** %4, align 8
  %34 = getelementptr inbounds %struct.vars, %struct.vars* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.state*, %struct.state** %7, align 8
  %37 = load %struct.state*, %struct.state** %8, align 8
  %38 = call i32 @newarc(i32 %31, i32 %32, i32 %35, %struct.state* %36, %struct.state* %37)
  br label %39

39:                                               ; preds = %28, %3
  %40 = call i32 (...) @NOERR()
  %41 = load %struct.state*, %struct.state** %5, align 8
  %42 = getelementptr inbounds %struct.state, %struct.state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.vars*, %struct.vars** %4, align 8
  %48 = getelementptr inbounds %struct.vars, %struct.vars* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vars*, %struct.vars** %4, align 8
  %51 = getelementptr inbounds %struct.vars, %struct.vars* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PLAIN, align 4
  %54 = load %struct.state*, %struct.state** %7, align 8
  %55 = load %struct.state*, %struct.state** %5, align 8
  %56 = load %struct.state*, %struct.state** %6, align 8
  %57 = call i32 @colorcomplement(i32 %49, i32 %52, i32 %53, %struct.state* %54, %struct.state* %55, %struct.state* %56)
  %58 = call i32 (...) @NOERR()
  %59 = load %struct.vars*, %struct.vars** %4, align 8
  %60 = getelementptr inbounds %struct.vars, %struct.vars* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.state*, %struct.state** %7, align 8
  %63 = call i32 @dropstate(i32 %61, %struct.state* %62)
  %64 = load %struct.state*, %struct.state** %8, align 8
  %65 = getelementptr inbounds %struct.state, %struct.state* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.vars*, %struct.vars** %4, align 8
  %71 = getelementptr inbounds %struct.vars, %struct.vars* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.state*, %struct.state** %8, align 8
  %74 = call i32 @freestate(i32 %72, %struct.state* %73)
  ret void
}

declare dso_local %struct.state* @newstate(i32) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @bracket(%struct.vars*, %struct.state*, %struct.state*) #1

declare dso_local i32 @newarc(i32, i32, i32, %struct.state*, %struct.state*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @colorcomplement(i32, i32, i32, %struct.state*, %struct.state*, %struct.state*) #1

declare dso_local i32 @dropstate(i32, %struct.state*) #1

declare dso_local i32 @freestate(i32, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
