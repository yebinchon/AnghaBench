; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_mutex_alloc.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_mutex_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* (i32)* }

@SQLITE_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite3_mutex_alloc(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SQLITE_MUTEX_RECURSIVE, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i64 (...) @sqlite3_initialize()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32* null, i32** %2, align 8
  br label %25

11:                                               ; preds = %7, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SQLITE_MUTEX_RECURSIVE, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i64 (...) @sqlite3MutexInit()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %25

19:                                               ; preds = %15, %11
  %20 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %21 = call i32 @assert(i32* (i32)* %20)
  %22 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32* %22(i32 %23)
  store i32* %24, i32** %2, align 8
  br label %25

25:                                               ; preds = %19, %18, %10
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i64 @sqlite3_initialize(...) #1

declare dso_local i64 @sqlite3MutexInit(...) #1

declare dso_local i32 @assert(i32* (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
