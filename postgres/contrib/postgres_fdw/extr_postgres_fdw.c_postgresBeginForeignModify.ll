; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresBeginForeignModify.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresBeginForeignModify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__**, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32 }

@EXEC_FLAG_EXPLAIN_ONLY = common dso_local global i32 0, align 4
@FdwModifyPrivateUpdateSql = common dso_local global i32 0, align 4
@FdwModifyPrivateTargetAttnums = common dso_local global i32 0, align 4
@FdwModifyPrivateHasReturning = common dso_local global i32 0, align 4
@FdwModifyPrivateRetrievedAttrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32, i32)* @postgresBeginForeignModify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postgresBeginForeignModify(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %73

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @FdwModifyPrivateUpdateSql, align 4
  %25 = call i64 @list_nth(i32* %23, i32 %24)
  %26 = call i8* @strVal(i64 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @FdwModifyPrivateTargetAttnums, align 4
  %29 = call i64 @list_nth(i32* %27, i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @FdwModifyPrivateHasReturning, align 4
  %33 = call i64 @list_nth(i32* %31, i32 %32)
  %34 = call i32 @intVal(i64 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @FdwModifyPrivateRetrievedAttrs, align 4
  %37 = call i64 @list_nth(i32* %35, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %15, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @exec_rt_fetch(i32 %41, i32 %45)
  store i32* %46, i32** %16, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = call i32* @create_foreign_modify(i32 %50, i32* %51, %struct.TYPE_10__* %52, i32 %55, i32 %64, i8* %65, i32* %66, i32 %67, i32* %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %22, %21
  ret void
}

declare dso_local i8* @strVal(i64) #1

declare dso_local i64 @list_nth(i32*, i32) #1

declare dso_local i32 @intVal(i64) #1

declare dso_local i32* @exec_rt_fetch(i32, i32) #1

declare dso_local i32* @create_foreign_modify(i32, i32*, %struct.TYPE_10__*, i32, i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
