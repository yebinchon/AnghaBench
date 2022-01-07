; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3LockAndPrepare.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3LockAndPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR_RETRY = common dso_local global i32 0, align 4
@SQLITE_SCHEMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32, i32*, i32**, i8**)* @sqlite3LockAndPrepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3LockAndPrepare(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32**, i32*** %14, align 8
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = call i32 @sqlite3SafetyCheckOk(%struct.TYPE_9__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %7
  %26 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %26, i32* %8, align 4
  br label %92

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3_mutex_enter(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_9__* %32)
  br label %34

34:                                               ; preds = %70, %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32**, i32*** %14, align 8
  %41 = load i8**, i8*** %15, align 8
  %42 = call i32 @sqlite3Prepare(%struct.TYPE_9__* %35, i8* %36, i32 %37, i32 %38, i32* %39, i32** %40, i8** %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %34
  %47 = load i32**, i32*** %14, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br label %50

50:                                               ; preds = %46, %34
  %51 = phi i1 [ true, %34 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @SQLITE_ERROR_RETRY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @SQLITE_SCHEMA, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = call i32 @sqlite3ResetOneSchema(%struct.TYPE_9__* %63, i32 -1)
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  %67 = icmp eq i32 %65, 0
  br label %68

68:                                               ; preds = %62, %58
  %69 = phi i1 [ false, %58 ], [ %67, %62 ]
  br label %70

70:                                               ; preds = %68, %54
  %71 = phi i1 [ true, %54 ], [ %69, %68 ]
  br i1 %71, label %34, label %72

72:                                               ; preds = %70
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_9__* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @sqlite3ApiExit(%struct.TYPE_9__* %75, i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %78, %81
  %83 = load i32, i32* %16, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sqlite3_mutex_leave(i32 %89)
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %72, %25
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @sqlite3SafetyCheckOk(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3Prepare(%struct.TYPE_9__*, i8*, i32, i32, i32*, i32**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ResetOneSchema(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
