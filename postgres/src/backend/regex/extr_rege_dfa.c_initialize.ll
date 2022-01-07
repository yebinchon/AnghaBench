; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_initialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sset = type { i32, i32*, i64*, i32 }
%struct.vars = type { i32 }
%struct.dfa = type { i32, i32, i32*, i32*, %struct.sset*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@STARTER = common dso_local global i32 0, align 4
@LOCKED = common dso_local global i32 0, align 4
@NOPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sset* (%struct.vars*, %struct.dfa*, i32*)* @initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sset* @initialize(%struct.vars* %0, %struct.dfa* %1, i32* %2) #0 {
  %4 = alloca %struct.sset*, align 8
  %5 = alloca %struct.vars*, align 8
  %6 = alloca %struct.dfa*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sset*, align 8
  %9 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %5, align 8
  store %struct.dfa* %1, %struct.dfa** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.dfa*, %struct.dfa** %6, align 8
  %11 = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.dfa*, %struct.dfa** %6, align 8
  %16 = getelementptr inbounds %struct.dfa, %struct.dfa* %15, i32 0, i32 4
  %17 = load %struct.sset*, %struct.sset** %16, align 8
  %18 = getelementptr inbounds %struct.sset, %struct.sset* %17, i64 0
  %19 = getelementptr inbounds %struct.sset, %struct.sset* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @STARTER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.dfa*, %struct.dfa** %6, align 8
  %26 = getelementptr inbounds %struct.dfa, %struct.dfa* %25, i32 0, i32 4
  %27 = load %struct.sset*, %struct.sset** %26, align 8
  %28 = getelementptr inbounds %struct.sset, %struct.sset* %27, i64 0
  store %struct.sset* %28, %struct.sset** %8, align 8
  br label %94

29:                                               ; preds = %14, %3
  %30 = load %struct.vars*, %struct.vars** %5, align 8
  %31 = load %struct.dfa*, %struct.dfa** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.sset* @getvacant(%struct.vars* %30, %struct.dfa* %31, i32* %32, i32* %33)
  store %struct.sset* %34, %struct.sset** %8, align 8
  %35 = load %struct.sset*, %struct.sset** %8, align 8
  %36 = icmp eq %struct.sset* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store %struct.sset* null, %struct.sset** %4, align 8
  br label %121

38:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.dfa*, %struct.dfa** %6, align 8
  %42 = getelementptr inbounds %struct.dfa, %struct.dfa* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.sset*, %struct.sset** %8, align 8
  %47 = getelementptr inbounds %struct.sset, %struct.sset* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load %struct.sset*, %struct.sset** %8, align 8
  %57 = getelementptr inbounds %struct.sset, %struct.sset* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.dfa*, %struct.dfa** %6, align 8
  %60 = getelementptr inbounds %struct.dfa, %struct.dfa* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BSET(i64* %58, i32 %63)
  %65 = load %struct.sset*, %struct.sset** %8, align 8
  %66 = getelementptr inbounds %struct.sset, %struct.sset* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.dfa*, %struct.dfa** %6, align 8
  %69 = getelementptr inbounds %struct.dfa, %struct.dfa* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @HASH(i64* %67, i32 %70)
  %72 = load %struct.sset*, %struct.sset** %8, align 8
  %73 = getelementptr inbounds %struct.sset, %struct.sset* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.dfa*, %struct.dfa** %6, align 8
  %75 = getelementptr inbounds %struct.dfa, %struct.dfa* %74, i32 0, i32 5
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dfa*, %struct.dfa** %6, align 8
  %80 = getelementptr inbounds %struct.dfa, %struct.dfa* %79, i32 0, i32 5
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %78, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* @STARTER, align 4
  %88 = load i32, i32* @LOCKED, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @NOPROGRESS, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.sset*, %struct.sset** %8, align 8
  %93 = getelementptr inbounds %struct.sset, %struct.sset* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %55, %24
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %109, %94
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.dfa*, %struct.dfa** %6, align 8
  %98 = getelementptr inbounds %struct.dfa, %struct.dfa* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load %struct.dfa*, %struct.dfa** %6, align 8
  %103 = getelementptr inbounds %struct.dfa, %struct.dfa* %102, i32 0, i32 4
  %104 = load %struct.sset*, %struct.sset** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sset, %struct.sset* %104, i64 %106
  %108 = getelementptr inbounds %struct.sset, %struct.sset* %107, i32 0, i32 1
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %95

112:                                              ; preds = %95
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.sset*, %struct.sset** %8, align 8
  %115 = getelementptr inbounds %struct.sset, %struct.sset* %114, i32 0, i32 1
  store i32* %113, i32** %115, align 8
  %116 = load %struct.dfa*, %struct.dfa** %6, align 8
  %117 = getelementptr inbounds %struct.dfa, %struct.dfa* %116, i32 0, i32 3
  store i32* null, i32** %117, align 8
  %118 = load %struct.dfa*, %struct.dfa** %6, align 8
  %119 = getelementptr inbounds %struct.dfa, %struct.dfa* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  %120 = load %struct.sset*, %struct.sset** %8, align 8
  store %struct.sset* %120, %struct.sset** %4, align 8
  br label %121

121:                                              ; preds = %112, %37
  %122 = load %struct.sset*, %struct.sset** %4, align 8
  ret %struct.sset* %122
}

declare dso_local %struct.sset* @getvacant(%struct.vars*, %struct.dfa*, i32*, i32*) #1

declare dso_local i32 @BSET(i64*, i32) #1

declare dso_local i32 @HASH(i64*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
