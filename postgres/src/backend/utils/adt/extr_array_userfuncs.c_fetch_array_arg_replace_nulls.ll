; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_userfuncs.c_fetch_array_arg_replace_nulls.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_userfuncs.c_fetch_array_arg_replace_nulls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not determine input data type\00", align 1
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"input data type is not an array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32)* @fetch_array_arg_replace_nulls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_array_arg_replace_nulls(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @MemoryContextAlloc(i32 %23, i32 4)
  %25 = inttoptr i64 %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  %26 = load i32, i32* @InvalidOid, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %33, align 8
  br label %34

34:                                               ; preds = %18, %2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 @AggCheckCallContext(%struct.TYPE_8__* %35, i32* %8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @PG_ARGISNULL(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @MemoryContextSwitchTo(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = call i32* @PG_GETARG_EXPANDED_ARRAYX(i32 %47, %struct.TYPE_9__* %48)
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @MemoryContextSwitchTo(i32 %50)
  br label %84

52:                                               ; preds = %40
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @get_fn_expr_argtype(%struct.TYPE_10__* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @OidIsValid(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %52
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @get_element_type(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @OidIsValid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @ereport(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = call i32* @construct_empty_expanded_array(i32 %80, i32 %81, %struct.TYPE_9__* %82)
  store i32* %83, i32** %5, align 8
  br label %84

84:                                               ; preds = %79, %44
  %85 = load i32*, i32** %5, align 8
  ret i32* %85
}

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @AggCheckCallContext(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @PG_ARGISNULL(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @PG_GETARG_EXPANDED_ARRAYX(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @get_fn_expr_argtype(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @get_element_type(i32) #1

declare dso_local i32* @construct_empty_expanded_array(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
