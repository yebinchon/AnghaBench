; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32, %struct.state*, %struct.TYPE_3__*, i32 }
%struct.state = type { i32, %struct.state*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup(%struct.nfa* %0) #0 {
  %2 = alloca %struct.nfa*, align 8
  %3 = alloca %struct.state*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca i32, align 4
  store %struct.nfa* %0, %struct.nfa** %2, align 8
  %6 = call i64 (...) @NISERR()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %132

9:                                                ; preds = %1
  %10 = load %struct.nfa*, %struct.nfa** %2, align 8
  %11 = load %struct.nfa*, %struct.nfa** %2, align 8
  %12 = getelementptr inbounds %struct.nfa, %struct.nfa* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nfa*, %struct.nfa** %2, align 8
  %15 = getelementptr inbounds %struct.nfa, %struct.nfa* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @markreachable(%struct.nfa* %10, i32 %13, %struct.state* null, i32 %16)
  %18 = load %struct.nfa*, %struct.nfa** %2, align 8
  %19 = load %struct.nfa*, %struct.nfa** %2, align 8
  %20 = getelementptr inbounds %struct.nfa, %struct.nfa* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.nfa*, %struct.nfa** %2, align 8
  %23 = getelementptr inbounds %struct.nfa, %struct.nfa* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nfa*, %struct.nfa** %2, align 8
  %26 = getelementptr inbounds %struct.nfa, %struct.nfa* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @markcanreach(%struct.nfa* %18, %struct.TYPE_3__* %21, i32 %24, %struct.TYPE_3__* %27)
  %29 = load %struct.nfa*, %struct.nfa** %2, align 8
  %30 = getelementptr inbounds %struct.nfa, %struct.nfa* %29, i32 0, i32 1
  %31 = load %struct.state*, %struct.state** %30, align 8
  store %struct.state* %31, %struct.state** %3, align 8
  br label %32

32:                                               ; preds = %62, %9
  %33 = load %struct.state*, %struct.state** %3, align 8
  %34 = icmp ne %struct.state* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = call i64 (...) @NISERR()
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %64

41:                                               ; preds = %39
  %42 = load %struct.state*, %struct.state** %3, align 8
  %43 = getelementptr inbounds %struct.state, %struct.state* %42, i32 0, i32 1
  %44 = load %struct.state*, %struct.state** %43, align 8
  store %struct.state* %44, %struct.state** %4, align 8
  %45 = load %struct.state*, %struct.state** %3, align 8
  %46 = getelementptr inbounds %struct.state, %struct.state* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.nfa*, %struct.nfa** %2, align 8
  %49 = getelementptr inbounds %struct.nfa, %struct.nfa* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = icmp ne %struct.TYPE_3__* %47, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load %struct.state*, %struct.state** %3, align 8
  %54 = getelementptr inbounds %struct.state, %struct.state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.nfa*, %struct.nfa** %2, align 8
  %59 = load %struct.state*, %struct.state** %3, align 8
  %60 = call i32 @dropstate(%struct.nfa* %58, %struct.state* %59)
  br label %61

61:                                               ; preds = %57, %52, %41
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.state*, %struct.state** %4, align 8
  store %struct.state* %63, %struct.state** %3, align 8
  br label %32

64:                                               ; preds = %39
  %65 = call i64 (...) @NISERR()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %64
  %68 = load %struct.nfa*, %struct.nfa** %2, align 8
  %69 = getelementptr inbounds %struct.nfa, %struct.nfa* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %67
  %75 = load %struct.nfa*, %struct.nfa** %2, align 8
  %76 = getelementptr inbounds %struct.nfa, %struct.nfa* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load %struct.nfa*, %struct.nfa** %2, align 8
  %81 = getelementptr inbounds %struct.nfa, %struct.nfa* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = icmp eq %struct.TYPE_3__* %79, %82
  br label %84

84:                                               ; preds = %74, %67, %64
  %85 = phi i1 [ true, %67 ], [ true, %64 ], [ %83, %74 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.nfa*, %struct.nfa** %2, align 8
  %89 = load %struct.nfa*, %struct.nfa** %2, align 8
  %90 = getelementptr inbounds %struct.nfa, %struct.nfa* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @cleartraverse(%struct.nfa* %88, i32 %91)
  %93 = call i64 (...) @NISERR()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %84
  %96 = load %struct.nfa*, %struct.nfa** %2, align 8
  %97 = getelementptr inbounds %struct.nfa, %struct.nfa* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.nfa*, %struct.nfa** %2, align 8
  %104 = getelementptr inbounds %struct.nfa, %struct.nfa* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = icmp eq %struct.TYPE_3__* %107, null
  br label %109

109:                                              ; preds = %102, %95, %84
  %110 = phi i1 [ true, %95 ], [ true, %84 ], [ %108, %102 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  store i32 0, i32* %5, align 4
  %113 = load %struct.nfa*, %struct.nfa** %2, align 8
  %114 = getelementptr inbounds %struct.nfa, %struct.nfa* %113, i32 0, i32 1
  %115 = load %struct.state*, %struct.state** %114, align 8
  store %struct.state* %115, %struct.state** %3, align 8
  br label %116

116:                                              ; preds = %124, %109
  %117 = load %struct.state*, %struct.state** %3, align 8
  %118 = icmp ne %struct.state* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = load %struct.state*, %struct.state** %3, align 8
  %123 = getelementptr inbounds %struct.state, %struct.state* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %119
  %125 = load %struct.state*, %struct.state** %3, align 8
  %126 = getelementptr inbounds %struct.state, %struct.state* %125, i32 0, i32 1
  %127 = load %struct.state*, %struct.state** %126, align 8
  store %struct.state* %127, %struct.state** %3, align 8
  br label %116

128:                                              ; preds = %116
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.nfa*, %struct.nfa** %2, align 8
  %131 = getelementptr inbounds %struct.nfa, %struct.nfa* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %8
  ret void
}

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @markreachable(%struct.nfa*, i32, %struct.state*, i32) #1

declare dso_local i32 @markcanreach(%struct.nfa*, %struct.TYPE_3__*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dropstate(%struct.nfa*, %struct.state*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cleartraverse(%struct.nfa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
