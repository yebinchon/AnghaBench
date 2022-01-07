; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_parsebranch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_parsebranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subre = type { i32 }
%struct.vars = type { i32 }
%struct.state = type { i32 }

@EOS = common dso_local global i32 0, align 4
@REG_UUNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.subre* (%struct.vars*, i32, i32, %struct.state*, %struct.state*, i32)* @parsebranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.subre* @parsebranch(%struct.vars* %0, i32 %1, i32 %2, %struct.state* %3, %struct.state* %4, i32 %5) #0 {
  %7 = alloca %struct.vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.state*, align 8
  %11 = alloca %struct.state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.subre*, align 8
  store %struct.vars* %0, %struct.vars** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.state* %3, %struct.state** %10, align 8
  store %struct.state* %4, %struct.state** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.state*, %struct.state** %10, align 8
  store %struct.state* %16, %struct.state** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.vars*, %struct.vars** %7, align 8
  %18 = load %struct.state*, %struct.state** %10, align 8
  %19 = load %struct.state*, %struct.state** %11, align 8
  %20 = call %struct.subre* @subre(%struct.vars* %17, i8 signext 61, i32 0, %struct.state* %18, %struct.state* %19)
  store %struct.subre* %20, %struct.subre** %15, align 8
  %21 = call i32 (...) @NOERRN()
  br label %22

22:                                               ; preds = %51, %6
  %23 = call i32 @SEE(i32 124)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @SEE(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EOS, align 4
  %31 = call i32 @SEE(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %29, %25, %22
  %35 = phi i1 [ false, %25 ], [ false, %22 ], [ %33, %29 ]
  br i1 %35, label %36, label %60

36:                                               ; preds = %34
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.vars*, %struct.vars** %7, align 8
  %41 = getelementptr inbounds %struct.vars, %struct.vars* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.state* @newstate(i32 %42)
  store %struct.state* %43, %struct.state** %13, align 8
  %44 = call i32 (...) @NOERRN()
  %45 = load %struct.vars*, %struct.vars** %7, align 8
  %46 = getelementptr inbounds %struct.vars, %struct.vars* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.state*, %struct.state** %11, align 8
  %49 = load %struct.state*, %struct.state** %13, align 8
  %50 = call i32 @moveins(i32 %47, %struct.state* %48, %struct.state* %49)
  br label %51

51:                                               ; preds = %39, %36
  store i32 1, i32* %14, align 4
  %52 = load %struct.vars*, %struct.vars** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.state*, %struct.state** %13, align 8
  %56 = load %struct.state*, %struct.state** %11, align 8
  %57 = load %struct.subre*, %struct.subre** %15, align 8
  %58 = call i32 @parseqatom(%struct.vars* %52, i32 %53, i32 %54, %struct.state* %55, %struct.state* %56, %struct.subre* %57)
  %59 = call i32 (...) @NOERRN()
  br label %22

60:                                               ; preds = %34
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @REG_UUNSPEC, align 4
  %68 = call i32 @NOTE(i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.state*, %struct.state** %13, align 8
  %71 = load %struct.state*, %struct.state** %10, align 8
  %72 = icmp eq %struct.state* %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.state*, %struct.state** %10, align 8
  %76 = load %struct.state*, %struct.state** %11, align 8
  %77 = call i32 @EMPTYARC(%struct.state* %75, %struct.state* %76)
  br label %78

78:                                               ; preds = %69, %60
  %79 = load %struct.subre*, %struct.subre** %15, align 8
  ret %struct.subre* %79
}

declare dso_local %struct.subre* @subre(%struct.vars*, i8 signext, i32, %struct.state*, %struct.state*) #1

declare dso_local i32 @NOERRN(...) #1

declare dso_local i32 @SEE(i32) #1

declare dso_local %struct.state* @newstate(i32) #1

declare dso_local i32 @moveins(i32, %struct.state*, %struct.state*) #1

declare dso_local i32 @parseqatom(%struct.vars*, i32, i32, %struct.state*, %struct.state*, %struct.subre*) #1

declare dso_local i32 @NOTE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EMPTYARC(%struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
