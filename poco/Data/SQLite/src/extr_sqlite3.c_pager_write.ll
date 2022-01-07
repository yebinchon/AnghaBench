; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pager_write.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pager_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@PAGER_WRITER_DBMOD = common dso_local global i64 0, align 8
@PGHDR_NEED_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"APPEND %d page %d needSync=%d\0A\00", align 1
@PGHDR_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @pager_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_write(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGER_WRITER_DBMOD, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %21, %15, %1
  %28 = phi i1 [ true, %15 ], [ true, %1 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = call i32 @assert_pager_state(%struct.TYPE_13__* %31)
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = call i32 @CHECK_PAGE(%struct.TYPE_12__* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %27
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = call i32 @pager_open_journal(%struct.TYPE_13__* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %181

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %27
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %67 = icmp sge i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = call i32 @assert_pager_state(%struct.TYPE_13__* %70)
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = call i32 @sqlite3PcacheMakeDirty(%struct.TYPE_12__* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @isOpen(i32 %82)
  %84 = icmp eq i32 %79, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %152

91:                                               ; preds = %62
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @sqlite3BitvecTestNotNull(i64 %94, i64 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %152

100:                                              ; preds = %91
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = call i64 @pagerUseWal(%struct.TYPE_13__* %101)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp sle i64 %108, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %100
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = call i32 @pagerAddPageToRollbackJournal(%struct.TYPE_12__* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %181

121:                                              ; preds = %113
  br label %151

122:                                              ; preds = %100
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PAGER_WRITER_DBMOD, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %122
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = call i32 @PAGERID(%struct.TYPE_13__* %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @PAGERTRACE(i8* %149)
  br label %151

151:                                              ; preds = %134, %121
  br label %152

152:                                              ; preds = %151, %91, %62
  %153 = load i32, i32* @PGHDR_WRITEABLE, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %152
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %164 = call i32 @subjournalPageIfRequired(%struct.TYPE_12__* %163)
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %162, %152
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %168, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %165
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 6
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %173, %165
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %119, %59
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_13__*) #1

declare dso_local i32 @CHECK_PAGE(%struct.TYPE_12__*) #1

declare dso_local i32 @pager_open_journal(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3PcacheMakeDirty(%struct.TYPE_12__*) #1

declare dso_local i32 @isOpen(i32) #1

declare dso_local i64 @sqlite3BitvecTestNotNull(i64, i64) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_13__*) #1

declare dso_local i32 @pagerAddPageToRollbackJournal(%struct.TYPE_12__*) #1

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_13__*) #1

declare dso_local i32 @subjournalPageIfRequired(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
