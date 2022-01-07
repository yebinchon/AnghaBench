; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_wordchrs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_wordchrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { %struct.state*, i32*, i32 }
%struct.state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*)* @wordchrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wordchrs(%struct.vars* %0) #0 {
  %2 = alloca %struct.vars*, align 8
  %3 = alloca %struct.state*, align 8
  %4 = alloca %struct.state*, align 8
  store %struct.vars* %0, %struct.vars** %2, align 8
  %5 = load %struct.vars*, %struct.vars** %2, align 8
  %6 = getelementptr inbounds %struct.vars, %struct.vars* %5, i32 0, i32 0
  %7 = load %struct.state*, %struct.state** %6, align 8
  %8 = icmp ne %struct.state* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @NEXT()
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.vars*, %struct.vars** %2, align 8
  %13 = getelementptr inbounds %struct.vars, %struct.vars* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.state* @newstate(i32 %14)
  store %struct.state* %15, %struct.state** %3, align 8
  %16 = load %struct.vars*, %struct.vars** %2, align 8
  %17 = getelementptr inbounds %struct.vars, %struct.vars* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.state* @newstate(i32 %18)
  store %struct.state* %19, %struct.state** %4, align 8
  %20 = call i32 (...) @NOERR()
  %21 = load %struct.vars*, %struct.vars** %2, align 8
  %22 = call i32 @lexword(%struct.vars* %21)
  %23 = call i32 (...) @NEXT()
  %24 = load %struct.vars*, %struct.vars** %2, align 8
  %25 = getelementptr inbounds %struct.vars, %struct.vars* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = call i64 @SEE(i8 signext 91)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %28, %11
  %32 = phi i1 [ false, %11 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.vars*, %struct.vars** %2, align 8
  %36 = load %struct.state*, %struct.state** %3, align 8
  %37 = load %struct.state*, %struct.state** %4, align 8
  %38 = call i32 @bracket(%struct.vars* %35, %struct.state* %36, %struct.state* %37)
  %39 = load %struct.vars*, %struct.vars** %2, align 8
  %40 = getelementptr inbounds %struct.vars, %struct.vars* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = call i64 @SEE(i8 signext 93)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %31
  %47 = call i64 (...) @ISERR()
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ true, %43 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = call i32 (...) @NEXT()
  %54 = call i32 (...) @NOERR()
  %55 = load %struct.state*, %struct.state** %3, align 8
  %56 = load %struct.vars*, %struct.vars** %2, align 8
  %57 = getelementptr inbounds %struct.vars, %struct.vars* %56, i32 0, i32 0
  store %struct.state* %55, %struct.state** %57, align 8
  br label %58

58:                                               ; preds = %49, %9
  ret void
}

declare dso_local i32 @NEXT(...) #1

declare dso_local %struct.state* @newstate(i32) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @lexword(%struct.vars*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEE(i8 signext) #1

declare dso_local i32 @bracket(%struct.vars*, %struct.state*, %struct.state*) #1

declare dso_local i64 @ISERR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
