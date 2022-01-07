; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_init_interp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_init_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"slave_%u\00", align 1
@pltcl_hold_interp = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not create slave Tcl interpreter\00", align 1
@TCL_STRING_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"elog\00", align 1
@pltcl_elog = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@pltcl_quote = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"argisnull\00", align 1
@pltcl_argisnull = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"return_null\00", align 1
@pltcl_returnnull = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"return_next\00", align 1
@pltcl_returnnext = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"spi_exec\00", align 1
@pltcl_SPI_execute = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"spi_prepare\00", align 1
@pltcl_SPI_prepare = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"spi_execp\00", align 1
@pltcl_SPI_execute_plan = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"subtransaction\00", align 1
@pltcl_subtransaction = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@pltcl_commit = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"rollback\00", align 1
@pltcl_rollback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @pltcl_init_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pltcl_init_interp(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [32 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @snprintf(i8* %9, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @pltcl_hold_interp, align 4
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = call i32* @Tcl_CreateSlave(i32 %14, i8* %15, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* @TCL_STRING_KEYS, align 4
  %29 = call i32 @Tcl_InitHashTable(i32* %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @pltcl_elog, align 4
  %32 = call i32 @Tcl_CreateObjCommand(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32* null, i32* null)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @pltcl_quote, align 4
  %35 = call i32 @Tcl_CreateObjCommand(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32* null, i32* null)
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @pltcl_argisnull, align 4
  %38 = call i32 @Tcl_CreateObjCommand(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32* null, i32* null)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @pltcl_returnnull, align 4
  %41 = call i32 @Tcl_CreateObjCommand(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %40, i32* null, i32* null)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @pltcl_returnnext, align 4
  %44 = call i32 @Tcl_CreateObjCommand(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %43, i32* null, i32* null)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @pltcl_SPI_execute, align 4
  %47 = call i32 @Tcl_CreateObjCommand(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32* null, i32* null)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @pltcl_SPI_prepare, align 4
  %50 = call i32 @Tcl_CreateObjCommand(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %49, i32* null, i32* null)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @pltcl_SPI_execute_plan, align 4
  %53 = call i32 @Tcl_CreateObjCommand(i32* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %52, i32* null, i32* null)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @pltcl_subtransaction, align 4
  %56 = call i32 @Tcl_CreateObjCommand(i32* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %55, i32* null, i32* null)
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @pltcl_commit, align 4
  %59 = call i32 @Tcl_CreateObjCommand(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %58, i32* null, i32* null)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @pltcl_rollback, align 4
  %62 = call i32 @Tcl_CreateObjCommand(i32* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %61, i32* null, i32* null)
  %63 = call i32 (...) @PG_TRY()
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @call_pltcl_start_proc(i32 %67, i32 %68)
  %70 = call i32 (...) @PG_CATCH()
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @Tcl_DeleteInterp(i32* %73)
  %75 = call i32 (...) @PG_RE_THROW()
  %76 = call i32 (...) @PG_END_TRY()
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @Tcl_CreateSlave(i32, i8*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Tcl_InitHashTable(i32*, i32) #1

declare dso_local i32 @Tcl_CreateObjCommand(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @call_pltcl_start_proc(i32, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @Tcl_DeleteInterp(i32*) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
