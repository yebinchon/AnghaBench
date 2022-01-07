; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_analyze.c_BuildOnConflictExcludedTargetlist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_analyze.c_BuildOnConflictExcludedTargetlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }

@NIL = common dso_local global i32* null, align 8
@INT4OID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@InvalidAttrNumber = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BuildOnConflictExcludedTargetlist(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %60, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_8__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_9__* @TupleDescAttr(i32 %20, i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i32, i32* @INT4OID, align 4
  %29 = load i32, i32* @InvalidOid, align 4
  %30 = call i64 @makeNullConst(i32 %28, i32 -1, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %7, align 8
  store i8* null, i8** %10, align 8
  br label %51

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @makeVar(i32 %33, i32 %35, i32 %38, i32 %41, i32 %44, i32 0)
  store i32* %45, i32** %7, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @NameStr(i32 %48)
  %50 = call i8* @pstrdup(i32 %49)
  store i8* %50, i8** %10, align 8
  br label %51

51:                                               ; preds = %32, %27
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i8*, i8** %10, align 8
  %56 = call i32* @makeTargetEntry(i32* %52, i32 %54, i8* %55, i32 0)
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32* @lappend(i32* %57, i32* %58)
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %12

63:                                               ; preds = %12
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @InvalidAttrNumber, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @InvalidOid, align 4
  %72 = call i32* @makeVar(i32 %64, i32 %65, i32 %70, i32 -1, i32 %71, i32 0)
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @InvalidAttrNumber, align 4
  %75 = call i32* @makeTargetEntry(i32* %73, i32 %74, i8* null, i32 1)
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32* @lappend(i32* %76, i32* %77)
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  ret i32* %79
}

declare dso_local i32 @RelationGetNumberOfAttributes(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @TupleDescAttr(i32, i32) #1

declare dso_local i64 @makeNullConst(i32, i32, i32) #1

declare dso_local i32* @makeVar(i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @makeTargetEntry(i32*, i32, i8*, i32) #1

declare dso_local i32* @lappend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
