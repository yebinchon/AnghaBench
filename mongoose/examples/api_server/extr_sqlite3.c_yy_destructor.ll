; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_yy_destructor.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_yy_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_8__, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@sqlite3ParserARG_FETCH = common dso_local global i32 0, align 4
@pParse = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_10__*)* @yy_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yy_destructor(i32* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %7 = load i32, i32* @sqlite3ParserARG_FETCH, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %92 [
    i32 160, label %9
    i32 194, label %9
    i32 173, label %17
    i32 174, label %17
    i32 178, label %26
    i32 187, label %26
    i32 197, label %26
    i32 200, label %26
    i32 202, label %26
    i32 204, label %26
    i32 214, label %26
    i32 215, label %26
    i32 216, label %26
    i32 220, label %26
    i32 225, label %26
    i32 193, label %34
    i32 198, label %34
    i32 206, label %34
    i32 207, label %34
    i32 199, label %42
    i32 201, label %42
    i32 210, label %42
    i32 224, label %42
    i32 226, label %42
    i32 236, label %42
    i32 241, label %42
    i32 211, label %50
    i32 213, label %50
    i32 218, label %50
    i32 219, label %58
    i32 232, label %75
    i32 237, label %75
    i32 234, label %83
  ]

9:                                                ; preds = %3, %3
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sqlite3SelectDelete(i32 %12, i32 %15)
  br label %93

17:                                               ; preds = %3, %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sqlite3ExprDelete(i32 %20, i32 %24)
  br label %93

26:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sqlite3ExprListDelete(i32 %29, i32 %32)
  br label %93

34:                                               ; preds = %3, %3, %3, %3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sqlite3SrcListDelete(i32 %37, i32 %40)
  br label %93

42:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sqlite3ExprDelete(i32 %45, i32 %48)
  br label %93

50:                                               ; preds = %3, %3, %3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sqlite3IdListDelete(i32 %53, i32 %56)
  br label %93

58:                                               ; preds = %3
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sqlite3ExprListDelete(i32 %61, i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sqlite3SelectDelete(i32 %69, i32 %73)
  br label %93

75:                                               ; preds = %3, %3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sqlite3DeleteTriggerStep(i32 %78, i32 %81)
  br label %93

83:                                               ; preds = %3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pParse, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sqlite3IdListDelete(i32 %86, i32 %90)
  br label %93

92:                                               ; preds = %3
  br label %93

93:                                               ; preds = %92, %83, %75, %58, %50, %42, %34, %26, %17, %9
  ret void
}

declare dso_local i32 @sqlite3SelectDelete(i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(i32, i32) #1

declare dso_local i32 @sqlite3IdListDelete(i32, i32) #1

declare dso_local i32 @sqlite3DeleteTriggerStep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
