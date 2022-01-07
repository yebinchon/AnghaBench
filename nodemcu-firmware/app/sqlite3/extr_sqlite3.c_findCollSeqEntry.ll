; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_findCollSeqEntry.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_findCollSeqEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_UTF16LE = common dso_local global i32 0, align 4
@SQLITE_UTF16BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i8*, i32)* @findCollSeqEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @findCollSeqEntry(%struct.TYPE_13__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_14__* @sqlite3HashFind(i32* %11, i8* %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = icmp eq %struct.TYPE_14__* null, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %104

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @sqlite3Strlen30(i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 48, %24
  %26 = add i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call %struct.TYPE_14__* @sqlite3DbMallocZero(%struct.TYPE_13__* %22, i32 %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %7, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %103

31:                                               ; preds = %19
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 3
  %34 = bitcast %struct.TYPE_14__* %33 to i8*
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* @SQLITE_UTF8, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i64 3
  %44 = bitcast %struct.TYPE_14__* %43 to i8*
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @SQLITE_UTF16LE, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 3
  %54 = bitcast %struct.TYPE_14__* %53 to i8*
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i64 2
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @SQLITE_UTF16BE, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @memcpy(i8* %65, i8* %66, i32 %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = call %struct.TYPE_14__* @sqlite3HashInsert(i32* %77, i8* %81, %struct.TYPE_14__* %82)
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %9, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = icmp eq %struct.TYPE_14__* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %31
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = icmp eq %struct.TYPE_14__* %87, %88
  br label %90

90:                                               ; preds = %86, %31
  %91 = phi i1 [ true, %31 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = icmp ne %struct.TYPE_14__* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = call i32 @sqlite3OomFault(%struct.TYPE_13__* %97)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = call i32 @sqlite3DbFree(%struct.TYPE_13__* %99, %struct.TYPE_14__* %100)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %102

102:                                              ; preds = %96, %90
  br label %103

103:                                              ; preds = %102, %19
  br label %104

104:                                              ; preds = %103, %16, %3
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  ret %struct.TYPE_14__* %105
}

declare dso_local %struct.TYPE_14__* @sqlite3HashFind(i32*, i8*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local %struct.TYPE_14__* @sqlite3DbMallocZero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @sqlite3HashInsert(i32*, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
