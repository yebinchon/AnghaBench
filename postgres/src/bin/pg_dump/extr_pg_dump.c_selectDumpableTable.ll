; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_selectDumpableTable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_selectDumpableTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@table_include_oids = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@DUMP_COMPONENT_ALL = common dso_local global i8* null, align 8
@DUMP_COMPONENT_NONE = common dso_local global i8* null, align 8
@table_exclude_oids = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*)* @selectDumpableTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selectDumpableTable(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @checkExtensionMembership(%struct.TYPE_15__* %6, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %61

11:                                               ; preds = %2
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @table_include_oids, i32 0, i32 0), align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @simple_oid_list_member(%struct.TYPE_14__* @table_include_oids, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i8*, i8** @DUMP_COMPONENT_ALL, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load i8*, i8** @DUMP_COMPONENT_NONE, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i8* [ %23, %22 ], [ %25, %24 ]
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  br label %42

31:                                               ; preds = %11
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  br label %42

42:                                               ; preds = %31, %26
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @simple_oid_list_member(%struct.TYPE_14__* @table_exclude_oids, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i8*, i8** @DUMP_COMPONENT_NONE, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %10, %56, %48, %42
  ret void
}

declare dso_local i64 @checkExtensionMembership(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @simple_oid_list_member(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
