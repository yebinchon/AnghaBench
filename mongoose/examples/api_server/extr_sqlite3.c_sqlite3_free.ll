; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_free.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 (i8*)* }
%struct.TYPE_6__ = type { i32 }

@MEMTYPE_DB = common dso_local global i32 0, align 4
@MEMTYPE_HEAP = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@mem0 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4
@SQLITE_STATUS_MALLOC_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %36

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @MEMTYPE_DB, align 4
  %9 = call i32 @sqlite3MemdebugNoType(i8* %7, i32 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @MEMTYPE_HEAP, align 4
  %13 = call i32 @sqlite3MemdebugHasType(i8* %11, i32 %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 1), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %6
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 4
  %19 = call i32 @sqlite3_mutex_enter(i32 %18)
  %20 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @sqlite3MallocSize(i8* %21)
  %23 = sub nsw i32 0, %22
  %24 = call i32 @sqlite3StatusAdd(i32 %20, i32 %23)
  %25 = load i32, i32* @SQLITE_STATUS_MALLOC_COUNT, align 4
  %26 = call i32 @sqlite3StatusAdd(i32 %25, i32 -1)
  %27 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 %27(i8* %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 4
  %31 = call i32 @sqlite3_mutex_leave(i32 %30)
  br label %36

32:                                               ; preds = %6
  %33 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 %33(i8* %34)
  br label %36

36:                                               ; preds = %5, %32, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3MemdebugNoType(i8*, i32) #1

declare dso_local i32 @sqlite3MemdebugHasType(i8*, i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3StatusAdd(i32, i32) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
