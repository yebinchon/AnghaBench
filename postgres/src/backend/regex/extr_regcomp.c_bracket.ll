; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_bracket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_bracket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i32 }
%struct.state = type { i32 }

@EOS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.state*, %struct.state*)* @bracket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bracket(%struct.vars* %0, %struct.state* %1, %struct.state* %2) #0 {
  %4 = alloca %struct.vars*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  store %struct.vars* %0, %struct.vars** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  store %struct.state* %2, %struct.state** %6, align 8
  %7 = call i32 @SEE(i8 signext 91)
  %8 = call i32 @assert(i32 %7)
  %9 = call i32 (...) @NEXT()
  br label %10

10:                                               ; preds = %20, %3
  %11 = call i32 @SEE(i8 signext 93)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i8, i8* @EOS, align 1
  %15 = call i32 @SEE(i8 signext %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = load %struct.vars*, %struct.vars** %4, align 8
  %22 = load %struct.state*, %struct.state** %5, align 8
  %23 = load %struct.state*, %struct.state** %6, align 8
  %24 = call i32 @brackpart(%struct.vars* %21, %struct.state* %22, %struct.state* %23)
  br label %10

25:                                               ; preds = %18
  %26 = call i32 @SEE(i8 signext 93)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call i64 (...) @ISERR()
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ true, %25 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.vars*, %struct.vars** %4, align 8
  %36 = getelementptr inbounds %struct.vars, %struct.vars* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vars*, %struct.vars** %4, align 8
  %39 = getelementptr inbounds %struct.vars, %struct.vars* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @okcolors(i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SEE(i8 signext) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @brackpart(%struct.vars*, %struct.state*, %struct.state*) #1

declare dso_local i64 @ISERR(...) #1

declare dso_local i32 @okcolors(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
