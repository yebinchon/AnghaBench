; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_readDbPage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_readDbPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i64 0, align 8
@MEMDB = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@sqlite3_pager_readdb_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PGIN %p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"FETCH %d page %d hash(%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @readDbPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readDbPage(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGER_READER, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @MEMDB, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %2
  %32 = phi i1 [ false, %2 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @isOpen(i32 %37)
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @isOpen(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @NEVER(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %31
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i64 %56, i32 0, i32 %59)
  %61 = load i32, i32* @SQLITE_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %147

62:                                               ; preds = %31
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @sqlite3WalReadFrame(i32 %68, i32 %69, i32 %70, i64 %73)
  store i32 %74, i32* %8, align 4
  br label %97

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  store i32 %81, i32* %10, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @sqlite3OsRead(i32 %84, i64 %87, i32 %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %75
  %95 = load i32, i32* @SQLITE_OK, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %75
  br label %97

97:                                               ; preds = %96, %65
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @memset(i64 %106, i32 255, i32 8)
  br label %118

108:                                              ; preds = %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = getelementptr inbounds i32, i32* %112, i64 24
  store i32* %113, i32** %11, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @memcpy(i64* %115, i32* %116, i32 8)
  br label %118

118:                                              ; preds = %108, %103
  br label %119

119:                                              ; preds = %118, %97
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %125, i32* %8, align 4
  %126 = call i32 @CODEC1(%struct.TYPE_8__* %120, i64 %123, i32 %124, i32 3, i32 %125)
  %127 = load i32, i32* @sqlite3_pager_readdb_count, align 4
  %128 = call i32 @PAGER_INCR(i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @PAGER_INCR(i32 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @IOTRACE(i8* %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = call i32 @PAGERID(%struct.TYPE_8__* %138)
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = call i32 @pager_pagehash(%struct.TYPE_7__* %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @PAGERTRACE(i8* %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %119, %49
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isOpen(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @sqlite3WalReadFrame(i32, i32, i32, i64) #1

declare dso_local i32 @sqlite3OsRead(i32, i64, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

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
