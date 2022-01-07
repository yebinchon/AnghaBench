; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_rpcserver.c_ScmCreateManagerHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_rpcserver.c_ScmCreateManagerHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SERVICES_ACTIVE_DATABASEW = common dso_local global i32* null, align 8
@SERVICES_FAILED_DATABASEW = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Database %S, does not exist\0A\00", align 1
@ERROR_DATABASE_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid Database name %S.\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@MANAGER_HANDLE = common dso_local global i32 0, align 4
@DatabaseName = common dso_local global i32* null, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@MANAGER_TAG = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*)* @ScmCreateManagerHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ScmCreateManagerHandle(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32*, i32** @SERVICES_ACTIVE_DATABASEW, align 8
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** @SERVICES_FAILED_DATABASEW, align 8
  %14 = call i64 @_wcsicmp(i32* %12, i32* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %17)
  %19 = load i32, i32* @ERROR_DATABASE_DOES_NOT_EXIST, align 4
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %11
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** @SERVICES_ACTIVE_DATABASEW, align 8
  %23 = call i64 @_wcsicmp(i32* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = load i32, i32* @ERROR_INVALID_NAME, align 4
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %33 = load i32, i32* @MANAGER_HANDLE, align 4
  %34 = load i32*, i32** @DatabaseName, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @wcslen(i32* %35)
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FIELD_OFFSET(i32 %33, i32 %40)
  %42 = call %struct.TYPE_5__* @HeapAlloc(i32 %31, i32 %32, i32 %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %6, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = icmp eq %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %30
  %48 = load i32, i32* @MANAGER_TAG, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @wcscpy(i32 %54, i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = ptrtoint %struct.TYPE_5__* %57 to i64
  %59 = load i64*, i64** %5, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %47, %45, %25, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @_wcsicmp(i32*, i32*) #1

declare dso_local i32 @DPRINT(i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @wcscpy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
