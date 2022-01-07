; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_processlacon.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_processlacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i32 }
%struct.state = type { i32 }

@AHEAD = common dso_local global i32 0, align 4
@BEHIND = common dso_local global i32 0, align 4
@NOTREACHED = common dso_local global i32 0, align 4
@LACON = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.state*, %struct.state*, i32, %struct.state*, %struct.state*)* @processlacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @processlacon(%struct.vars* %0, %struct.state* %1, %struct.state* %2, i32 %3, %struct.state* %4, %struct.state* %5) #0 {
  %7 = alloca %struct.vars*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.state*, align 8
  %12 = alloca %struct.state*, align 8
  %13 = alloca %struct.state*, align 8
  %14 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %7, align 8
  store %struct.state* %1, %struct.state** %8, align 8
  store %struct.state* %2, %struct.state** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.state* %4, %struct.state** %11, align 8
  store %struct.state* %5, %struct.state** %12, align 8
  %15 = load %struct.state*, %struct.state** %8, align 8
  %16 = load %struct.state*, %struct.state** %9, align 8
  %17 = call %struct.state* @single_color_transition(%struct.state* %15, %struct.state* %16)
  store %struct.state* %17, %struct.state** %13, align 8
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %101 [
    i32 130, label %19
    i32 131, label %32
    i32 128, label %60
    i32 129, label %73
  ]

19:                                               ; preds = %6
  %20 = load %struct.state*, %struct.state** %13, align 8
  %21 = icmp ne %struct.state* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.vars*, %struct.vars** %7, align 8
  %24 = getelementptr inbounds %struct.vars, %struct.vars* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.state*, %struct.state** %13, align 8
  %27 = load %struct.state*, %struct.state** %11, align 8
  %28 = load %struct.state*, %struct.state** %12, align 8
  %29 = load i32, i32* @AHEAD, align 4
  %30 = call i32 @cloneouts(i32 %25, %struct.state* %26, %struct.state* %27, %struct.state* %28, i32 %29)
  br label %118

31:                                               ; preds = %19
  br label %104

32:                                               ; preds = %6
  %33 = load %struct.state*, %struct.state** %13, align 8
  %34 = icmp ne %struct.state* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load %struct.vars*, %struct.vars** %7, align 8
  %37 = getelementptr inbounds %struct.vars, %struct.vars* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vars*, %struct.vars** %7, align 8
  %40 = getelementptr inbounds %struct.vars, %struct.vars* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AHEAD, align 4
  %43 = load %struct.state*, %struct.state** %13, align 8
  %44 = load %struct.state*, %struct.state** %11, align 8
  %45 = load %struct.state*, %struct.state** %12, align 8
  %46 = call i32 @colorcomplement(i32 %38, i32 %41, i32 %42, %struct.state* %43, %struct.state* %44, %struct.state* %45)
  %47 = load %struct.vars*, %struct.vars** %7, align 8
  %48 = getelementptr inbounds %struct.vars, %struct.vars* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.state*, %struct.state** %11, align 8
  %51 = load %struct.state*, %struct.state** %12, align 8
  %52 = call i32 @newarc(i32 %49, i8 signext 36, i32 1, %struct.state* %50, %struct.state* %51)
  %53 = load %struct.vars*, %struct.vars** %7, align 8
  %54 = getelementptr inbounds %struct.vars, %struct.vars* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.state*, %struct.state** %11, align 8
  %57 = load %struct.state*, %struct.state** %12, align 8
  %58 = call i32 @newarc(i32 %55, i8 signext 36, i32 0, %struct.state* %56, %struct.state* %57)
  br label %118

59:                                               ; preds = %32
  br label %104

60:                                               ; preds = %6
  %61 = load %struct.state*, %struct.state** %13, align 8
  %62 = icmp ne %struct.state* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.vars*, %struct.vars** %7, align 8
  %65 = getelementptr inbounds %struct.vars, %struct.vars* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.state*, %struct.state** %13, align 8
  %68 = load %struct.state*, %struct.state** %11, align 8
  %69 = load %struct.state*, %struct.state** %12, align 8
  %70 = load i32, i32* @BEHIND, align 4
  %71 = call i32 @cloneouts(i32 %66, %struct.state* %67, %struct.state* %68, %struct.state* %69, i32 %70)
  br label %118

72:                                               ; preds = %60
  br label %104

73:                                               ; preds = %6
  %74 = load %struct.state*, %struct.state** %13, align 8
  %75 = icmp ne %struct.state* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %73
  %77 = load %struct.vars*, %struct.vars** %7, align 8
  %78 = getelementptr inbounds %struct.vars, %struct.vars* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vars*, %struct.vars** %7, align 8
  %81 = getelementptr inbounds %struct.vars, %struct.vars* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BEHIND, align 4
  %84 = load %struct.state*, %struct.state** %13, align 8
  %85 = load %struct.state*, %struct.state** %11, align 8
  %86 = load %struct.state*, %struct.state** %12, align 8
  %87 = call i32 @colorcomplement(i32 %79, i32 %82, i32 %83, %struct.state* %84, %struct.state* %85, %struct.state* %86)
  %88 = load %struct.vars*, %struct.vars** %7, align 8
  %89 = getelementptr inbounds %struct.vars, %struct.vars* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.state*, %struct.state** %11, align 8
  %92 = load %struct.state*, %struct.state** %12, align 8
  %93 = call i32 @newarc(i32 %90, i8 signext 94, i32 1, %struct.state* %91, %struct.state* %92)
  %94 = load %struct.vars*, %struct.vars** %7, align 8
  %95 = getelementptr inbounds %struct.vars, %struct.vars* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.state*, %struct.state** %11, align 8
  %98 = load %struct.state*, %struct.state** %12, align 8
  %99 = call i32 @newarc(i32 %96, i8 signext 94, i32 0, %struct.state* %97, %struct.state* %98)
  br label %118

100:                                              ; preds = %73
  br label %104

101:                                              ; preds = %6
  %102 = load i32, i32* @NOTREACHED, align 4
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %101, %100, %72, %59, %31
  %105 = load %struct.vars*, %struct.vars** %7, align 8
  %106 = load %struct.state*, %struct.state** %8, align 8
  %107 = load %struct.state*, %struct.state** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @newlacon(%struct.vars* %105, %struct.state* %106, %struct.state* %107, i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load %struct.vars*, %struct.vars** %7, align 8
  %111 = getelementptr inbounds %struct.vars, %struct.vars* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i8, i8* @LACON, align 1
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.state*, %struct.state** %11, align 8
  %116 = load %struct.state*, %struct.state** %12, align 8
  %117 = call i32 @newarc(i32 %112, i8 signext %113, i32 %114, %struct.state* %115, %struct.state* %116)
  br label %118

118:                                              ; preds = %104, %76, %63, %35, %22
  ret void
}

declare dso_local %struct.state* @single_color_transition(%struct.state*, %struct.state*) #1

declare dso_local i32 @cloneouts(i32, %struct.state*, %struct.state*, %struct.state*, i32) #1

declare dso_local i32 @colorcomplement(i32, i32, i32, %struct.state*, %struct.state*, %struct.state*) #1

declare dso_local i32 @newarc(i32, i8 signext, i32, %struct.state*, %struct.state*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @newlacon(%struct.vars*, %struct.state*, %struct.state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
