; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_PopOverrideSearchPath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_PopOverrideSearchPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@overrideStack = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bogus PopOverrideSearchPath call\00", align 1
@activeSearchPath = common dso_local global i32 0, align 4
@activeCreationNamespace = common dso_local global i32 0, align 4
@activeTempCreationPending = common dso_local global i32 0, align 4
@baseSearchPath = common dso_local global i32 0, align 4
@baseCreationNamespace = common dso_local global i32 0, align 4
@baseTempCreationPending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PopOverrideSearchPath() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i64, i64* @overrideStack, align 8
  %3 = load i64, i64* @NIL, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @ERROR, align 4
  %7 = call i32 @elog(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @overrideStack, align 8
  %10 = call i64 @linitial(i64 %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %1, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 (...) @GetCurrentTransactionNestLevel()
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %8
  %21 = load i64, i64* @overrideStack, align 8
  %22 = call i64 @list_delete_first(i64 %21)
  store i64 %22, i64* @overrideStack, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @list_free(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = call i32 @pfree(%struct.TYPE_3__* %27)
  %29 = load i64, i64* @overrideStack, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load i64, i64* @overrideStack, align 8
  %33 = call i64 @linitial(i64 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %1, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @activeSearchPath, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* @activeCreationNamespace, align 4
  store i32 0, i32* @activeTempCreationPending, align 4
  br label %45

41:                                               ; preds = %20
  %42 = load i32, i32* @baseSearchPath, align 4
  store i32 %42, i32* @activeSearchPath, align 4
  %43 = load i32, i32* @baseCreationNamespace, align 4
  store i32 %43, i32* @activeCreationNamespace, align 4
  %44 = load i32, i32* @baseTempCreationPending, align 4
  store i32 %44, i32* @activeTempCreationPending, align 4
  br label %45

45:                                               ; preds = %41, %31
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @linitial(i64) #1

declare dso_local i64 @GetCurrentTransactionNestLevel(...) #1

declare dso_local i64 @list_delete_first(i64) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
