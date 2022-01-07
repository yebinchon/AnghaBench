; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_ptrmapPut.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_ptrmapPut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PTRMAP_UPDATE: %d->(%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64, i64, i32*)* @ptrmapPut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrmapPut(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %136

20:                                               ; preds = %5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3_mutex_held(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_6__* %27)
  %29 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_6__* %26, i32 %28)
  %30 = icmp eq i64 0, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %136

42:                                               ; preds = %20
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @PTRMAP_PAGENO(%struct.TYPE_6__* %43, i64 %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @sqlite3PagerGet(i32 %48, i64 %49, i32** %11, i32 0)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  br label %136

57:                                               ; preds = %42
  %58 = load i32*, i32** %11, align 8
  %59 = call i64 @sqlite3PagerGetExtra(i32* %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  br label %133

68:                                               ; preds = %57
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @PTRMAP_PTROFFSET(i64 %69, i64 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  br label %133

77:                                               ; preds = %68
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = sub nsw i32 %82, 5
  %84 = icmp sle i32 %78, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32*, i32** %11, align 8
  %88 = call i64 @sqlite3PagerGetData(i32* %87)
  %89 = inttoptr i64 %88 to i64*
  store i64* %89, i64** %12, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64*, i64** %12, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %90, %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %77
  %98 = load i64*, i64** %12, align 8
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = call i64 @get4byte(i64* %102)
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %132

106:                                              ; preds = %97, %77
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @TRACE(i8* %110)
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @sqlite3PagerWrite(i32* %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @SQLITE_OK, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %106
  %119 = load i64, i64* %8, align 8
  %120 = load i64*, i64** %12, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %119, i64* %123, align 8
  %124 = load i64*, i64** %12, align 8
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @put4byte(i64* %128, i64 %129)
  br label %131

131:                                              ; preds = %118, %106
  br label %132

132:                                              ; preds = %131, %97
  br label %133

133:                                              ; preds = %132, %74, %65
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @sqlite3PagerUnref(i32* %134)
  br label %136

136:                                              ; preds = %133, %54, %39, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PENDING_BYTE_PAGE(%struct.TYPE_6__*) #1

declare dso_local i64 @PTRMAP_PAGENO(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @sqlite3PagerGet(i32, i64, i32**, i32) #1

declare dso_local i64 @sqlite3PagerGetExtra(i32*) #1

declare dso_local i32 @PTRMAP_PTROFFSET(i64, i64) #1

declare dso_local i64 @sqlite3PagerGetData(i32*) #1

declare dso_local i64 @get4byte(i64*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @sqlite3PagerWrite(i32*) #1

declare dso_local i32 @put4byte(i64*, i64) #1

declare dso_local i32 @sqlite3PagerUnref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
