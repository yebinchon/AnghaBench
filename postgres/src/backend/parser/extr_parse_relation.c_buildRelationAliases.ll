; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_buildRelationAliases.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_buildRelationAliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@NIL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_COLUMN_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"table \22%s\22 has %d columns available but %d columns specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @buildRelationAliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buildRelationAliases(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** @NIL, align 8
  %22 = icmp eq i8* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32* @list_head(i8* %31)
  store i32* %32, i32** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @list_length(i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** @NIL, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %40

38:                                               ; preds = %3
  %39 = load i8*, i8** @NIL, align 8
  store i8* %39, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %27
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %102, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %105

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_9__* %46, i32 %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %13, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = call i32 @pstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %55 = call i32* @makeString(i32 %54)
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i8* @lappend(i8* %61, i32* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %58, %53
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %94

69:                                               ; preds = %45
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32*, i32** %9, align 8
  %74 = call i64 @lfirst(i32* %73)
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %14, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32* @lnext(i8* %76, i32* %77)
  store i32* %78, i32** %9, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i8* @lappend(i8* %81, i32* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %93

86:                                               ; preds = %69
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @NameStr(i32 %89)
  %91 = call i32 @pstrdup(i8* %90)
  %92 = call i32* @makeString(i32 %91)
  store i32* %92, i32** %14, align 8
  br label %93

93:                                               ; preds = %86, %72
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i8* @lappend(i8* %97, i32* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %41

105:                                              ; preds = %41
  %106 = load i32*, i32** %9, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* @ERRCODE_INVALID_COLUMN_REFERENCE, align 4
  %111 = call i32 @errcode(i32 %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %117, i32 %118)
  %120 = call i32 @ereport(i32 %109, i32 %119)
  br label %121

121:                                              ; preds = %108, %105
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @list_head(i8*) #1

declare dso_local i32 @list_length(i8*) #1

declare dso_local %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @makeString(i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i8* @lappend(i8*, i32*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i8*, i32*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
