; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pager_open_journal.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pager_open_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_OFF = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_MEMORY = common dso_local global i64 0, align 8
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_DELETEONCLOSE = common dso_local global i32 0, align 4
@SQLITE_OPEN_TEMP_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @pager_open_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_open_journal(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 12
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i32 @assert_pager_state(%struct.TYPE_7__* %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @NEVER(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %2, align 4
  br label %156

36:                                               ; preds = %1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @pagerUseWal(%struct.TYPE_7__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %132, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PAGER_JOURNALMODE_OFF, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %132

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @sqlite3BitvecCreate(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %58, i32* %2, align 4
  br label %156

59:                                               ; preds = %46
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @isOpen(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %116, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PAGER_JOURNALMODE_MEMORY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sqlite3MemJournalOpen(i32 %74)
  br label %102

76:                                               ; preds = %65
  %77 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %78 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 10
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i32, i32* @SQLITE_OPEN_DELETEONCLOSE, align 4
  %86 = load i32, i32* @SQLITE_OPEN_TEMP_JOURNAL, align 4
  %87 = or i32 %85, %86
  br label %90

88:                                               ; preds = %76
  %89 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i32 [ %87, %84 ], [ %89, %88 ]
  %92 = or i32 %79, %91
  store i32 %92, i32* %6, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @sqlite3OsOpen(i32* %93, i32 %96, i32 %99, i32 %100, i32 0)
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %90, %71
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @isOpen(i32 %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi i1 [ true, %102 ], [ %111, %106 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  br label %116

116:                                              ; preds = %112, %59
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @SQLITE_OK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 7
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 5
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = call i32 @writeJournalHdr(%struct.TYPE_7__* %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %120, %116
  br label %132

132:                                              ; preds = %131, %40, %36
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @SQLITE_OK, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @sqlite3BitvecDestroy(i64 %139)
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  br label %154

143:                                              ; preds = %132
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %143, %136
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %57, %32
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_7__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @pagerUseWal(%struct.TYPE_7__*) #1

declare dso_local i64 @sqlite3BitvecCreate(i32) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3MemJournalOpen(i32) #1

declare dso_local i32 @sqlite3OsOpen(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @writeJournalHdr(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3BitvecDestroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
