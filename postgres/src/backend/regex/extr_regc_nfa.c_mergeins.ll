; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_mergeins.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_mergeins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { %struct.arc* }
%struct.arc = type { i32, i32, i32, %struct.arc* }

@REG_CANCEL = common dso_local global i32 0, align 4
@NOTREACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.arc**, i32)* @mergeins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mergeins(%struct.nfa* %0, %struct.state* %1, %struct.arc** %2, i32 %3) #0 {
  %5 = alloca %struct.nfa*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.arc**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.arc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.arc*, align 8
  %13 = alloca %struct.arc*, align 8
  store %struct.nfa* %0, %struct.nfa** %5, align 8
  store %struct.state* %1, %struct.state** %6, align 8
  store %struct.arc** %2, %struct.arc*** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %148

17:                                               ; preds = %4
  %18 = load %struct.nfa*, %struct.nfa** %5, align 8
  %19 = getelementptr inbounds %struct.nfa, %struct.nfa* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @CANCEL_REQUESTED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @REG_CANCEL, align 4
  %27 = call i32 @NERR(i32 %26)
  br label %148

28:                                               ; preds = %17
  %29 = load %struct.nfa*, %struct.nfa** %5, align 8
  %30 = load %struct.state*, %struct.state** %6, align 8
  %31 = call i32 @sortins(%struct.nfa* %29, %struct.state* %30)
  %32 = call i64 (...) @NISERR()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %148

35:                                               ; preds = %28
  %36 = load %struct.arc**, %struct.arc*** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @qsort(%struct.arc** %36, i32 %37, i32 8, i32 (%struct.arc**, %struct.arc**)* @sortins_cmp)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %69, %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load %struct.arc**, %struct.arc*** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.arc*, %struct.arc** %44, i64 %46
  %48 = load %struct.arc**, %struct.arc*** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.arc*, %struct.arc** %48, i64 %50
  %52 = call i32 @sortins_cmp(%struct.arc** %47, %struct.arc** %51)
  switch i32 %52, label %65 [
    i32 -1, label %53
    i32 0, label %64
  ]

53:                                               ; preds = %43
  %54 = load %struct.arc**, %struct.arc*** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.arc*, %struct.arc** %54, i64 %56
  %58 = load %struct.arc*, %struct.arc** %57, align 8
  %59 = load %struct.arc**, %struct.arc*** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.arc*, %struct.arc** %59, i64 %62
  store %struct.arc* %58, %struct.arc** %63, align 8
  br label %68

64:                                               ; preds = %43
  br label %68

65:                                               ; preds = %43
  %66 = load i32, i32* @NOTREACHED, align 4
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %65, %64, %53
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %39

72:                                               ; preds = %39
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %75 = load %struct.state*, %struct.state** %6, align 8
  %76 = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 0
  %77 = load %struct.arc*, %struct.arc** %76, align 8
  store %struct.arc* %77, %struct.arc** %9, align 8
  br label %78

78:                                               ; preds = %122, %72
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.arc*, %struct.arc** %9, align 8
  %84 = icmp ne %struct.arc* %83, null
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i1 [ false, %78 ], [ %84, %82 ]
  br i1 %86, label %87, label %123

87:                                               ; preds = %85
  %88 = load %struct.arc**, %struct.arc*** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.arc*, %struct.arc** %88, i64 %90
  %92 = load %struct.arc*, %struct.arc** %91, align 8
  store %struct.arc* %92, %struct.arc** %12, align 8
  %93 = call i32 @sortins_cmp(%struct.arc** %12, %struct.arc** %9)
  switch i32 %93, label %119 [
    i32 -1, label %94
    i32 0, label %109
    i32 1, label %115
  ]

94:                                               ; preds = %87
  %95 = load %struct.nfa*, %struct.nfa** %5, align 8
  %96 = load %struct.arc*, %struct.arc** %12, align 8
  %97 = getelementptr inbounds %struct.arc, %struct.arc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.arc*, %struct.arc** %12, align 8
  %100 = getelementptr inbounds %struct.arc, %struct.arc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.arc*, %struct.arc** %12, align 8
  %103 = getelementptr inbounds %struct.arc, %struct.arc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.state*, %struct.state** %6, align 8
  %106 = call i32 @createarc(%struct.nfa* %95, i32 %98, i32 %101, i32 %104, %struct.state* %105)
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %122

109:                                              ; preds = %87
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load %struct.arc*, %struct.arc** %9, align 8
  %113 = getelementptr inbounds %struct.arc, %struct.arc* %112, i32 0, i32 3
  %114 = load %struct.arc*, %struct.arc** %113, align 8
  store %struct.arc* %114, %struct.arc** %9, align 8
  br label %122

115:                                              ; preds = %87
  %116 = load %struct.arc*, %struct.arc** %9, align 8
  %117 = getelementptr inbounds %struct.arc, %struct.arc* %116, i32 0, i32 3
  %118 = load %struct.arc*, %struct.arc** %117, align 8
  store %struct.arc* %118, %struct.arc** %9, align 8
  br label %122

119:                                              ; preds = %87
  %120 = load i32, i32* @NOTREACHED, align 4
  %121 = call i32 @assert(i32 %120)
  br label %122

122:                                              ; preds = %119, %115, %109, %94
  br label %78

123:                                              ; preds = %85
  br label %124

124:                                              ; preds = %128, %123
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %148

128:                                              ; preds = %124
  %129 = load %struct.arc**, %struct.arc*** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.arc*, %struct.arc** %129, i64 %131
  %133 = load %struct.arc*, %struct.arc** %132, align 8
  store %struct.arc* %133, %struct.arc** %13, align 8
  %134 = load %struct.nfa*, %struct.nfa** %5, align 8
  %135 = load %struct.arc*, %struct.arc** %13, align 8
  %136 = getelementptr inbounds %struct.arc, %struct.arc* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.arc*, %struct.arc** %13, align 8
  %139 = getelementptr inbounds %struct.arc, %struct.arc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.arc*, %struct.arc** %13, align 8
  %142 = getelementptr inbounds %struct.arc, %struct.arc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.state*, %struct.state** %6, align 8
  %145 = call i32 @createarc(%struct.nfa* %134, i32 %137, i32 %140, i32 %143, %struct.state* %144)
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %124

148:                                              ; preds = %16, %25, %34, %124
  ret void
}

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i32 @sortins(%struct.nfa*, %struct.state*) #1

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @qsort(%struct.arc**, i32, i32, i32 (%struct.arc**, %struct.arc**)*) #1

declare dso_local i32 @sortins_cmp(%struct.arc**, %struct.arc**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @createarc(%struct.nfa*, i32, i32, i32, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
