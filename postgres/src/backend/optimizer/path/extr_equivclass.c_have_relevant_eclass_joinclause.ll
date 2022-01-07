; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_have_relevant_eclass_joinclause.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_have_relevant_eclass_joinclause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @have_relevant_eclass_joinclause(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @get_common_eclass_indexes(%struct.TYPE_9__* %11, i32 %14, i32 %17)
  store i32* %18, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  br label %19

19:                                               ; preds = %52, %3
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @bms_next_member(i32* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @list_nth(i32 %27, i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %10, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bms_overlap(i32 %33, i32 %36)
  %38 = call i32 @Assert(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bms_overlap(i32 %41, i32 %44)
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @list_length(i32 %49)
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %24
  br label %19

53:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %55

54:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32* @get_common_eclass_indexes(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i64 @list_nth(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_overlap(i32, i32) #1

declare dso_local i32 @list_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
