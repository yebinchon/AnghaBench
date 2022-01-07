; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_argisnull.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_argisnull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@pltcl_current_call_state = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"argno\00", align 1
@TCL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"argisnull cannot be used in triggers\00", align 1
@TCL_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"argno out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32**)* @pltcl_argisnull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_argisnull(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pltcl_current_call_state, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32**, i32*** %9, align 8
  %20 = call i32 @Tcl_WrongNumArgs(i32* %18, i32 1, i32** %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @TCL_ERROR, align 4
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %28 = call i32 @Tcl_SetObjResult(i32* %26, i32 %27)
  %29 = load i32, i32* @TCL_ERROR, align 4
  store i32 %29, i32* %5, align 4
  br label %64

30:                                               ; preds = %22
  %31 = load i32*, i32** %7, align 8
  %32 = load i32**, i32*** %9, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @Tcl_GetIntFromObj(i32* %31, i32* %34, i32* %10)
  %36 = load i64, i64* @TCL_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @TCL_ERROR, align 4
  store i32 %39, i32* %5, align 4
  br label %64

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %40
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %54 = call i32 @Tcl_SetObjResult(i32* %52, i32 %53)
  %55 = load i32, i32* @TCL_ERROR, align 4
  store i32 %55, i32* %5, align 4
  br label %64

56:                                               ; preds = %45
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @PG_ARGISNULL(i32 %58)
  %60 = call i32 @Tcl_NewBooleanObj(i32 %59)
  %61 = call i32 @Tcl_SetObjResult(i32* %57, i32 %60)
  %62 = load i64, i64* @TCL_OK, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %56, %51, %38, %25, %17
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @Tcl_WrongNumArgs(i32*, i32, i32**, i8*) #1

declare dso_local i32 @Tcl_SetObjResult(i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i64 @Tcl_GetIntFromObj(i32*, i32*, i32*) #1

declare dso_local i32 @Tcl_NewBooleanObj(i32) #1

declare dso_local i32 @PG_ARGISNULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
