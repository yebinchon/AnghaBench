; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_allocarc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_allocarc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc = type { %struct.arc*, i64 }
%struct.nfa = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.state = type { i32, %struct.arc*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.arcbatch*, %struct.arc* }
%struct.arcbatch = type { %struct.arc*, %struct.arcbatch* }

@ABSIZE = common dso_local global i32 0, align 4
@REG_MAX_COMPILE_SPACE = common dso_local global i64 0, align 8
@REG_ETOOBIG = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arc* (%struct.nfa*, %struct.state*)* @allocarc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arc* @allocarc(%struct.nfa* %0, %struct.state* %1) #0 {
  %3 = alloca %struct.arc*, align 8
  %4 = alloca %struct.nfa*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.arc*, align 8
  %7 = alloca %struct.arcbatch*, align 8
  %8 = alloca i32, align 4
  store %struct.nfa* %0, %struct.nfa** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  %9 = load %struct.state*, %struct.state** %5, align 8
  %10 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 1
  %11 = load %struct.arc*, %struct.arc** %10, align 8
  %12 = icmp eq %struct.arc* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.state*, %struct.state** %5, align 8
  %15 = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ABSIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.state*, %struct.state** %5, align 8
  %21 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.arc*, %struct.arc** %22, align 8
  %24 = load %struct.state*, %struct.state** %5, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.arc, %struct.arc* %23, i64 %27
  store %struct.arc* %28, %struct.arc** %6, align 8
  %29 = load %struct.state*, %struct.state** %5, align 8
  %30 = getelementptr inbounds %struct.state, %struct.state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.arc*, %struct.arc** %6, align 8
  store %struct.arc* %33, %struct.arc** %3, align 8
  br label %135

34:                                               ; preds = %13, %2
  %35 = load %struct.state*, %struct.state** %5, align 8
  %36 = getelementptr inbounds %struct.state, %struct.state* %35, i32 0, i32 1
  %37 = load %struct.arc*, %struct.arc** %36, align 8
  %38 = icmp eq %struct.arc* %37, null
  br i1 %38, label %39, label %119

39:                                               ; preds = %34
  %40 = load %struct.nfa*, %struct.nfa** %4, align 8
  %41 = getelementptr inbounds %struct.nfa, %struct.nfa* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_MAX_COMPILE_SPACE, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @REG_ETOOBIG, align 4
  %49 = call i32 @NERR(i32 %48)
  store %struct.arc* null, %struct.arc** %3, align 8
  br label %135

50:                                               ; preds = %39
  %51 = call i64 @MALLOC(i32 16)
  %52 = inttoptr i64 %51 to %struct.arcbatch*
  store %struct.arcbatch* %52, %struct.arcbatch** %7, align 8
  %53 = load %struct.arcbatch*, %struct.arcbatch** %7, align 8
  %54 = icmp eq %struct.arcbatch* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @REG_ESPACE, align 4
  %57 = call i32 @NERR(i32 %56)
  store %struct.arc* null, %struct.arc** %3, align 8
  br label %135

58:                                               ; preds = %50
  %59 = load %struct.nfa*, %struct.nfa** %4, align 8
  %60 = getelementptr inbounds %struct.nfa, %struct.nfa* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 16
  store i64 %64, i64* %62, align 8
  %65 = load %struct.state*, %struct.state** %5, align 8
  %66 = getelementptr inbounds %struct.state, %struct.state* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.arcbatch*, %struct.arcbatch** %67, align 8
  %69 = load %struct.arcbatch*, %struct.arcbatch** %7, align 8
  %70 = getelementptr inbounds %struct.arcbatch, %struct.arcbatch* %69, i32 0, i32 1
  store %struct.arcbatch* %68, %struct.arcbatch** %70, align 8
  %71 = load %struct.arcbatch*, %struct.arcbatch** %7, align 8
  %72 = load %struct.state*, %struct.state** %5, align 8
  %73 = getelementptr inbounds %struct.state, %struct.state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.arcbatch* %71, %struct.arcbatch** %74, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %101, %58
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ABSIZE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load %struct.arcbatch*, %struct.arcbatch** %7, align 8
  %81 = getelementptr inbounds %struct.arcbatch, %struct.arcbatch* %80, i32 0, i32 0
  %82 = load %struct.arc*, %struct.arc** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.arc, %struct.arc* %82, i64 %84
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.arcbatch*, %struct.arcbatch** %7, align 8
  %88 = getelementptr inbounds %struct.arcbatch, %struct.arcbatch* %87, i32 0, i32 0
  %89 = load %struct.arc*, %struct.arc** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.arc, %struct.arc* %89, i64 %92
  %94 = load %struct.arcbatch*, %struct.arcbatch** %7, align 8
  %95 = getelementptr inbounds %struct.arcbatch, %struct.arcbatch* %94, i32 0, i32 0
  %96 = load %struct.arc*, %struct.arc** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.arc, %struct.arc* %96, i64 %98
  %100 = getelementptr inbounds %struct.arc, %struct.arc* %99, i32 0, i32 0
  store %struct.arc* %93, %struct.arc** %100, align 8
  br label %101

101:                                              ; preds = %79
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %75

104:                                              ; preds = %75
  %105 = load %struct.arcbatch*, %struct.arcbatch** %7, align 8
  %106 = getelementptr inbounds %struct.arcbatch, %struct.arcbatch* %105, i32 0, i32 0
  %107 = load %struct.arc*, %struct.arc** %106, align 8
  %108 = load i32, i32* @ABSIZE, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.arc, %struct.arc* %107, i64 %110
  %112 = getelementptr inbounds %struct.arc, %struct.arc* %111, i32 0, i32 0
  store %struct.arc* null, %struct.arc** %112, align 8
  %113 = load %struct.arcbatch*, %struct.arcbatch** %7, align 8
  %114 = getelementptr inbounds %struct.arcbatch, %struct.arcbatch* %113, i32 0, i32 0
  %115 = load %struct.arc*, %struct.arc** %114, align 8
  %116 = getelementptr inbounds %struct.arc, %struct.arc* %115, i64 0
  %117 = load %struct.state*, %struct.state** %5, align 8
  %118 = getelementptr inbounds %struct.state, %struct.state* %117, i32 0, i32 1
  store %struct.arc* %116, %struct.arc** %118, align 8
  br label %119

119:                                              ; preds = %104, %34
  %120 = load %struct.state*, %struct.state** %5, align 8
  %121 = getelementptr inbounds %struct.state, %struct.state* %120, i32 0, i32 1
  %122 = load %struct.arc*, %struct.arc** %121, align 8
  %123 = icmp ne %struct.arc* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.state*, %struct.state** %5, align 8
  %127 = getelementptr inbounds %struct.state, %struct.state* %126, i32 0, i32 1
  %128 = load %struct.arc*, %struct.arc** %127, align 8
  store %struct.arc* %128, %struct.arc** %6, align 8
  %129 = load %struct.arc*, %struct.arc** %6, align 8
  %130 = getelementptr inbounds %struct.arc, %struct.arc* %129, i32 0, i32 0
  %131 = load %struct.arc*, %struct.arc** %130, align 8
  %132 = load %struct.state*, %struct.state** %5, align 8
  %133 = getelementptr inbounds %struct.state, %struct.state* %132, i32 0, i32 1
  store %struct.arc* %131, %struct.arc** %133, align 8
  %134 = load %struct.arc*, %struct.arc** %6, align 8
  store %struct.arc* %134, %struct.arc** %3, align 8
  br label %135

135:                                              ; preds = %119, %55, %47, %19
  %136 = load %struct.arc*, %struct.arc** %3, align 8
  ret %struct.arc* %136
}

declare dso_local i32 @NERR(i32) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
