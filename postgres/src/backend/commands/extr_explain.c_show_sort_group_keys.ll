; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_sort_group_keys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_sort_group_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no tlist entry for key %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i8*, i32, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_18__*)* @show_sort_group_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_sort_group_keys(%struct.TYPE_16__* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, %struct.TYPE_18__* %8) #0 {
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_15__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_14__*, align 8
  %27 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %18, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %19, align 8
  %31 = load i32*, i32** @NIL, align 8
  store i32* %31, i32** %21, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %9
  br label %126

35:                                               ; preds = %9
  %36 = call i32 @initStringInfo(%struct.TYPE_15__* %22)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = bitcast %struct.TYPE_16__* %40 to i32*
  %42 = load i32*, i32** %17, align 8
  %43 = call i32* @set_deparse_context_planstate(i32 %39, i32* %41, i32* %42)
  store i32* %43, i32** %20, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @list_length(i32 %46)
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %54, label %49

49:                                               ; preds = %35
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %49, %35
  %55 = phi i1 [ true, %35 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %57

57:                                               ; preds = %118, %54
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %121

61:                                               ; preds = %57
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %24, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %25, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %25, align 4
  %71 = call %struct.TYPE_14__* @get_tle_by_resno(i32 %69, i32 %70)
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %26, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %73 = icmp ne %struct.TYPE_14__* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %61
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* %25, align 4
  %77 = call i32 @elog(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %61
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32*, i32** %20, align 8
  %84 = load i32, i32* %23, align 4
  %85 = call i8* @deparse_expression(i32* %82, i32* %83, i32 %84, i32 1)
  store i8* %85, i8** %27, align 8
  %86 = call i32 @resetStringInfo(%struct.TYPE_15__* %22)
  %87 = load i8*, i8** %27, align 8
  %88 = call i32 @appendStringInfoString(%struct.TYPE_15__* %22, i8* %87)
  %89 = load i32*, i32** %14, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %112

91:                                               ; preds = %78
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %24, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %24, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %24, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @show_sortorder_options(%struct.TYPE_15__* %22, i32* %95, i32 %100, i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %91, %78
  %113 = load i32*, i32** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pstrdup(i32 %115)
  %117 = call i32* @lappend(i32* %113, i32 %116)
  store i32* %117, i32** %21, align 8
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %24, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %24, align 4
  br label %57

121:                                              ; preds = %57
  %122 = load i8*, i8** %11, align 8
  %123 = load i32*, i32** %21, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %125 = call i32 @ExplainPropertyList(i8* %122, i32* %123, %struct.TYPE_18__* %124)
  br label %126

126:                                              ; preds = %121, %34
  ret void
}

declare dso_local i32 @initStringInfo(%struct.TYPE_15__*) #1

declare dso_local i32* @set_deparse_context_planstate(i32, i32*, i32*) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local %struct.TYPE_14__* @get_tle_by_resno(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @deparse_expression(i32*, i32*, i32, i32) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_15__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @show_sortorder_options(%struct.TYPE_15__*, i32*, i32, i32, i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @ExplainPropertyList(i8*, i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
