; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_AtEOXact_Namespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_AtEOXact_Namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@myTempNamespaceSubID = common dso_local global i64 0, align 8
@InvalidSubTransactionId = common dso_local global i64 0, align 8
@RemoveTempRelationsCallback = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@myTempNamespace = common dso_local global i8* null, align 8
@myTempToastNamespace = common dso_local global i8* null, align 8
@baseSearchPathValid = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_5__* null, align 8
@overrideStack = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"leaked override search path\00", align 1
@baseSearchPath = common dso_local global i32 0, align 4
@activeSearchPath = common dso_local global i32 0, align 4
@baseCreationNamespace = common dso_local global i32 0, align 4
@activeCreationNamespace = common dso_local global i32 0, align 4
@baseTempCreationPending = common dso_local global i32 0, align 4
@activeTempCreationPending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_Namespace(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @myTempNamespaceSubID, align 8
  %7 = load i64, i64* @InvalidSubTransactionId, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @RemoveTempRelationsCallback, align 4
  %17 = call i32 @before_shmem_exit(i32 %16, i32 0)
  br label %24

18:                                               ; preds = %12
  %19 = load i8*, i8** @InvalidOid, align 8
  store i8* %19, i8** @myTempNamespace, align 8
  %20 = load i8*, i8** @InvalidOid, align 8
  store i8* %20, i8** @myTempToastNamespace, align 8
  store i32 0, i32* @baseSearchPathValid, align 4
  %21 = load i8*, i8** @InvalidOid, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i64, i64* @InvalidSubTransactionId, align 8
  store i64 %25, i64* @myTempNamespaceSubID, align 8
  br label %26

26:                                               ; preds = %24, %9, %2
  %27 = load i64, i64* @overrideStack, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @WARNING, align 4
  %34 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %39, %35
  %37 = load i64, i64* @overrideStack, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i64, i64* @overrideStack, align 8
  %41 = call i64 @linitial(i64 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %5, align 8
  %43 = load i64, i64* @overrideStack, align 8
  %44 = call i64 @list_delete_first(i64 %43)
  store i64 %44, i64* @overrideStack, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @list_free(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = call i32 @pfree(%struct.TYPE_4__* %49)
  br label %36

51:                                               ; preds = %36
  %52 = load i32, i32* @baseSearchPath, align 4
  store i32 %52, i32* @activeSearchPath, align 4
  %53 = load i32, i32* @baseCreationNamespace, align 4
  store i32 %53, i32* @activeCreationNamespace, align 4
  %54 = load i32, i32* @baseTempCreationPending, align 4
  store i32 %54, i32* @activeTempCreationPending, align 4
  br label %55

55:                                               ; preds = %51, %26
  ret void
}

declare dso_local i32 @before_shmem_exit(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @linitial(i64) #1

declare dso_local i64 @list_delete_first(i64) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
