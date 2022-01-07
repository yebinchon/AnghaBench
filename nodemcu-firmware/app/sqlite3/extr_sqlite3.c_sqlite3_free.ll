; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_free.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 (i8*)* }
%struct.TYPE_6__ = type { i32 }

@MEMTYPE_HEAP = common dso_local global i64 0, align 8
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
  br label %37

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i64, i64* @MEMTYPE_HEAP, align 8
  %9 = call i32 @sqlite3MemdebugHasType(i8* %7, i64 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* @MEMTYPE_HEAP, align 8
  %13 = xor i64 %12, -1
  %14 = trunc i64 %13 to i32
  %15 = call i32 @sqlite3MemdebugNoType(i8* %11, i32 %14)
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %6
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 4
  %21 = call i32 @sqlite3_mutex_enter(i32 %20)
  %22 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @sqlite3MallocSize(i8* %23)
  %25 = call i32 @sqlite3StatusDown(i32 %22, i32 %24)
  %26 = load i32, i32* @SQLITE_STATUS_MALLOC_COUNT, align 4
  %27 = call i32 @sqlite3StatusDown(i32 %26, i32 1)
  %28 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 %28(i8* %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 4
  %32 = call i32 @sqlite3_mutex_leave(i32 %31)
  br label %37

33:                                               ; preds = %6
  %34 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 %34(i8* %35)
  br label %37

37:                                               ; preds = %5, %33, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3MemdebugHasType(i8*, i64) #1

declare dso_local i32 @sqlite3MemdebugNoType(i8*, i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3StatusDown(i32, i32) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
