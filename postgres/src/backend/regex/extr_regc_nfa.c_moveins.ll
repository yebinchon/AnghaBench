; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_moveins.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_moveins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { i64, %struct.arc* }
%struct.arc = type { %struct.arc*, i32 }

@REG_CANCEL = common dso_local global i32 0, align 4
@NOTREACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.state*)* @moveins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moveins(%struct.nfa* %0, %struct.state* %1, %struct.state* %2) #0 {
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
  %18 = getelementptr inbounds %struct.state, %struct.state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.state*, %struct.state** %6, align 8
  %21 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @BULK_ARC_OP_USE_SORT(i64 %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %31, %25
  %27 = load %struct.state*, %struct.state** %5, align 8
  %28 = getelementptr inbounds %struct.state, %struct.state* %27, i32 0, i32 1
  %29 = load %struct.arc*, %struct.arc** %28, align 8
  store %struct.arc* %29, %struct.arc** %7, align 8
  %30 = icmp ne %struct.arc* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.nfa*, %struct.nfa** %4, align 8
  %33 = load %struct.arc*, %struct.arc** %7, align 8
  %34 = load %struct.arc*, %struct.arc** %7, align 8
  %35 = getelementptr inbounds %struct.arc, %struct.arc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.state*, %struct.state** %6, align 8
  %38 = call i32 @cparc(%struct.nfa* %32, %struct.arc* %33, i32 %36, %struct.state* %37)
  %39 = load %struct.nfa*, %struct.nfa** %4, align 8
  %40 = load %struct.arc*, %struct.arc** %7, align 8
  %41 = call i32 @freearc(%struct.nfa* %39, %struct.arc* %40)
  br label %26

42:                                               ; preds = %26
  br label %120

43:                                               ; preds = %3
  %44 = load %struct.nfa*, %struct.nfa** %4, align 8
  %45 = getelementptr inbounds %struct.nfa, %struct.nfa* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @CANCEL_REQUESTED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @REG_CANCEL, align 4
  %53 = call i32 @NERR(i32 %52)
  br label %133

54:                                               ; preds = %43
  %55 = load %struct.nfa*, %struct.nfa** %4, align 8
  %56 = load %struct.state*, %struct.state** %5, align 8
  %57 = call i32 @sortins(%struct.nfa* %55, %struct.state* %56)
  %58 = load %struct.nfa*, %struct.nfa** %4, align 8
  %59 = load %struct.state*, %struct.state** %6, align 8
  %60 = call i32 @sortins(%struct.nfa* %58, %struct.state* %59)
  %61 = call i64 (...) @NISERR()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %133

64:                                               ; preds = %54
  %65 = load %struct.state*, %struct.state** %5, align 8
  %66 = getelementptr inbounds %struct.state, %struct.state* %65, i32 0, i32 1
  %67 = load %struct.arc*, %struct.arc** %66, align 8
  store %struct.arc* %67, %struct.arc** %8, align 8
  %68 = load %struct.state*, %struct.state** %6, align 8
  %69 = getelementptr inbounds %struct.state, %struct.state* %68, i32 0, i32 1
  %70 = load %struct.arc*, %struct.arc** %69, align 8
  store %struct.arc* %70, %struct.arc** %9, align 8
  br label %71

71:                                               ; preds = %106, %64
  %72 = load %struct.arc*, %struct.arc** %8, align 8
  %73 = icmp ne %struct.arc* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.arc*, %struct.arc** %9, align 8
  %76 = icmp ne %struct.arc* %75, null
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  br i1 %78, label %79, label %107

79:                                               ; preds = %77
  %80 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %80, %struct.arc** %10, align 8
  %81 = call i32 @sortins_cmp(%struct.arc** %8, %struct.arc** %9)
  switch i32 %81, label %103 [
    i32 -1, label %82
    i32 0, label %89
    i32 1, label %99
  ]

82:                                               ; preds = %79
  %83 = load %struct.arc*, %struct.arc** %8, align 8
  %84 = getelementptr inbounds %struct.arc, %struct.arc* %83, i32 0, i32 0
  %85 = load %struct.arc*, %struct.arc** %84, align 8
  store %struct.arc* %85, %struct.arc** %8, align 8
  %86 = load %struct.arc*, %struct.arc** %10, align 8
  %87 = load %struct.state*, %struct.state** %6, align 8
  %88 = call i32 @changearctarget(%struct.arc* %86, %struct.state* %87)
  br label %106

89:                                               ; preds = %79
  %90 = load %struct.arc*, %struct.arc** %8, align 8
  %91 = getelementptr inbounds %struct.arc, %struct.arc* %90, i32 0, i32 0
  %92 = load %struct.arc*, %struct.arc** %91, align 8
  store %struct.arc* %92, %struct.arc** %8, align 8
  %93 = load %struct.arc*, %struct.arc** %9, align 8
  %94 = getelementptr inbounds %struct.arc, %struct.arc* %93, i32 0, i32 0
  %95 = load %struct.arc*, %struct.arc** %94, align 8
  store %struct.arc* %95, %struct.arc** %9, align 8
  %96 = load %struct.nfa*, %struct.nfa** %4, align 8
  %97 = load %struct.arc*, %struct.arc** %10, align 8
  %98 = call i32 @freearc(%struct.nfa* %96, %struct.arc* %97)
  br label %106

99:                                               ; preds = %79
  %100 = load %struct.arc*, %struct.arc** %9, align 8
  %101 = getelementptr inbounds %struct.arc, %struct.arc* %100, i32 0, i32 0
  %102 = load %struct.arc*, %struct.arc** %101, align 8
  store %struct.arc* %102, %struct.arc** %9, align 8
  br label %106

103:                                              ; preds = %79
  %104 = load i32, i32* @NOTREACHED, align 4
  %105 = call i32 @assert(i32 %104)
  br label %106

106:                                              ; preds = %103, %99, %89, %82
  br label %71

107:                                              ; preds = %77
  br label %108

108:                                              ; preds = %111, %107
  %109 = load %struct.arc*, %struct.arc** %8, align 8
  %110 = icmp ne %struct.arc* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %112, %struct.arc** %11, align 8
  %113 = load %struct.arc*, %struct.arc** %8, align 8
  %114 = getelementptr inbounds %struct.arc, %struct.arc* %113, i32 0, i32 0
  %115 = load %struct.arc*, %struct.arc** %114, align 8
  store %struct.arc* %115, %struct.arc** %8, align 8
  %116 = load %struct.arc*, %struct.arc** %11, align 8
  %117 = load %struct.state*, %struct.state** %6, align 8
  %118 = call i32 @changearctarget(%struct.arc* %116, %struct.state* %117)
  br label %108

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %42
  %121 = load %struct.state*, %struct.state** %5, align 8
  %122 = getelementptr inbounds %struct.state, %struct.state* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.state*, %struct.state** %5, align 8
  %128 = getelementptr inbounds %struct.state, %struct.state* %127, i32 0, i32 1
  %129 = load %struct.arc*, %struct.arc** %128, align 8
  %130 = icmp eq %struct.arc* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  br label %133

133:                                              ; preds = %120, %63, %51
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BULK_ARC_OP_USE_SORT(i64, i64) #1

declare dso_local i32 @cparc(%struct.nfa*, %struct.arc*, i32, %struct.state*) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i32 @sortins(%struct.nfa*, %struct.state*) #1

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @sortins_cmp(%struct.arc**, %struct.arc**) #1

declare dso_local i32 @changearctarget(%struct.arc*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
