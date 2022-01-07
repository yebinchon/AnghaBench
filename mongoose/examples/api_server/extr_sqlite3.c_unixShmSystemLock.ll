; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_unixShmSystemLock.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_unixShmSystemLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }
%struct.flock = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@SQLITE_SHM_NLOCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32)* @unixShmSystemLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixShmSystemLock(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.flock, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @sqlite3_mutex_held(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br label %22

22:                                               ; preds = %17, %4
  %23 = phi i1 [ true, %4 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @F_RDLCK, align 4
  %31 = icmp ne i32 %29, %30
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i1 [ true, %22 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SQLITE_SHM_NLOCK, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ false, %32 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %42
  %51 = call i32 @memset(%struct.flock* %9, i32 0, i32 16)
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @SEEK_SET, align 4
  %55 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @F_SETLK, align 4
  %64 = call i32 @osFcntl(i64 %62, i32 %63, %struct.flock* %9)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* @SQLITE_OK, align 4
  br label %71

69:                                               ; preds = %50
  %70 = load i32, i32* @SQLITE_BUSY, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %71, %42
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @memset(%struct.flock*, i32, i32) #1

declare dso_local i32 @osFcntl(i64, i32, %struct.flock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
