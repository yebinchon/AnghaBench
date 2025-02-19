; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execUtils.c_GetAttributeByName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execUtils.c_GetAttributeByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid attribute name\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"a NULL isNull pointer was passed\00", align 1
@InvalidAttrNumber = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"attribute \22%s\22 does not exist\00", align 1
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetAttributeByName(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 (i32, i8*, ...) @elog(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @elog(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  store i32 1, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %89

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @HeapTupleHeaderGetTypeId(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @HeapTupleHeaderGetTypMod(i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.TYPE_10__* @lookup_rowtype_tupdesc(i32 %37, i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %12, align 8
  %40 = load i64, i64* @InvalidAttrNumber, align 8
  store i64 %40, i64* %8, align 8
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %61, %32
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_10__* %48, i32 %49)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %15, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @namestrcmp(i32* %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  br label %64

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %41

64:                                               ; preds = %56, %41
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @InvalidAttrNumber, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 (i32, i8*, ...) @elog(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @HeapTupleHeaderGetDatumLength(i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %77 = call i32 @ItemPointerSetInvalid(i32* %76)
  %78 = load i32, i32* @InvalidOid, align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32* %80, i32** %81, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @heap_getattr(%struct.TYPE_11__* %13, i64 %82, %struct.TYPE_10__* %83, i32* %84)
  store i32 %85, i32* %9, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = call i32 @ReleaseTupleDesc(%struct.TYPE_10__* %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %72, %30
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @HeapTupleHeaderGetTypeId(i32*) #1

declare dso_local i32 @HeapTupleHeaderGetTypMod(i32*) #1

declare dso_local %struct.TYPE_10__* @lookup_rowtype_tupdesc(i32, i32) #1

declare dso_local %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @namestrcmp(i32*, i8*) #1

declare dso_local i32 @HeapTupleHeaderGetDatumLength(i32*) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @heap_getattr(%struct.TYPE_11__*, i64, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ReleaseTupleDesc(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
