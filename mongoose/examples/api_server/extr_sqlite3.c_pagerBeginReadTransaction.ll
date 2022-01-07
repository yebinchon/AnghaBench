; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pagerBeginReadTransaction.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pagerBeginReadTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }

@PAGER_OPEN = common dso_local global i64 0, align 8
@PAGER_READER = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @pagerBeginReadTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagerBeginReadTransaction(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @pagerUseWal(%struct.TYPE_6__* %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PAGER_OPEN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PAGER_READER, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sqlite3WalEndReadTransaction(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sqlite3WalBeginReadTransaction(i32 %29, i32* %4)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34, %19
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call i32 @pager_reset(%struct.TYPE_6__* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = call i64 @USEFETCH(%struct.TYPE_6__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sqlite3OsUnfetch(i32 %46, i32 0, i32 0)
  br label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pagerUseWal(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3WalEndReadTransaction(i32) #1

declare dso_local i32 @sqlite3WalBeginReadTransaction(i32, i32*) #1

declare dso_local i32 @pager_reset(%struct.TYPE_6__*) #1

declare dso_local i64 @USEFETCH(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3OsUnfetch(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
