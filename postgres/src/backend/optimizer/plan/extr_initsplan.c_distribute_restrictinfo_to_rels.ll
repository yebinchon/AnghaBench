; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_initsplan.c_distribute_restrictinfo_to_rels.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_initsplan.c_distribute_restrictinfo_to_rels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot cope with variable-free clause\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @distribute_restrictinfo_to_rels(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @bms_membership(i32 %10)
  switch i32 %11, label %40 [
    i32 128, label %12
    i32 129, label %33
  ]

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @bms_singleton_member(i32 %14)
  %16 = call %struct.TYPE_9__* @find_base_rel(i32* %13, i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call i32 @lappend(i32 %19, %struct.TYPE_8__* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @Min(i32 %26, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @check_hashjoinable(%struct.TYPE_8__* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @add_join_clause_to_rels(i32* %36, %struct.TYPE_8__* %37, i32 %38)
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 @elog(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33, %12
  ret void
}

declare dso_local i32 @bms_membership(i32) #1

declare dso_local %struct.TYPE_9__* @find_base_rel(i32*, i32) #1

declare dso_local i32 @bms_singleton_member(i32) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @check_hashjoinable(%struct.TYPE_8__*) #1

declare dso_local i32 @add_join_clause_to_rels(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
