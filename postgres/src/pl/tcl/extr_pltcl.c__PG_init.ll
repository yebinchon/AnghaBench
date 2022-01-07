; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@pltcl_pm_init_done = common dso_local global i32 0, align 4
@TEXTDOMAIN = common dso_local global i32 0, align 4
@pltcl_SetTimer = common dso_local global i32 0, align 4
@pltcl_WaitForEvent = common dso_local global i32 0, align 4
@pltcl_CreateFileHandler = common dso_local global i32 0, align 4
@pltcl_DeleteFileHandler = common dso_local global i32 0, align 4
@pltcl_InitNotifier = common dso_local global i32 0, align 4
@pltcl_FinalizeNotifier = common dso_local global i32 0, align 4
@pltcl_AlertNotifier = common dso_local global i32 0, align 4
@pltcl_ServiceModeHook = common dso_local global i32 0, align 4
@pltcl_hold_interp = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not create master Tcl interpreter\00", align 1
@TCL_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"could not initialize master Tcl interpreter\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"PL/Tcl interpreters\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@pltcl_interp_htab = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"PL/Tcl functions\00", align 1
@pltcl_proc_htab = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"pltcl.start_proc\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"PL/Tcl function to call once when pltcl is first used.\00", align 1
@pltcl_start_proc = common dso_local global i32 0, align 4
@PGC_SUSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"pltclu.start_proc\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"PL/TclU function to call once when pltclu is first used.\00", align 1
@pltclu_start_proc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = load i32, i32* @pltcl_pm_init_done, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %60

6:                                                ; preds = %0
  %7 = load i32, i32* @TEXTDOMAIN, align 4
  %8 = call i32 @pg_bindtextdomain(i32 %7)
  %9 = load i32, i32* @pltcl_SetTimer, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 7
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @pltcl_WaitForEvent, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 6
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @pltcl_CreateFileHandler, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 5
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @pltcl_DeleteFileHandler, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @pltcl_InitNotifier, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @pltcl_FinalizeNotifier, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @pltcl_AlertNotifier, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @pltcl_ServiceModeHook, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = call i32 @Tcl_SetNotifier(%struct.TYPE_6__* %1)
  %26 = call i32* (...) @Tcl_CreateInterp()
  store i32* %26, i32** @pltcl_hold_interp, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %6
  %32 = load i32*, i32** @pltcl_hold_interp, align 8
  %33 = call i64 @Tcl_Init(i32* %32)
  %34 = load i64, i64* @TCL_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 8)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 4, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 4, i32* %42, align 4
  %43 = load i32, i32* @HASH_ELEM, align 4
  %44 = load i32, i32* @HASH_BLOBS, align 4
  %45 = or i32 %43, %44
  %46 = call i8* @hash_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 8, %struct.TYPE_7__* %2, i32 %45)
  store i8* %46, i8** @pltcl_interp_htab, align 8
  %47 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 8)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 4, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 4, i32* %49, align 4
  %50 = load i32, i32* @HASH_ELEM, align 4
  %51 = load i32, i32* @HASH_BLOBS, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @hash_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 100, %struct.TYPE_7__* %2, i32 %52)
  store i8* %53, i8** @pltcl_proc_htab, align 8
  %54 = call i32 @gettext_noop(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* @PGC_SUSET, align 4
  %56 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %54, i32* null, i32* @pltcl_start_proc, i32* null, i32 %55, i32 0, i32* null, i32* null, i32* null)
  %57 = call i32 @gettext_noop(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32, i32* @PGC_SUSET, align 4
  %59 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %57, i32* null, i32* @pltclu_start_proc, i32* null, i32 %58, i32 0, i32* null, i32* null, i32* null)
  store i32 1, i32* @pltcl_pm_init_done, align 4
  br label %60

60:                                               ; preds = %39, %5
  ret void
}

declare dso_local i32 @pg_bindtextdomain(i32) #1

declare dso_local i32 @Tcl_SetNotifier(%struct.TYPE_6__*) #1

declare dso_local i32* @Tcl_CreateInterp(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @Tcl_Init(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @hash_create(i8*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @DefineCustomStringVariable(i8*, i32, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gettext_noop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
