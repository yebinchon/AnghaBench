; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_walRestartLog.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_walRestartLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, i64* }
%struct.TYPE_13__ = type { i64, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@WAL_NREADER = common dso_local global i32 0, align 4
@READMARK_NOT_USED = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@WAL_RETRY = common dso_local global i32 0, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@SQLITE_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @walRestartLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walRestartLog(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %150

16:                                               ; preds = %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = call %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__* %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load volatile i64, i64* %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load volatile i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %112

33:                                               ; preds = %16
  %34 = call i32 @sqlite3_randomness(i32 4, i64* %7)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = call i32 @WAL_READ_LOCK(i32 1)
  %37 = load i32, i32* @WAL_NREADER, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @walLockExclusive(%struct.TYPE_14__* %35, i32 %36, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %104

43:                                               ; preds = %33
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  store i64* %47, i64** %9, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = bitcast i64* %56 to i32*
  %58 = load i64*, i64** %9, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = bitcast i64* %59 to i32*
  %61 = call i64 @sqlite3Get4byte(i32* %60)
  %62 = add nsw i64 1, %61
  %63 = call i32 @sqlite3Put4byte(i32* %57, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = call i32 @walIndexWriteHdr(%struct.TYPE_14__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store volatile i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load volatile i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 0, i32* %74, align 4
  store i32 2, i32* %8, align 4
  br label %75

75:                                               ; preds = %87, %43
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @WAL_NREADER, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* @READMARK_NOT_USED, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load volatile i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load volatile i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = call i32 @WAL_READ_LOCK(i32 1)
  %101 = load i32, i32* @WAL_NREADER, align 4
  %102 = sub nsw i32 %101, 1
  %103 = call i32 @walUnlockExclusive(%struct.TYPE_14__* %99, i32 %100, i32 %102)
  br label %111

104:                                              ; preds = %33
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @SQLITE_BUSY, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %152

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %90
  br label %112

112:                                              ; preds = %111, %16
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = call i32 @WAL_READ_LOCK(i32 0)
  %115 = call i32 @walUnlockShared(%struct.TYPE_14__* %113, i32 %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  store i32 -1, i32* %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %123, %112
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = call i32 @walTryBeginRead(%struct.TYPE_14__* %119, i32* %10, i32 1, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @WAL_RETRY, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %118, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %4, align 4
  %129 = and i32 %128, 255
  %130 = load i32, i32* @SQLITE_BUSY, align 4
  %131 = icmp ne i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = and i32 %134, 255
  %136 = load i32, i32* @SQLITE_IOERR, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @testcase(i32 %138)
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @SQLITE_PROTOCOL, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @testcase(i32 %143)
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @SQLITE_OK, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @testcase(i32 %148)
  br label %150

150:                                              ; preds = %127, %1
  %151 = load i32, i32* %4, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %108
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i64*) #1

declare dso_local i32 @walLockExclusive(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @WAL_READ_LOCK(i32) #1

declare dso_local i32 @sqlite3Put4byte(i32*, i64) #1

declare dso_local i64 @sqlite3Get4byte(i32*) #1

declare dso_local i32 @walIndexWriteHdr(%struct.TYPE_14__*) #1

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @walUnlockShared(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @walTryBeginRead(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
