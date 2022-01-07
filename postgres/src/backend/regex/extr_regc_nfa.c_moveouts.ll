; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_moveouts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_moveouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { i64, %struct.arc* }
%struct.arc = type { i32, i32, i32, %struct.arc* }

@REG_CANCEL = common dso_local global i32 0, align 4
@NOTREACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.state*)* @moveouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moveouts(%struct.nfa* %0, %struct.state* %1, %struct.state* %2) #0 {
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
  %34 = load %struct.state*, %struct.state** %6, align 8
  %35 = load %struct.arc*, %struct.arc** %7, align 8
  %36 = getelementptr inbounds %struct.arc, %struct.arc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @cparc(%struct.nfa* %32, %struct.arc* %33, %struct.state* %34, i32 %37)
  %39 = load %struct.nfa*, %struct.nfa** %4, align 8
  %40 = load %struct.arc*, %struct.arc** %7, align 8
  %41 = call i32 @freearc(%struct.nfa* %39, %struct.arc* %40)
  br label %26

42:                                               ; preds = %26
  br label %144

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
  br label %157

54:                                               ; preds = %43
  %55 = load %struct.nfa*, %struct.nfa** %4, align 8
  %56 = load %struct.state*, %struct.state** %5, align 8
  %57 = call i32 @sortouts(%struct.nfa* %55, %struct.state* %56)
  %58 = load %struct.nfa*, %struct.nfa** %4, align 8
  %59 = load %struct.state*, %struct.state** %6, align 8
  %60 = call i32 @sortouts(%struct.nfa* %58, %struct.state* %59)
  %61 = call i64 (...) @NISERR()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %157

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

71:                                               ; preds = %118, %64
  %72 = load %struct.arc*, %struct.arc** %8, align 8
  %73 = icmp ne %struct.arc* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.arc*, %struct.arc** %9, align 8
  %76 = icmp ne %struct.arc* %75, null
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  br i1 %78, label %79, label %119

79:                                               ; preds = %77
  %80 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %80, %struct.arc** %10, align 8
  %81 = call i32 @sortouts_cmp(%struct.arc** %8, %struct.arc** %9)
  switch i32 %81, label %115 [
    i32 -1, label %82
    i32 0, label %101
    i32 1, label %111
  ]

82:                                               ; preds = %79
  %83 = load %struct.arc*, %struct.arc** %8, align 8
  %84 = getelementptr inbounds %struct.arc, %struct.arc* %83, i32 0, i32 3
  %85 = load %struct.arc*, %struct.arc** %84, align 8
  store %struct.arc* %85, %struct.arc** %8, align 8
  %86 = load %struct.nfa*, %struct.nfa** %4, align 8
  %87 = load %struct.arc*, %struct.arc** %10, align 8
  %88 = getelementptr inbounds %struct.arc, %struct.arc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.arc*, %struct.arc** %10, align 8
  %91 = getelementptr inbounds %struct.arc, %struct.arc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.state*, %struct.state** %6, align 8
  %94 = load %struct.arc*, %struct.arc** %10, align 8
  %95 = getelementptr inbounds %struct.arc, %struct.arc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @createarc(%struct.nfa* %86, i32 %89, i32 %92, %struct.state* %93, i32 %96)
  %98 = load %struct.nfa*, %struct.nfa** %4, align 8
  %99 = load %struct.arc*, %struct.arc** %10, align 8
  %100 = call i32 @freearc(%struct.nfa* %98, %struct.arc* %99)
  br label %118

101:                                              ; preds = %79
  %102 = load %struct.arc*, %struct.arc** %8, align 8
  %103 = getelementptr inbounds %struct.arc, %struct.arc* %102, i32 0, i32 3
  %104 = load %struct.arc*, %struct.arc** %103, align 8
  store %struct.arc* %104, %struct.arc** %8, align 8
  %105 = load %struct.arc*, %struct.arc** %9, align 8
  %106 = getelementptr inbounds %struct.arc, %struct.arc* %105, i32 0, i32 3
  %107 = load %struct.arc*, %struct.arc** %106, align 8
  store %struct.arc* %107, %struct.arc** %9, align 8
  %108 = load %struct.nfa*, %struct.nfa** %4, align 8
  %109 = load %struct.arc*, %struct.arc** %10, align 8
  %110 = call i32 @freearc(%struct.nfa* %108, %struct.arc* %109)
  br label %118

111:                                              ; preds = %79
  %112 = load %struct.arc*, %struct.arc** %9, align 8
  %113 = getelementptr inbounds %struct.arc, %struct.arc* %112, i32 0, i32 3
  %114 = load %struct.arc*, %struct.arc** %113, align 8
  store %struct.arc* %114, %struct.arc** %9, align 8
  br label %118

115:                                              ; preds = %79
  %116 = load i32, i32* @NOTREACHED, align 4
  %117 = call i32 @assert(i32 %116)
  br label %118

118:                                              ; preds = %115, %111, %101, %82
  br label %71

119:                                              ; preds = %77
  br label %120

120:                                              ; preds = %123, %119
  %121 = load %struct.arc*, %struct.arc** %8, align 8
  %122 = icmp ne %struct.arc* %121, null
  br i1 %122, label %123, label %143

123:                                              ; preds = %120
  %124 = load %struct.arc*, %struct.arc** %8, align 8
  store %struct.arc* %124, %struct.arc** %11, align 8
  %125 = load %struct.arc*, %struct.arc** %8, align 8
  %126 = getelementptr inbounds %struct.arc, %struct.arc* %125, i32 0, i32 3
  %127 = load %struct.arc*, %struct.arc** %126, align 8
  store %struct.arc* %127, %struct.arc** %8, align 8
  %128 = load %struct.nfa*, %struct.nfa** %4, align 8
  %129 = load %struct.arc*, %struct.arc** %11, align 8
  %130 = getelementptr inbounds %struct.arc, %struct.arc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.arc*, %struct.arc** %11, align 8
  %133 = getelementptr inbounds %struct.arc, %struct.arc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.state*, %struct.state** %6, align 8
  %136 = load %struct.arc*, %struct.arc** %11, align 8
  %137 = getelementptr inbounds %struct.arc, %struct.arc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @createarc(%struct.nfa* %128, i32 %131, i32 %134, %struct.state* %135, i32 %138)
  %140 = load %struct.nfa*, %struct.nfa** %4, align 8
  %141 = load %struct.arc*, %struct.arc** %11, align 8
  %142 = call i32 @freearc(%struct.nfa* %140, %struct.arc* %141)
  br label %120

143:                                              ; preds = %120
  br label %144

144:                                              ; preds = %143, %42
  %145 = load %struct.state*, %struct.state** %5, align 8
  %146 = getelementptr inbounds %struct.state, %struct.state* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.state*, %struct.state** %5, align 8
  %152 = getelementptr inbounds %struct.state, %struct.state* %151, i32 0, i32 1
  %153 = load %struct.arc*, %struct.arc** %152, align 8
  %154 = icmp eq %struct.arc* %153, null
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  br label %157

157:                                              ; preds = %144, %63, %51
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BULK_ARC_OP_USE_SORT(i64, i64) #1

declare dso_local i32 @cparc(%struct.nfa*, %struct.arc*, %struct.state*, i32) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i32 @sortouts(%struct.nfa*, %struct.state*) #1

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @sortouts_cmp(%struct.arc**, %struct.arc**) #1

declare dso_local i32 @createarc(%struct.nfa*, i32, i32, %struct.state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
