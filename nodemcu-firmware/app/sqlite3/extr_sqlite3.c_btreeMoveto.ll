; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_btreeMoveto.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_btreeMoveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64, i32, i32*)* @btreeMoveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeMoveto(%struct.TYPE_12__* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %5
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = call %struct.TYPE_11__* @sqlite3VdbeAllocUnpackedRecord(%struct.TYPE_13__* %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %13, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %31, i32* %6, align 4
  br label %69

32:                                               ; preds = %16
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %40 = call i32 @sqlite3VdbeRecordUnpack(%struct.TYPE_13__* %35, i32 %37, i8* %38, %struct.TYPE_11__* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %46, i32* %12, align 4
  br label %56

47:                                               ; preds = %32
  br label %49

48:                                               ; preds = %5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @sqlite3BtreeMovetoUnpacked(%struct.TYPE_12__* %50, %struct.TYPE_11__* %51, i64 %52, i32 %53, i32* %54)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %49, %45
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = call i32 @sqlite3DbFree(i32 %64, %struct.TYPE_11__* %65)
  br label %67

67:                                               ; preds = %59, %56
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %30
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @sqlite3VdbeAllocUnpackedRecord(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3VdbeRecordUnpack(%struct.TYPE_13__*, i32, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3BtreeMovetoUnpacked(%struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32, i32*) #1

declare dso_local i32 @sqlite3DbFree(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
