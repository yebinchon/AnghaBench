; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_GetErrorContextStack.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_GetErrorContextStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32, i32 (i32)*, %struct.TYPE_7__* }

@recursion_depth = common dso_local global i32 0, align 4
@errordata_stack_depth = common dso_local global i64 0, align 8
@ERRORDATA_STACK_SIZE = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ERRORDATA_STACK_SIZE exceeded\00", align 1
@errordata = common dso_local global %struct.TYPE_6__* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetErrorContextStack() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = load i32, i32* @recursion_depth, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @recursion_depth, align 4
  %5 = load i64, i64* @errordata_stack_depth, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* @errordata_stack_depth, align 8
  %7 = load i64, i64* @ERRORDATA_STACK_SIZE, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  store i64 -1, i64* @errordata_stack_depth, align 8
  %10 = load i32, i32* @PANIC, align 4
  %11 = call i32 @errmsg_internal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @ereport(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @errordata, align 8
  %15 = load i64, i64* @errordata_stack_depth, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %15
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %1, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = call i32 @MemSet(%struct.TYPE_6__* %17, i32 0, i32 16)
  %19 = load i32, i32* @CurrentMemoryContext, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @error_context_stack, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %2, align 8
  br label %23

23:                                               ; preds = %34, %13
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %2, align 8
  br label %23

38:                                               ; preds = %23
  %39 = load i64, i64* @errordata_stack_depth, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* @errordata_stack_depth, align 8
  %41 = load i32, i32* @recursion_depth, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @recursion_depth, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  ret i8* %45
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

declare dso_local i32 @MemSet(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
