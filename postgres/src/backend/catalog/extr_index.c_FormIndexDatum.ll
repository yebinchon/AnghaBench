; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_FormIndexDatum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_FormIndexDatum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32* }
%struct.TYPE_6__ = type { i32* }

@NIL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"wrong number of index expressions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FormIndexDatum(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NIL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NIL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @ExecPrepareExprList(i64 %30, i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call %struct.TYPE_6__* @GetPerTupleExprContext(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp eq i32* %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  br label %43

43:                                               ; preds = %27, %21, %5
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32* @list_head(i64 %46)
  store i32* %47, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %105, %43
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %108

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @slot_getsysattr(i32* %65, i32 %66, i32* %15)
  store i32 %67, i32* %14, align 4
  br label %94

68:                                               ; preds = %54
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @slot_getattr(i32* %72, i32 %73, i32* %15)
  store i32 %74, i32* %14, align 4
  br label %93

75:                                               ; preds = %68
  %76 = load i32*, i32** %11, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @ERROR, align 4
  %80 = call i32 @elog(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32*, i32** %11, align 8
  %83 = call i64 @lfirst(i32* %82)
  %84 = inttoptr i64 %83 to i32*
  %85 = load i32*, i32** %8, align 8
  %86 = call %struct.TYPE_6__* @GetPerTupleExprContext(i32* %85)
  %87 = call i32 @ExecEvalExprSwitchContext(i32* %84, %struct.TYPE_6__* %86, i32* %15)
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i32* @lnext(i64 %90, i32* %91)
  store i32* %92, i32** %11, align 8
  br label %93

93:                                               ; preds = %81, %71
  br label %94

94:                                               ; preds = %93, %64
  %95 = load i32, i32* %14, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %48

108:                                              ; preds = %48
  %109 = load i32*, i32** %11, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @ERROR, align 4
  %113 = call i32 @elog(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  ret void
}

declare dso_local i64 @ExecPrepareExprList(i64, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_6__* @GetPerTupleExprContext(i32*) #1

declare dso_local i32* @list_head(i64) #1

declare dso_local i32 @slot_getsysattr(i32*, i32, i32*) #1

declare dso_local i32 @slot_getattr(i32*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ExecEvalExprSwitchContext(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
