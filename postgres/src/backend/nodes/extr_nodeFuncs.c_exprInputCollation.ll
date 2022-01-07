; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_nodeFuncs.c_exprInputCollation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_nodeFuncs.c_exprInputCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exprInputCollation(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @InvalidOid, align 4
  store i32 %8, i32* %2, align 4
  br label %56

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @nodeTag(i32* %10)
  switch i32 %11, label %52 [
    i32 135, label %12
    i32 128, label %17
    i32 133, label %22
    i32 130, label %27
    i32 134, label %32
    i32 131, label %37
    i32 129, label %42
    i32 132, label %47
  ]

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_16__*
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_9__*
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  br label %54

22:                                               ; preds = %9
  %23 = load i32*, i32** %3, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_14__*
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %9
  %28 = load i32*, i32** %3, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_11__*
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %54

32:                                               ; preds = %9
  %33 = load i32*, i32** %3, align 8
  %34 = bitcast i32* %33 to %struct.TYPE_15__*
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %9
  %38 = load i32*, i32** %3, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_12__*
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %54

42:                                               ; preds = %9
  %43 = load i32*, i32** %3, align 8
  %44 = bitcast i32* %43 to %struct.TYPE_10__*
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %9
  %48 = load i32*, i32** %3, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_13__*
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %9
  %53 = load i32, i32* @InvalidOid, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %47, %42, %37, %32, %27, %22, %17, %12
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %7
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @nodeTag(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
