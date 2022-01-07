; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_AtEOSubXact_Namespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_AtEOSubXact_Namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@myTempNamespaceSubID = common dso_local global i64 0, align 8
@InvalidSubTransactionId = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i8* null, align 8
@myTempNamespace = common dso_local global i8* null, align 8
@myTempToastNamespace = common dso_local global i8* null, align 8
@baseSearchPathValid = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_5__* null, align 8
@overrideStack = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"leaked override search path\00", align 1
@activeSearchPath = common dso_local global i32 0, align 4
@activeCreationNamespace = common dso_local global i32 0, align 4
@activeTempCreationPending = common dso_local global i32 0, align 4
@baseSearchPath = common dso_local global i32 0, align 4
@baseCreationNamespace = common dso_local global i32 0, align 4
@baseTempCreationPending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOSubXact_Namespace(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @myTempNamespaceSubID, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* @myTempNamespaceSubID, align 8
  br label %23

16:                                               ; preds = %11
  %17 = load i64, i64* @InvalidSubTransactionId, align 8
  store i64 %17, i64* @myTempNamespaceSubID, align 8
  %18 = load i8*, i8** @InvalidOid, align 8
  store i8* %18, i8** @myTempNamespace, align 8
  %19 = load i8*, i8** @InvalidOid, align 8
  store i8* %19, i8** @myTempToastNamespace, align 8
  store i32 0, i32* @baseSearchPathValid, align 4
  %20 = load i8*, i8** @InvalidOid, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %16, %14
  br label %24

24:                                               ; preds = %23, %3
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i64, i64* @overrideStack, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load i64, i64* @overrideStack, align 8
  %30 = call i64 @linitial(i64 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 (...) @GetCurrentTransactionNestLevel()
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %53

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @WARNING, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* @overrideStack, align 8
  %46 = call i64 @list_delete_first(i64 %45)
  store i64 %46, i64* @overrideStack, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @list_free(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = call i32 @pfree(%struct.TYPE_4__* %51)
  br label %25

53:                                               ; preds = %37, %25
  %54 = load i64, i64* @overrideStack, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i64, i64* @overrideStack, align 8
  %58 = call i64 @linitial(i64 %57)
  %59 = inttoptr i64 %58 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %7, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @activeSearchPath, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* @activeCreationNamespace, align 4
  store i32 0, i32* @activeTempCreationPending, align 4
  br label %70

66:                                               ; preds = %53
  %67 = load i32, i32* @baseSearchPath, align 4
  store i32 %67, i32* @activeSearchPath, align 4
  %68 = load i32, i32* @baseCreationNamespace, align 4
  store i32 %68, i32* @activeCreationNamespace, align 4
  %69 = load i32, i32* @baseTempCreationPending, align 4
  store i32 %69, i32* @activeTempCreationPending, align 4
  br label %70

70:                                               ; preds = %66, %56
  ret void
}

declare dso_local i64 @linitial(i64) #1

declare dso_local i64 @GetCurrentTransactionNestLevel(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @list_delete_first(i64) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
