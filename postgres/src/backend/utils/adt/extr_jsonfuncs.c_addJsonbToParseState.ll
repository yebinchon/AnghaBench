; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_addJsonbToParseState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_addJsonbToParseState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@WJB_ELEM = common dso_local global i64 0, align 8
@WJB_VALUE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unexpected parent of nested structure\00", align 1
@WJB_DONE = common dso_local global i64 0, align 8
@WJB_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__**, %struct.TYPE_12__*)* @addJsonbToParseState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addJsonbToParseState(%struct.TYPE_11__** %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = call i32* @JsonbIteratorInit(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 129
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 128
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ true, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = call i64 @JB_ROOT_IS_SCALAR(%struct.TYPE_12__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %24
  %32 = call i64 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %7, i32 0)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 129
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = call i64 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %7, i32 0)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  switch i64 %41, label %50 [
    i64 129, label %42
    i64 128, label %46
  ]

42:                                               ; preds = %31
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %44 = load i64, i64* @WJB_ELEM, align 8
  %45 = call i32 @pushJsonbValue(%struct.TYPE_11__** %43, i64 %44, %struct.TYPE_10__* %7)
  br label %53

46:                                               ; preds = %31
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %48 = load i64, i64* @WJB_VALUE, align 8
  %49 = call i32 @pushJsonbValue(%struct.TYPE_11__** %47, i64 %48, %struct.TYPE_10__* %7)
  br label %53

50:                                               ; preds = %31
  %51 = load i32, i32* @ERROR, align 4
  %52 = call i32 @elog(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46, %42
  br label %81

54:                                               ; preds = %24
  br label %55

55:                                               ; preds = %79, %54
  %56 = call i64 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %7, i32 0)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* @WJB_DONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @WJB_KEY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @WJB_VALUE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @WJB_ELEM, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %63, %59
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @pushJsonbValue(%struct.TYPE_11__** %72, i64 %73, %struct.TYPE_10__* %7)
  br label %79

75:                                               ; preds = %67
  %76 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @pushJsonbValue(%struct.TYPE_11__** %76, i64 %77, %struct.TYPE_10__* null)
  br label %79

79:                                               ; preds = %75, %71
  br label %55

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80, %53
  ret void
}

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @JB_ROOT_IS_SCALAR(%struct.TYPE_12__*) #1

declare dso_local i64 @JsonbIteratorNext(i32**, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @pushJsonbValue(%struct.TYPE_11__**, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
