; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_readDbPage.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_readDbPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i64 0, align 8
@MEMDB = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@sqlite3_pager_readdb_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PGIN %p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"FETCH %d page %d hash(%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @readDbPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readDbPage(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PAGER_READER, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @MEMDB, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi i1 [ false, %1 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @isOpen(i32 %28)
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i64 @pagerUseWal(%struct.TYPE_9__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %22
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sqlite3WalFindFrame(i32 %37, i32 %40, i64* %6)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %147

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @sqlite3WalReadFrame(i32 %53, i64 %54, i64 %57, i64 %60)
  store i32 %61, i32* %5, align 4
  br label %89

62:                                               ; preds = %47
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = mul nsw i32 %66, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @sqlite3OsRead(i32 %74, i64 %77, i64 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %62
  %87 = load i32, i32* @SQLITE_OK, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %62
  br label %89

89:                                               ; preds = %88, %50
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memset(i32 %100, i32 255, i32 4)
  br label %112

102:                                              ; preds = %94
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = getelementptr inbounds i32, i32* %106, i64 24
  store i32* %107, i32** %8, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @memcpy(i32* %109, i32* %110, i32 4)
  br label %112

112:                                              ; preds = %102, %97
  br label %113

113:                                              ; preds = %112, %89
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %121, i32* %5, align 4
  %122 = call i32 @CODEC1(%struct.TYPE_9__* %114, i64 %117, i32 %120, i32 3, i32 %121)
  %123 = load i32, i32* @sqlite3_pager_readdb_count, align 4
  %124 = call i32 @PAGER_INCR(i32 %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @PAGER_INCR(i32 %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @IOTRACE(i8* %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = call i32 @PAGERID(%struct.TYPE_9__* %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = call i32 @pager_pagehash(%struct.TYPE_8__* %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @PAGERTRACE(i8* %144)
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %113, %44
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isOpen(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3WalFindFrame(i32, i32, i64*) #1

declare dso_local i32 @sqlite3WalReadFrame(i32, i64, i64, i64) #1

declare dso_local i32 @sqlite3OsRead(i32, i64, i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CODEC1(%struct.TYPE_9__*, i64, i32, i32, i32) #1

declare dso_local i32 @PAGER_INCR(i32) #1

declare dso_local i32 @IOTRACE(i8*) #1

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_9__*) #1

declare dso_local i32 @pager_pagehash(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
