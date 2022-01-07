; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pcache1Free.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pcache1Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@pcache1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SQLITE_STATUS_PAGECACHE_USED = common dso_local global i32 0, align 4
@MEMTYPE_PCACHE = common dso_local global i32 0, align 4
@MEMTYPE_HEAP = common dso_local global i32 0, align 4
@SQLITE_STATUS_PAGECACHE_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pcache1Free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcache1Free(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 0), align 8
  %12 = icmp uge i8* %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 1), align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 6), align 8
  %19 = call i32 @sqlite3_mutex_enter(i32 %18)
  %20 = load i32, i32* @SQLITE_STATUS_PAGECACHE_USED, align 4
  %21 = call i32 @sqlite3StatusAdd(i32 %20, i32 -1)
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 7), align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 7), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 2), align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 2), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 2), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 4), align 8
  %32 = icmp slt i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 3), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 2), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 5), align 8
  %36 = icmp sle i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 6), align 8
  %40 = call i32 @sqlite3_mutex_leave(i32 %39)
  br label %61

41:                                               ; preds = %13, %9
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @MEMTYPE_PCACHE, align 4
  %44 = call i32 @sqlite3MemdebugHasType(i8* %42, i32 %43)
  %45 = call i32 @assert(i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* @MEMTYPE_HEAP, align 4
  %48 = call i32 @sqlite3MemdebugSetType(i8* %46, i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @sqlite3MallocSize(i8* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 6), align 8
  %52 = call i32 @sqlite3_mutex_enter(i32 %51)
  %53 = load i32, i32* @SQLITE_STATUS_PAGECACHE_OVERFLOW, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @sqlite3StatusAdd(i32 %53, i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 6), align 8
  %58 = call i32 @sqlite3_mutex_leave(i32 %57)
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @sqlite3_free(i8* %59)
  br label %61

61:                                               ; preds = %41, %17
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %8
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3StatusAdd(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @sqlite3MemdebugHasType(i8*, i32) #1

declare dso_local i32 @sqlite3MemdebugSetType(i8*, i32) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
