; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_MemoryContextInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_MemoryContextInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TopMemoryContext = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"TopMemoryContext\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"ErrorContext\00", align 1
@ErrorContext = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MemoryContextInit() #0 {
  %1 = load i32*, i32** @TopMemoryContext, align 8
  %2 = icmp eq i32* %1, null
  %3 = zext i1 %2 to i32
  %4 = call i32 @AssertState(i32 %3)
  %5 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %6 = call i8* (i32*, i8*, i32, ...) @AllocSetContextCreate(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** @TopMemoryContext, align 8
  %8 = load i32*, i32** @TopMemoryContext, align 8
  store i32* %8, i32** @CurrentMemoryContext, align 8
  %9 = load i32*, i32** @TopMemoryContext, align 8
  %10 = call i8* (i32*, i8*, i32, ...) @AllocSetContextCreate(i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 8192, i32 8192, i32 8192)
  store i8* %10, i8** @ErrorContext, align 8
  %11 = load i8*, i8** @ErrorContext, align 8
  %12 = call i32 @MemoryContextAllowInCriticalSection(i8* %11, i32 1)
  ret void
}

declare dso_local i32 @AssertState(i32) #1

declare dso_local i8* @AllocSetContextCreate(i32*, i8*, i32, ...) #1

declare dso_local i32 @MemoryContextAllowInCriticalSection(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
