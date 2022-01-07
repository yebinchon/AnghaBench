; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_unixClose.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_unixClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@NO_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @unixClose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixClose(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @SQLITE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @verifyDbFile(%struct.TYPE_6__* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @NO_LOCK, align 4
  %12 = call i32 @unixUnlock(i32* %10, i32 %11)
  %13 = call i32 (...) @unixEnterMutex()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br label %27

27:                                               ; preds = %20, %1
  %28 = phi i1 [ true, %1 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i64 @ALWAYS(%struct.TYPE_7__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = call i32 @setPendingFd(%struct.TYPE_6__* %44)
  br label %46

46:                                               ; preds = %43, %36, %27
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = call i32 @releaseInodeInfo(%struct.TYPE_6__* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @closeUnixFile(i32* %49)
  store i32 %50, i32* %3, align 4
  %51 = call i32 (...) @unixLeaveMutex()
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @verifyDbFile(%struct.TYPE_6__*) #1

declare dso_local i32 @unixUnlock(i32*, i32) #1

declare dso_local i32 @unixEnterMutex(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_7__*) #1

declare dso_local i32 @setPendingFd(%struct.TYPE_6__*) #1

declare dso_local i32 @releaseInodeInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @closeUnixFile(i32*) #1

declare dso_local i32 @unixLeaveMutex(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
