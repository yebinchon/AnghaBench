; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_disconnectAllVtab.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_disconnectAllVtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @disconnectAllVtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnectAllVtab(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_12__* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %58, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %16
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = call i32* @sqliteHashFirst(i32* %36)
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %53, %34
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @sqliteHashData(i32* %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @IsVirtual(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @sqlite3VtabDisconnect(%struct.TYPE_12__* %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** %4, align 8
  %55 = call i32* @sqliteHashNext(i32* %54)
  store i32* %55, i32** %4, align 8
  br label %38

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56, %16
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %10

61:                                               ; preds = %10
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = call i32* @sqliteHashFirst(i32* %63)
  store i32* %64, i32** %4, align 8
  br label %65

65:                                               ; preds = %83, %61
  %66 = load i32*, i32** %4, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @sqliteHashData(i32* %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %7, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @sqlite3VtabDisconnect(%struct.TYPE_12__* %77, i32* %80)
  br label %82

82:                                               ; preds = %76, %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %4, align 8
  %85 = call i32* @sqliteHashNext(i32* %84)
  store i32* %85, i32** %4, align 8
  br label %65

86:                                               ; preds = %65
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = call i32 @sqlite3VtabUnlockList(%struct.TYPE_12__* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_12__* %89)
  ret void
}

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_12__*) #1

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local i64 @sqliteHashData(i32*) #1

declare dso_local i64 @IsVirtual(i32*) #1

declare dso_local i32 @sqlite3VtabDisconnect(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @sqlite3VtabUnlockList(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
