; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_readDbPage.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_readDbPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i64 0, align 8
@MEMDB = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@sqlite3_pager_readdb_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PGIN %p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"FETCH %d page %d hash(%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @readDbPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readDbPage(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PAGER_READER, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @MEMDB, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %2
  %31 = phi i1 [ false, %2 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @isOpen(i32 %36)
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @sqlite3WalReadFrame(i32 %44, i32 %45, i32 %46, i64 %49)
  store i32 %50, i32* %7, align 4
  br label %73

51:                                               ; preds = %30
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @sqlite3OsRead(i32 %60, i64 %63, i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %51
  %71 = load i32, i32* @SQLITE_OK, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %51
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memset(i32 %82, i32 255, i32 4)
  br label %94

84:                                               ; preds = %76
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = getelementptr inbounds i32, i32* %88, i64 24
  store i32* %89, i32** %10, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @memcpy(i32* %91, i32* %92, i32 4)
  br label %94

94:                                               ; preds = %84, %79
  br label %95

95:                                               ; preds = %94, %73
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %101, i32* %7, align 4
  %102 = call i32 @CODEC1(%struct.TYPE_8__* %96, i64 %99, i32 %100, i32 3, i32 %101)
  %103 = load i32, i32* @sqlite3_pager_readdb_count, align 4
  %104 = call i32 @PAGER_INCR(i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @PAGER_INCR(i32 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @IOTRACE(i8* %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = call i32 @PAGERID(%struct.TYPE_8__* %114)
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = call i32 @pager_pagehash(%struct.TYPE_7__* %117)
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @PAGERTRACE(i8* %120)
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isOpen(i32) #1

declare dso_local i32 @sqlite3WalReadFrame(i32, i32, i32, i64) #1

declare dso_local i32 @sqlite3OsRead(i32, i64, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CODEC1(%struct.TYPE_8__*, i64, i32, i32, i32) #1

declare dso_local i32 @PAGER_INCR(i32) #1

declare dso_local i32 @IOTRACE(i8*) #1

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_8__*) #1

declare dso_local i32 @pager_pagehash(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
