; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresExplainForeignScan.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresExplainForeignScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32* }

@FdwScanPrivateRelations = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"Relations\00", align 1
@FdwScanPrivateSelectSql = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Remote SQL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_13__*)* @postgresExplainForeignScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postgresExplainForeignScan(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_12__*
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @list_length(i32* %16)
  %18 = load i64, i64* @FdwScanPrivateRelations, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* @FdwScanPrivateRelations, align 8
  %23 = call i32 @list_nth(i32* %21, i64 %22)
  %24 = call i8* @strVal(i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %25, %struct.TYPE_13__* %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* @FdwScanPrivateSelectSql, align 8
  %36 = call i32 @list_nth(i32* %34, i64 %35)
  %37 = call i8* @strVal(i32 %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %38, %struct.TYPE_13__* %39)
  br label %41

41:                                               ; preds = %33, %28
  ret void
}

declare dso_local i64 @list_length(i32*) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @list_nth(i32*, i64) #1

declare dso_local i32 @ExplainPropertyText(i8*, i8*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
