; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_copyins.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_copyins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { %struct.arc*, i32 }
%struct.arc = type { i32, i32, i32, %struct.arc* }

@REG_CANCEL = common dso_local global i32 0, align 4
@NOTREACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.state*)* @copyins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyins(%struct.nfa* %0, %struct.state* %1, %struct.state* %2) #0 {
  %4 = alloca %struct.nfa*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.arc*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca %struct.arc*, align 8
  %10 = alloca %struct.arc*, align 8
  %11 = alloca %struct.arc*, align 8
  store %struct.nfa* %0, %struct.nfa** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  store %struct.state* %2, %struct.state** %6, align 8
  %12 = load %struct.state*, %struct.state** %5, align 8
  %13 = load %struct.state*, %struct.state** %6, align 8
  %14 = icmp ne %struct.state* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.state*, %struct.state** %5, align 8
  %18 = getelementptr inbounds %struct.state, %struct.state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.state*, %struct.state** %6, align 8
  %21 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @BULK_ARC_OP_USE_SORT(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %3
  %26 = load %struct.state*, %struct.state** %5, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 0
  %28 = load %struct.arc*, %struct.arc** %27, align 8
  store %struct.arc* %28, %struct.arc** %7, align 8
  br label %29

29:                                               ; preds = %40, %25
  %30 = load %struct.arc*, %struct.arc** %7, align 8
  %31 = icmp ne %struct.arc* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.nfa*, %struct.nfa** %4, align 8
  %34 = load %struct.arc*, %struct.arc** %7, align 8
  %35 = load %struct.arc*, %struct.arc** %7, align 8
  %36 = getelementptr inbounds %struct.arc, %struct.arc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.state*, %struct.state** %6, align 8
  %39 = call i32 @cparc(%struct.nfa* %33, %struct.arc* %34, i32 %37, %struct.state* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load %struct.arc*, %struct.arc** %7, align 8
  %42 = getelementptr inbounds %struct.arc, %struct.arc* %41, i32 0, i32 3
  %43 = load %struct.arc*, %struct.arc** %42, align 8
  store %struct.arc* %43, %struct.arc** %7, align 8
  br label %29

44:                                               ; preds = %29
  br label %137

45:                                               ; preds = %3
  %46 = load %struct.nfa*, %struct.nfa** %4, align 8
  %47 = getelementptr inbounds %struct.nfa, %struct.nfa* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @CANCEL_REQUESTED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @REG_CANCEL, align 4
  %55 = call i32 @NERR(i32 %54)
  br label %137

56:                                               ; preds = %45
  %57 = load %struct.nfa*, %struct.nfa** %4, align 8
  %58 = load %struct.state*, %struct.state** %5, align 8
  %59 = call i32 @sortins(%struct.nfa* %57, %struct.state* %58)
  %60 = load %struct.nfa*, %struct.nfa** %4, align 8
  %61 = load %struct.state*, %struct.state** %6, align 8
  %62 = call i32 @sortins(%struct.nfa* %60, %struct.state* %61)
  %63 = call i64 (...) @NISERR()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %137

66:                                               ; preds = %56
  %67 = load %struct.state*, %struct.state** %5, align 8
  %68 = getelementptr inbounds %struct.state, %struct.state* %67, i32 0, i32 0
  %69 = load %struct.arc*, %struct.arc** %68, align 8
  store %struct.arc* %69, %struct.arc** %8, align 8
  %70 = load %struct.state*, %struct.state** %6, align 8
  %71 = getelementptr inbounds %struct.state, %struct.state* %70, i32 0, i32 0
  %72 = load %struct.arc*, %struct.arc** %71, align 8
  store %struct.arc* %72, %struct.arc** %9, align 8
  br label %73

73:                                               ; preds = %114, %66
  %74 = load %struct.arc*, %struct.arc** %8, align 8
  %75 = icmp ne %struct.arc* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.arc*, %struct.arc** %9, align 8
  %78 = icmp ne %struct.arc* %77, null
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i1 [ false, %73 ], [ %78, %76 ]
  br i1 %80, label %81, label %115

81:                                               ; preds = %79
  %82 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %82, %struct.arc** %10, align 8
  %83 = call i32 @sortins_cmp(%struct.arc** %8, %struct.arc** %9)
  switch i32 %83, label %111 [
    i32 -1, label %84
    i32 0, label %100
    i32 1, label %107
  ]

84:                                               ; preds = %81
  %85 = load %struct.arc*, %struct.arc** %8, align 8
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %85, i32 0, i32 3
  %87 = load %struct.arc*, %struct.arc** %86, align 8
  store %struct.arc* %87, %struct.arc** %8, align 8
  %88 = load %struct.nfa*, %struct.nfa** %4, align 8
  %89 = load %struct.arc*, %struct.arc** %10, align 8
  %90 = getelementptr inbounds %struct.arc, %struct.arc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.arc*, %struct.arc** %10, align 8
  %93 = getelementptr inbounds %struct.arc, %struct.arc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.arc*, %struct.arc** %10, align 8
  %96 = getelementptr inbounds %struct.arc, %struct.arc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.state*, %struct.state** %6, align 8
  %99 = call i32 @createarc(%struct.nfa* %88, i32 %91, i32 %94, i32 %97, %struct.state* %98)
  br label %114

100:                                              ; preds = %81
  %101 = load %struct.arc*, %struct.arc** %8, align 8
  %102 = getelementptr inbounds %struct.arc, %struct.arc* %101, i32 0, i32 3
  %103 = load %struct.arc*, %struct.arc** %102, align 8
  store %struct.arc* %103, %struct.arc** %8, align 8
  %104 = load %struct.arc*, %struct.arc** %9, align 8
  %105 = getelementptr inbounds %struct.arc, %struct.arc* %104, i32 0, i32 3
  %106 = load %struct.arc*, %struct.arc** %105, align 8
  store %struct.arc* %106, %struct.arc** %9, align 8
  br label %114

107:                                              ; preds = %81
  %108 = load %struct.arc*, %struct.arc** %9, align 8
  %109 = getelementptr inbounds %struct.arc, %struct.arc* %108, i32 0, i32 3
  %110 = load %struct.arc*, %struct.arc** %109, align 8
  store %struct.arc* %110, %struct.arc** %9, align 8
  br label %114

111:                                              ; preds = %81
  %112 = load i32, i32* @NOTREACHED, align 4
  %113 = call i32 @assert(i32 %112)
  br label %114

114:                                              ; preds = %111, %107, %100, %84
  br label %73

115:                                              ; preds = %79
  br label %116

116:                                              ; preds = %119, %115
  %117 = load %struct.arc*, %struct.arc** %8, align 8
  %118 = icmp ne %struct.arc* %117, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %120, %struct.arc** %11, align 8
  %121 = load %struct.arc*, %struct.arc** %8, align 8
  %122 = getelementptr inbounds %struct.arc, %struct.arc* %121, i32 0, i32 3
  %123 = load %struct.arc*, %struct.arc** %122, align 8
  store %struct.arc* %123, %struct.arc** %8, align 8
  %124 = load %struct.nfa*, %struct.nfa** %4, align 8
  %125 = load %struct.arc*, %struct.arc** %11, align 8
  %126 = getelementptr inbounds %struct.arc, %struct.arc* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.arc*, %struct.arc** %11, align 8
  %129 = getelementptr inbounds %struct.arc, %struct.arc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.arc*, %struct.arc** %11, align 8
  %132 = getelementptr inbounds %struct.arc, %struct.arc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.state*, %struct.state** %6, align 8
  %135 = call i32 @createarc(%struct.nfa* %124, i32 %127, i32 %130, i32 %133, %struct.state* %134)
  br label %116

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %53, %65, %136, %44
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BULK_ARC_OP_USE_SORT(i32, i32) #1

declare dso_local i32 @cparc(%struct.nfa*, %struct.arc*, i32, %struct.state*) #1

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i32 @sortins(%struct.nfa*, %struct.state*) #1

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @sortins_cmp(%struct.arc**, %struct.arc**) #1

declare dso_local i32 @createarc(%struct.nfa*, i32, i32, i32, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
