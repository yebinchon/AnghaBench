; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_hasHotJournal.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_hasHotJournal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_OPEN = common dso_local global i64 0, align 8
@SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@RESERVED_LOCK = common dso_local global i32 0, align 4
@SHARED_LOCK = common dso_local global i32 0, align 4
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @hasHotJournal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hasHotJournal(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @isOpen(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @isOpen(i32 %31)
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PAGER_OPEN, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sqlite3OsDeviceCharacteristics(i32 %46)
  %48 = load i32, i32* @SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %43, %2
  %52 = phi i1 [ true, %2 ], [ %50, %43 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %4, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %64 = call i32 @sqlite3OsAccess(i32* %59, i32 %62, i32 %63, i32* %7)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %51
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %172

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %172

72:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sqlite3OsCheckReservedLock(i32 %75, i32* %9)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %171

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %171, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = call i32 @pagerPagecount(%struct.TYPE_6__* %84, i64* %10)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %170

89:                                               ; preds = %83
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = call i32 (...) @sqlite3BeginBenignMalloc()
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = load i32, i32* @RESERVED_LOCK, align 4
  %96 = call i32 @pagerLockDb(%struct.TYPE_6__* %94, i32 %95)
  %97 = load i32, i32* @SQLITE_OK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %92
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @sqlite3OsDelete(i32* %100, i32 %103, i32 0)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %99
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = load i32, i32* @SHARED_LOCK, align 4
  %112 = call i32 @pagerUnlockDb(%struct.TYPE_6__* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %99
  br label %114

114:                                              ; preds = %113, %92
  %115 = call i32 (...) @sqlite3EndBenignMalloc()
  br label %169

116:                                              ; preds = %89
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %121 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %11, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @sqlite3OsOpen(i32* %123, i32 %126, i32 %129, i32 %130, i32* %11)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %119, %116
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @SQLITE_OK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %160

136:                                              ; preds = %132
  store i64 0, i64* %12, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = bitcast i64* %12 to i8*
  %141 = call i32 @sqlite3OsRead(i32 %139, i8* %140, i32 1, i32 0)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i32, i32* @SQLITE_OK, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %136
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @sqlite3OsClose(i32 %153)
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i64, i64* %12, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i32
  %159 = load i32*, i32** %4, align 8
  store i32 %158, i32* %159, align 4
  br label %168

160:                                              ; preds = %132
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @SQLITE_CANTOPEN, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32*, i32** %4, align 8
  store i32 1, i32* %165, align 4
  %166 = load i32, i32* @SQLITE_OK, align 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %164, %160
  br label %168

168:                                              ; preds = %167, %155
  br label %169

169:                                              ; preds = %168, %114
  br label %170

170:                                              ; preds = %169, %83
  br label %171

171:                                              ; preds = %170, %80, %72
  br label %172

172:                                              ; preds = %171, %69, %65
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @isOpen(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3OsDeviceCharacteristics(i32) #1

declare dso_local i32 @sqlite3OsAccess(i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3OsCheckReservedLock(i32, i32*) #1

declare dso_local i32 @pagerPagecount(%struct.TYPE_6__*, i64*) #1

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local i32 @pagerLockDb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3OsDelete(i32*, i32, i32) #1

declare dso_local i32 @pagerUnlockDb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @sqlite3OsOpen(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @sqlite3OsRead(i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3OsClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
