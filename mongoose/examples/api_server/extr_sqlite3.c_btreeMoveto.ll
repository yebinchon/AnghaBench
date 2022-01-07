; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeMoveto.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeMoveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i32, i32*)* @btreeMoveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeMoveto(%struct.TYPE_6__* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [150 x i8], align 16
  %15 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %5
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds [150 x i8], [150 x i8]* %14, i64 0, i64 0
  %30 = call i32* @sqlite3VdbeAllocUnpackedRecord(%struct.TYPE_7__* %28, i8* %29, i32 150, i8** %15)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %34, i32* %6, align 4
  br label %64

35:                                               ; preds = %18
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i8*, i8** %8, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @sqlite3VdbeRecordUnpack(%struct.TYPE_7__* %38, i32 %40, i8* %41, i32* %42)
  br label %45

44:                                               ; preds = %5
  store i32* null, i32** %13, align 8
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @sqlite3BtreeMovetoUnpacked(%struct.TYPE_6__* %46, i32* %47, i64 %48, i32 %49, i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @sqlite3DbFree(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %54, %45
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %33
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3VdbeAllocUnpackedRecord(%struct.TYPE_7__*, i8*, i32, i8**) #1

declare dso_local i32 @sqlite3VdbeRecordUnpack(%struct.TYPE_7__*, i32, i8*, i32*) #1

declare dso_local i32 @sqlite3BtreeMovetoUnpacked(%struct.TYPE_6__*, i32*, i64, i32, i32*) #1

declare dso_local i32 @sqlite3DbFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
