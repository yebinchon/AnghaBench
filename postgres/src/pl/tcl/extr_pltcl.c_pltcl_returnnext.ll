; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_returnnext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_returnnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32*, %struct.TYPE_7__*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }

@pltcl_current_call_state = common dso_local global %struct.TYPE_8__* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"return_next cannot be used in triggers\00", align 1
@TCL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"return_next cannot be used in non-set-returning functions\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"wrong result type supplied in return_next\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32**)* @pltcl_returnnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_returnnext(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pltcl_current_call_state, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %10, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %12, align 8
  %28 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @TCL_OK, align 4
  store volatile i32 %30, i32* %15, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 -1)
  %36 = call i32 @Tcl_SetObjResult(i32* %34, i32 %35)
  %37 = load i32, i32* @TCL_ERROR, align 4
  store i32 %37, i32* %5, align 4
  br label %133

38:                                               ; preds = %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %46 = call i32 @Tcl_SetObjResult(i32* %44, i32 %45)
  %47 = load i32, i32* @TCL_ERROR, align 4
  store i32 %47, i32* %5, align 4
  br label %133

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  %53 = load i32**, i32*** %9, align 8
  %54 = call i32 @Tcl_WrongNumArgs(i32* %52, i32 1, i32** %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @TCL_ERROR, align 4
  store i32 %55, i32* %5, align 4
  br label %133

56:                                               ; preds = %48
  %57 = call i32 @BeginInternalSubTransaction(i32* null)
  %58 = call i32 (...) @PG_TRY()
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = call i32 @pltcl_init_tuple_store(%struct.TYPE_8__* %64)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load i32*, i32** %7, align 8
  %73 = load i32**, i32*** %9, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @Tcl_ListObjGetElements(i32* %72, i32* %75, i32* %17, i32*** %16)
  %77 = load i32, i32* @TCL_ERROR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @TCL_ERROR, align 4
  store volatile i32 %80, i32* %15, align 4
  br label %92

81:                                               ; preds = %71
  %82 = load i32*, i32** %7, align 8
  %83 = load i32**, i32*** %16, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = call i32 @pltcl_build_tuple_result(i32* %82, i32** %83, i32 %84, %struct.TYPE_8__* %85)
  store i32 %86, i32* %18, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @tuplestore_puttuple(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %81, %79
  br label %123

93:                                               ; preds = %66
  store i32 0, i32* %20, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @ERROR, align 4
  %102 = call i32 @elog(i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32**, i32*** %9, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i64 @Tcl_GetString(i32* %108)
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @utf_u2e(i8* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @InputFunctionCall(i32* %105, i32 %111, i32 %114, i32 -1)
  store i32 %115, i32* %19, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = call i32 @tuplestore_putvalues(i32* %118, %struct.TYPE_9__* %121, i32* %19, i32* %20)
  br label %123

123:                                              ; preds = %103, %92
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @pltcl_subtrans_commit(i32 %124, i32 %125)
  %127 = call i32 (...) @PG_CATCH()
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @pltcl_subtrans_abort(i32* %128, i32 %129, i32 %130)
  %132 = load i32, i32* @TCL_ERROR, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %123, %51, %43, %33
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @Tcl_SetObjResult(i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32 @Tcl_WrongNumArgs(i32*, i32, i32**, i8*) #1

declare dso_local i32 @BeginInternalSubTransaction(i32*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @pltcl_init_tuple_store(%struct.TYPE_8__*) #1

declare dso_local i32 @Tcl_ListObjGetElements(i32*, i32*, i32*, i32***) #1

declare dso_local i32 @pltcl_build_tuple_result(i32*, i32**, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @tuplestore_puttuple(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @InputFunctionCall(i32*, i32, i32, i32) #1

declare dso_local i32 @utf_u2e(i8*) #1

declare dso_local i64 @Tcl_GetString(i32*) #1

declare dso_local i32 @tuplestore_putvalues(i32*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @pltcl_subtrans_commit(i32, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @pltcl_subtrans_abort(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
