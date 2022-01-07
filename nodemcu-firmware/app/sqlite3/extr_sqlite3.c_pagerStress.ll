; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pagerStress.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pagerStress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PGHDR_DIRTY = common dso_local global i32 0, align 4
@SPILLFLAG_ROLLBACK = common dso_local global i32 0, align 4
@SPILLFLAG_OFF = common dso_local global i32 0, align 4
@SPILLFLAG_NOSYNC = common dso_local global i32 0, align 4
@PGHDR_NEED_SYNC = common dso_local global i32 0, align 4
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"STRESS %d page %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_14__*)* @pagerStress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagerStress(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %6, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = icmp eq %struct.TYPE_15__* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PGHDR_DIRTY, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @NEVER(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @SQLITE_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %141

31:                                               ; preds = %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SPILLFLAG_ROLLBACK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @testcase(i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SPILLFLAG_OFF, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @testcase(i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SPILLFLAG_NOSYNC, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @testcase(i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %31
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SPILLFLAG_ROLLBACK, align 4
  %59 = load i32, i32* @SPILLFLAG_OFF, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63, %54
  %71 = load i32, i32* @SQLITE_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %141

72:                                               ; preds = %63, %31
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = call i64 @pagerUseWal(%struct.TYPE_15__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = call i32 @subjournalPageIfRequired(%struct.TYPE_14__* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = call i32 @pagerWalFrames(%struct.TYPE_15__* %85, %struct.TYPE_14__* %86, i32 0, i32 0)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %78
  br label %122

89:                                               ; preds = %72
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96, %89
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = call i32 @syncJournal(%struct.TYPE_15__* %103, i32 1)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SQLITE_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = call i32 @pager_write_pagelist(%struct.TYPE_15__* %118, %struct.TYPE_14__* %119)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %109, %105
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @SQLITE_OK, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = call i32 @PAGERID(%struct.TYPE_15__* %127)
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @PAGERTRACE(i8* %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = call i32 @sqlite3PcacheMakeClean(%struct.TYPE_14__* %135)
  br label %137

137:                                              ; preds = %126, %122
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @pager_error(%struct.TYPE_15__* %138, i32 %139)
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %70, %29
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_15__*) #1

declare dso_local i32 @subjournalPageIfRequired(%struct.TYPE_14__*) #1

declare dso_local i32 @pagerWalFrames(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @syncJournal(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pager_write_pagelist(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3PcacheMakeClean(%struct.TYPE_14__*) #1

declare dso_local i32 @pager_error(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
