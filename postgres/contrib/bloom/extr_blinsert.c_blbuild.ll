; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blinsert.c_blbuild.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blinsert.c_blbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"index \22%s\22 already contains data\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Bloom build temporary context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@bloomBuildCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @blbuild(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @RelationGetNumberOfBlocks(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @RelationGetRelationName(i32 %15)
  %17 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BloomInitMetapage(i32 %19)
  %21 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 24)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @initBloomState(i32* %22, i32 %23)
  %25 = load i32, i32* @CurrentMemoryContext, align 4
  %26 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %27 = call i32 @AllocSetContextCreate(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = call i32 @initCachedPage(%struct.TYPE_8__* %9)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @bloomBuildCallback, align 4
  %34 = bitcast %struct.TYPE_8__* %9 to i8*
  %35 = call double @table_index_build_scan(i32 %30, i32 %31, i32* %32, i32 1, i32 1, i32 %33, i8* %34, i32* null)
  store double %35, double* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %18
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @flushCachedPage(i32 %40, %struct.TYPE_8__* %9)
  br label %42

42:                                               ; preds = %39, %18
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MemoryContextDelete(i32 %44)
  %46 = call i64 @palloc(i32 16)
  %47 = inttoptr i64 %46 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %7, align 8
  %48 = load double, double* %8, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store double %48, double* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %55
}

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @BloomInitMetapage(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @initBloomState(i32*, i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @initCachedPage(%struct.TYPE_8__*) #1

declare dso_local double @table_index_build_scan(i32, i32, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @flushCachedPage(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
