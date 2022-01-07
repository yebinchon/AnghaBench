; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmCreateNewServiceRecord.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmCreateNewServiceRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Service: '%S'\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@SERVICE = common dso_local global i32 0, align 4
@szServiceName = common dso_local global i32* null, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@ResumeCount = common dso_local global i32 0, align 4
@ServiceListHead = common dso_local global i32 0, align 4
@SERVICE_STOPPED = common dso_local global i32 0, align 4
@SERVICE_DISABLED = common dso_local global i64 0, align 8
@ERROR_SERVICE_DISABLED = common dso_local global i32 0, align 4
@ERROR_SERVICE_NEVER_STARTED = common dso_local global i32 0, align 4
@SERVICE_DRIVER = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmCreateNewServiceRecord(i32 %0, %struct.TYPE_6__** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %15 = load i32, i32* @SERVICE, align 4
  %16 = load i32*, i32** @szServiceName, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @wcslen(i32 %17)
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @FIELD_OFFSET(i32 %15, i32 %22)
  %24 = call %struct.TYPE_6__* @HeapAlloc(i32 %13, i32 %14, i32 %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %28, i64* %5, align 8
  br label %97

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @wcscpy(i32 %34, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @ResumeCount, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @ResumeCount, align 4
  %52 = sext i32 %50 to i64
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = call i32 @InsertTailList(i32* @ServiceListHead, i32* %56)
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  store i64 %58, i64* %61, align 8
  %62 = load i32, i32* @SERVICE_STOPPED, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @SERVICE_DISABLED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %29
  %73 = load i32, i32* @ERROR_SERVICE_DISABLED, align 4
  br label %76

74:                                               ; preds = %29
  %75 = load i32, i32* @ERROR_SERVICE_NEVER_STARTED, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @SERVICE_DRIVER, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 0, i32 2000
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %76, %27
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @wcscpy(i32, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
