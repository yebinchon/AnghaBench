; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_generation.c_GenerationContextCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_generation.c_GenerationContextCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@Generation_CHUNKHDRSZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"sizeof(GenerationChunk) is not maxaligned\00", align 1
@GenerationChunk = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"padding calculation in GenerationChunk is wrong\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"invalid blockSize for memory context: %zu\00", align 1
@TopMemoryContext = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed while creating memory context \22%s\22.\00", align 1
@T_GenerationContext = common dso_local global i32 0, align 4
@GenerationMethods = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GenerationContextCreate(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @Generation_CHUNKHDRSZ, align 8
  %9 = load i64, i64* @Generation_CHUNKHDRSZ, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @MAXALIGN(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = icmp eq i64 %8, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @StaticAssertStmt(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @GenerationChunk, align 4
  %17 = load i32, i32* @context, align 4
  %18 = call i64 @offsetof(i32 %16, i32 %17)
  %19 = add i64 %18, 4
  %20 = load i64, i64* @Generation_CHUNKHDRSZ, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @StaticAssertStmt(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @MAXALIGN(i32 %25)
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 1024
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @AllocHugeSizeIsValid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %28, %3
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = call i32 @MAXALIGN(i32 16)
  %41 = call i64 @malloc(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %7, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %44 = icmp eq %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* @TopMemoryContext, align 4
  %47 = call i32 @MemoryContextStats(i32 %46)
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @errdetail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = call i32 @ereport(i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %45, %39
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @dlist_init(i32* %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %65 = ptrtoint %struct.TYPE_2__* %64 to i32
  %66 = load i32, i32* @T_GenerationContext, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @MemoryContextCreate(i32 %65, i32 %66, i32* @GenerationMethods, i32 %67, i8* %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %71 = ptrtoint %struct.TYPE_2__* %70 to i32
  ret i32 %71
}

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @AllocHugeSizeIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @MemoryContextStats(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @dlist_init(i32*) #1

declare dso_local i32 @MemoryContextCreate(i32, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
