; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_build_index_tlist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_build_index_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"wrong number of index expressions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*)* @build_index_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_index_tlist(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %14 = load i32*, i32** @NIL, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32* @list_head(i32 %22)
  store i32* %23, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %89, %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.TYPE_12__* @SystemAttributeDefinition(i32 %44)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %13, align 8
  br label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call %struct.TYPE_12__* @TupleDescAttr(i32 %49, i32 %51)
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %13, align 8
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @makeVar(i32 %54, i32 %55, i32 %58, i32 %61, i32 %64, i32 0)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %12, align 8
  br label %82

67:                                               ; preds = %30
  %68 = load i32*, i32** %9, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @ERROR, align 4
  %72 = call i32 @elog(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @lfirst(i32* %74)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %12, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32* @lnext(i32 %79, i32* %80)
  store i32* %81, i32** %9, align 8
  br label %82

82:                                               ; preds = %73, %53
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @makeTargetEntry(i32* %84, i32 %86, i32* null, i32 0)
  %88 = call i32* @lappend(i32* %83, i32 %87)
  store i32* %88, i32** %7, align 8
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %24

92:                                               ; preds = %24
  %93 = load i32*, i32** %9, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @ERROR, align 4
  %97 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %7, align 8
  ret i32* %99
}

declare dso_local i32* @list_head(i32) #1

declare dso_local %struct.TYPE_12__* @SystemAttributeDefinition(i32) #1

declare dso_local %struct.TYPE_12__* @TupleDescAttr(i32, i32) #1

declare dso_local i64 @makeVar(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i32, i32*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @makeTargetEntry(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
