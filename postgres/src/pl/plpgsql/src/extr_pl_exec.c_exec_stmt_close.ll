; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_close.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cursor variable \22%s\22 is null\00", align 1
@ERRCODE_UNDEFINED_CURSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cursor \22%s\22 does not exist\00", align 1
@PLPGSQL_RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @exec_stmt_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_close(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 @ereport(i32 %23, i32 %29)
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @get_eval_mcontext(%struct.TYPE_9__* %32)
  %34 = call i32 @MemoryContextSwitchTo(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @TextDatumGetCString(i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @MemoryContextSwitchTo(i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i32* @SPI_cursor_find(i8* %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_UNDEFINED_CURSOR, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = call i32 @ereport(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %31
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @SPI_cursor_close(i32* %53)
  %55 = load i32, i32* @PLPGSQL_RC_OK, align 4
  ret i32 %55
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_9__*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32* @SPI_cursor_find(i8*) #1

declare dso_local i32 @SPI_cursor_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
