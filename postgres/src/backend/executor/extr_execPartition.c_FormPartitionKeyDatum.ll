; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_FormPartitionKeyDatum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_FormPartitionKeyDatum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i64* }
%struct.TYPE_8__ = type { i32* }

@NIL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"wrong number of partition key expressions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)* @FormPartitionKeyDatum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FormPartitionKeyDatum(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NIL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NIL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = call %struct.TYPE_8__* @GetPerTupleExprContext(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %36, %37
  br label %39

39:                                               ; preds = %32, %29
  %40 = phi i1 [ false, %29 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @ExecPrepareExprList(i64 %47, i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %39, %23, %5
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32* @list_head(i64 %55)
  store i32* %56, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %110, %52
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %57
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i32*, i32** %7, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @slot_getattr(i32* %78, i64 %79, i32* %15)
  store i32 %80, i32* %14, align 4
  br label %99

81:                                               ; preds = %65
  %82 = load i32*, i32** %11, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @ERROR, align 4
  %86 = call i32 @elog(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32*, i32** %11, align 8
  %89 = call i64 @lfirst(i32* %88)
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32*, i32** %8, align 8
  %92 = call %struct.TYPE_8__* @GetPerTupleExprContext(i32* %91)
  %93 = call i32 @ExecEvalExprSwitchContext(i32* %90, %struct.TYPE_8__* %92, i32* %15)
  store i32 %93, i32* %14, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32* @lnext(i64 %96, i32* %97)
  store i32* %98, i32** %11, align 8
  br label %99

99:                                               ; preds = %87, %77
  %100 = load i32, i32* %14, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %57

113:                                              ; preds = %57
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @ERROR, align 4
  %118 = call i32 @elog(i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %113
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_8__* @GetPerTupleExprContext(i32*) #1

declare dso_local i64 @ExecPrepareExprList(i64, i32*) #1

declare dso_local i32* @list_head(i64) #1

declare dso_local i32 @slot_getattr(i32*, i64, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ExecEvalExprSwitchContext(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
