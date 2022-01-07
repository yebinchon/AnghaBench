; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3LockAndPrepare.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3LockAndPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_SCHEMA = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32, i32*, i32**, i8**)* @sqlite3LockAndPrepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3LockAndPrepare(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %17 = load i32**, i32*** %14, align 8
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = call i32 @sqlite3SafetyCheckOk(%struct.TYPE_7__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %7
  %25 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %25, i32* %8, align 4
  br label %75

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sqlite3_mutex_enter(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_7__* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32**, i32*** %14, align 8
  %39 = load i8**, i8*** %15, align 8
  %40 = call i32 @sqlite3Prepare(%struct.TYPE_7__* %33, i8* %34, i32 %35, i32 %36, i32* %37, i32** %38, i8** %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @SQLITE_SCHEMA, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %26
  %45 = load i32**, i32*** %14, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @sqlite3_finalize(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32**, i32*** %14, align 8
  %54 = load i8**, i8*** %15, align 8
  %55 = call i32 @sqlite3Prepare(%struct.TYPE_7__* %48, i8* %49, i32 %50, i32 %51, i32* %52, i32** %53, i8** %54)
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %44, %26
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_7__* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sqlite3_mutex_leave(i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %56
  %67 = load i32**, i32*** %14, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br label %70

70:                                               ; preds = %66, %56
  %71 = phi i1 [ true, %56 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %70, %24
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @sqlite3SafetyCheckOk(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3Prepare(%struct.TYPE_7__*, i8*, i32, i32, i32*, i32**, i8**) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
