; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_newstate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { %struct.state*, %struct.state*, i32*, i32*, i64, i32*, i64, i64, i64, i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.nfa = type { i64, %struct.state*, %struct.state*, %struct.TYPE_3__*, %struct.state* }
%struct.TYPE_3__ = type { i64, i32 }

@REG_CANCEL = common dso_local global i32 0, align 4
@REG_MAX_COMPILE_SPACE = common dso_local global i64 0, align 8
@REG_ETOOBIG = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.state* (%struct.nfa*)* @newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.state* @newstate(%struct.nfa* %0) #0 {
  %2 = alloca %struct.state*, align 8
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  %5 = load %struct.nfa*, %struct.nfa** %3, align 8
  %6 = getelementptr inbounds %struct.nfa, %struct.nfa* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @CANCEL_REQUESTED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @REG_CANCEL, align 4
  %14 = call i32 @NERR(i32 %13)
  store %struct.state* null, %struct.state** %2, align 8
  br label %126

15:                                               ; preds = %1
  %16 = load %struct.nfa*, %struct.nfa** %3, align 8
  %17 = getelementptr inbounds %struct.nfa, %struct.nfa* %16, i32 0, i32 4
  %18 = load %struct.state*, %struct.state** %17, align 8
  %19 = icmp ne %struct.state* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.nfa*, %struct.nfa** %3, align 8
  %22 = getelementptr inbounds %struct.nfa, %struct.nfa* %21, i32 0, i32 4
  %23 = load %struct.state*, %struct.state** %22, align 8
  store %struct.state* %23, %struct.state** %4, align 8
  %24 = load %struct.state*, %struct.state** %4, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 1
  %26 = load %struct.state*, %struct.state** %25, align 8
  %27 = load %struct.nfa*, %struct.nfa** %3, align 8
  %28 = getelementptr inbounds %struct.nfa, %struct.nfa* %27, i32 0, i32 4
  store %struct.state* %26, %struct.state** %28, align 8
  br label %62

29:                                               ; preds = %15
  %30 = load %struct.nfa*, %struct.nfa** %3, align 8
  %31 = getelementptr inbounds %struct.nfa, %struct.nfa* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_MAX_COMPILE_SPACE, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @REG_ETOOBIG, align 4
  %39 = call i32 @NERR(i32 %38)
  store %struct.state* null, %struct.state** %2, align 8
  br label %126

40:                                               ; preds = %29
  %41 = call i64 @MALLOC(i32 96)
  %42 = inttoptr i64 %41 to %struct.state*
  store %struct.state* %42, %struct.state** %4, align 8
  %43 = load %struct.state*, %struct.state** %4, align 8
  %44 = icmp eq %struct.state* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @REG_ESPACE, align 4
  %47 = call i32 @NERR(i32 %46)
  store %struct.state* null, %struct.state** %2, align 8
  br label %126

48:                                               ; preds = %40
  %49 = load %struct.nfa*, %struct.nfa** %3, align 8
  %50 = getelementptr inbounds %struct.nfa, %struct.nfa* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 96
  store i64 %54, i64* %52, align 8
  %55 = load %struct.state*, %struct.state** %4, align 8
  %56 = getelementptr inbounds %struct.state, %struct.state* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.state*, %struct.state** %4, align 8
  %59 = getelementptr inbounds %struct.state, %struct.state* %58, i32 0, i32 10
  store i32* null, i32** %59, align 8
  %60 = load %struct.state*, %struct.state** %4, align 8
  %61 = getelementptr inbounds %struct.state, %struct.state* %60, i32 0, i32 9
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %48, %20
  %63 = load %struct.nfa*, %struct.nfa** %3, align 8
  %64 = getelementptr inbounds %struct.nfa, %struct.nfa* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.nfa*, %struct.nfa** %3, align 8
  %70 = getelementptr inbounds %struct.nfa, %struct.nfa* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.state*, %struct.state** %4, align 8
  %74 = getelementptr inbounds %struct.state, %struct.state* %73, i32 0, i32 8
  store i64 %71, i64* %74, align 8
  %75 = load %struct.state*, %struct.state** %4, align 8
  %76 = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 7
  store i64 0, i64* %76, align 8
  %77 = load %struct.nfa*, %struct.nfa** %3, align 8
  %78 = getelementptr inbounds %struct.nfa, %struct.nfa* %77, i32 0, i32 2
  %79 = load %struct.state*, %struct.state** %78, align 8
  %80 = icmp eq %struct.state* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %62
  %82 = load %struct.state*, %struct.state** %4, align 8
  %83 = load %struct.nfa*, %struct.nfa** %3, align 8
  %84 = getelementptr inbounds %struct.nfa, %struct.nfa* %83, i32 0, i32 2
  store %struct.state* %82, %struct.state** %84, align 8
  br label %85

85:                                               ; preds = %81, %62
  %86 = load %struct.state*, %struct.state** %4, align 8
  %87 = getelementptr inbounds %struct.state, %struct.state* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.state*, %struct.state** %4, align 8
  %89 = getelementptr inbounds %struct.state, %struct.state* %88, i32 0, i32 5
  store i32* null, i32** %89, align 8
  %90 = load %struct.state*, %struct.state** %4, align 8
  %91 = getelementptr inbounds %struct.state, %struct.state* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.state*, %struct.state** %4, align 8
  %93 = getelementptr inbounds %struct.state, %struct.state* %92, i32 0, i32 3
  store i32* null, i32** %93, align 8
  %94 = load %struct.state*, %struct.state** %4, align 8
  %95 = getelementptr inbounds %struct.state, %struct.state* %94, i32 0, i32 2
  store i32* null, i32** %95, align 8
  %96 = load %struct.state*, %struct.state** %4, align 8
  %97 = getelementptr inbounds %struct.state, %struct.state* %96, i32 0, i32 1
  store %struct.state* null, %struct.state** %97, align 8
  %98 = load %struct.nfa*, %struct.nfa** %3, align 8
  %99 = getelementptr inbounds %struct.nfa, %struct.nfa* %98, i32 0, i32 1
  %100 = load %struct.state*, %struct.state** %99, align 8
  %101 = icmp ne %struct.state* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %85
  %103 = load %struct.nfa*, %struct.nfa** %3, align 8
  %104 = getelementptr inbounds %struct.nfa, %struct.nfa* %103, i32 0, i32 1
  %105 = load %struct.state*, %struct.state** %104, align 8
  %106 = getelementptr inbounds %struct.state, %struct.state* %105, i32 0, i32 1
  %107 = load %struct.state*, %struct.state** %106, align 8
  %108 = icmp eq %struct.state* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.state*, %struct.state** %4, align 8
  %112 = load %struct.nfa*, %struct.nfa** %3, align 8
  %113 = getelementptr inbounds %struct.nfa, %struct.nfa* %112, i32 0, i32 1
  %114 = load %struct.state*, %struct.state** %113, align 8
  %115 = getelementptr inbounds %struct.state, %struct.state* %114, i32 0, i32 1
  store %struct.state* %111, %struct.state** %115, align 8
  br label %116

116:                                              ; preds = %102, %85
  %117 = load %struct.nfa*, %struct.nfa** %3, align 8
  %118 = getelementptr inbounds %struct.nfa, %struct.nfa* %117, i32 0, i32 1
  %119 = load %struct.state*, %struct.state** %118, align 8
  %120 = load %struct.state*, %struct.state** %4, align 8
  %121 = getelementptr inbounds %struct.state, %struct.state* %120, i32 0, i32 0
  store %struct.state* %119, %struct.state** %121, align 8
  %122 = load %struct.state*, %struct.state** %4, align 8
  %123 = load %struct.nfa*, %struct.nfa** %3, align 8
  %124 = getelementptr inbounds %struct.nfa, %struct.nfa* %123, i32 0, i32 1
  store %struct.state* %122, %struct.state** %124, align 8
  %125 = load %struct.state*, %struct.state** %4, align 8
  store %struct.state* %125, %struct.state** %2, align 8
  br label %126

126:                                              ; preds = %116, %45, %37, %12
  %127 = load %struct.state*, %struct.state** %2, align 8
  ret %struct.state* %127
}

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
