; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_nodeFuncs.c_exprSetInputCollation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_nodeFuncs.c_exprSetInputCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_13__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exprSetInputCollation(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @nodeTag(i32* %5)
  switch i32 %6, label %47 [
    i32 135, label %7
    i32 128, label %12
    i32 133, label %17
    i32 130, label %22
    i32 134, label %27
    i32 131, label %32
    i32 129, label %37
    i32 132, label %42
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_16__*
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i8* %8, i8** %11, align 8
  br label %48

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_9__*
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_14__*
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  br label %48

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_11__*
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  br label %48

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_15__*
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  br label %48

32:                                               ; preds = %2
  %33 = load i8*, i8** %4, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_12__*
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  br label %48

37:                                               ; preds = %2
  %38 = load i8*, i8** %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = bitcast i32* %39 to %struct.TYPE_10__*
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  br label %48

42:                                               ; preds = %2
  %43 = load i8*, i8** %4, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = bitcast i32* %44 to %struct.TYPE_13__*
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %42, %37, %32, %27, %22, %17, %12, %7
  ret void
}

declare dso_local i32 @nodeTag(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
