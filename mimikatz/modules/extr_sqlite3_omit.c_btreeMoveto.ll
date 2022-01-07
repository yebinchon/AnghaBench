; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_btreeMoveto.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_btreeMoveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }

@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i64, i32, i32*)* @btreeMoveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeMoveto(%struct.TYPE_14__* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %5
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %14, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %29 = call %struct.TYPE_12__* @sqlite3VdbeAllocUnpackedRecord(%struct.TYPE_13__* %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %13, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %31 = icmp eq %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %33, i32* %6, align 4
  br label %77

34:                                               ; preds = %17
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = call i32 @sqlite3VdbeRecordUnpack(%struct.TYPE_13__* %35, i32 %37, i8* %38, %struct.TYPE_12__* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %34
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45, %34
  %54 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %54, i32* %12, align 4
  br label %64

55:                                               ; preds = %45
  br label %57

56:                                               ; preds = %5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  br label %57

57:                                               ; preds = %56, %55
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @sqlite3BtreeMovetoUnpacked(%struct.TYPE_14__* %58, %struct.TYPE_12__* %59, i64 %60, i32 %61, i32* %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %57, %53
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %66 = icmp ne %struct.TYPE_12__* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %74 = call i32 @sqlite3DbFree(i32 %72, %struct.TYPE_12__* %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %32
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @sqlite3VdbeAllocUnpackedRecord(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3VdbeRecordUnpack(%struct.TYPE_13__*, i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3BtreeMovetoUnpacked(%struct.TYPE_14__*, %struct.TYPE_12__*, i64, i32, i32*) #1

declare dso_local i32 @sqlite3DbFree(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
