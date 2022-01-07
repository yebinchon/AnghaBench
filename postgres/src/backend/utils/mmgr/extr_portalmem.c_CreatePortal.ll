; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_CreatePortal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_CreatePortal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_CURSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cursor \22%s\22 already exists\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"closing existing cursor \22%s\22\00", align 1
@TopPortalContext = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"PortalContext\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@CurTransactionResourceOwner = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Portal\00", align 1
@PORTAL_NEW = common dso_local global i32 0, align 4
@PortalCleanup = common dso_local global i32 0, align 4
@PORTAL_MULTI_QUERY = common dso_local global i32 0, align 4
@CURSOR_OPT_NO_SCROLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CreatePortal(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @PointerIsValid(i8* %8)
  %10 = call i32 @AssertArg(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.TYPE_7__* @GetPortalByName(i8* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = call i64 @PortalIsValid(%struct.TYPE_7__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_DUPLICATE_CURSOR, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @ereport(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @WARNING, align 4
  %31 = load i32, i32* @ERRCODE_DUPLICATE_CURSOR, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = call i32 @PortalDrop(%struct.TYPE_7__* %37, i32 0)
  br label %39

39:                                               ; preds = %36, %3
  %40 = load i32, i32* @TopPortalContext, align 4
  %41 = call i64 @MemoryContextAllocZero(i32 %40, i32 52)
  %42 = inttoptr i64 %41 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %7, align 8
  %43 = load i32, i32* @TopPortalContext, align 4
  %44 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %45 = call i32 @AllocSetContextCreate(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @CurTransactionResourceOwner, align 4
  %49 = call i32 @ResourceOwnerCreate(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @PORTAL_NEW, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @PortalCleanup, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 4
  %58 = call i32 (...) @GetCurrentSubTransactionId()
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @PORTAL_MULTI_QUERY, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @CURSOR_OPT_NO_SCROLL, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  %78 = call i32 (...) @GetCurrentStatementStartTimestamp()
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @PortalHashTableInsert(%struct.TYPE_7__* %81, i8* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @MemoryContextSetIdentifier(i32 %86, i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %91
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @PointerIsValid(i8*) #1

declare dso_local %struct.TYPE_7__* @GetPortalByName(i8*) #1

declare dso_local i64 @PortalIsValid(%struct.TYPE_7__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @PortalDrop(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @ResourceOwnerCreate(i32, i8*) #1

declare dso_local i32 @GetCurrentSubTransactionId(...) #1

declare dso_local i32 @GetCurrentStatementStartTimestamp(...) #1

declare dso_local i32 @PortalHashTableInsert(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @MemoryContextSetIdentifier(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
