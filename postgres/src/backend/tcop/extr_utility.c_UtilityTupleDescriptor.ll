; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_utility.c_UtilityTupleDescriptor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_utility.c_UtilityTupleDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @UtilityTupleDescriptor(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @nodeTag(i32* %9)
  switch i32 %10, label %59 [
    i32 132, label %11
    i32 129, label %14
    i32 131, label %36
    i32 130, label %49
    i32 128, label %52
  ]

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @CallStmtResultDesc(i32* %12)
  store i32* %13, i32** %2, align 8
  br label %60

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %4, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %60

22:                                               ; preds = %14
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_8__* @GetPortalByName(i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = call i32 @PortalIsValid(%struct.TYPE_8__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32* null, i32** %2, align 8
  br label %60

31:                                               ; preds = %22
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @CreateTupleDescCopy(i32 %34)
  store i32* %35, i32** %2, align 8
  br label %60

36:                                               ; preds = %1
  %37 = load i32*, i32** %3, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @FetchPreparedStatement(i32 %41, i32 0)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32* null, i32** %2, align 8
  br label %60

46:                                               ; preds = %36
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @FetchPreparedStatementResultDesc(i32* %47)
  store i32* %48, i32** %2, align 8
  br label %60

49:                                               ; preds = %1
  %50 = load i32*, i32** %3, align 8
  %51 = call i32* @ExplainResultDesc(i32* %50)
  store i32* %51, i32** %2, align 8
  br label %60

52:                                               ; preds = %1
  %53 = load i32*, i32** %3, align 8
  %54 = bitcast i32* %53 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %8, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @GetPGVariableResultDesc(i32 %57)
  store i32* %58, i32** %2, align 8
  br label %60

59:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %60

60:                                               ; preds = %59, %52, %49, %46, %45, %31, %30, %21, %11
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32* @CallStmtResultDesc(i32*) #1

declare dso_local %struct.TYPE_8__* @GetPortalByName(i32) #1

declare dso_local i32 @PortalIsValid(%struct.TYPE_8__*) #1

declare dso_local i32* @CreateTupleDescCopy(i32) #1

declare dso_local i32* @FetchPreparedStatement(i32, i32) #1

declare dso_local i32* @FetchPreparedStatementResultDesc(i32*) #1

declare dso_local i32* @ExplainResultDesc(i32*) #1

declare dso_local i32* @GetPGVariableResultDesc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
