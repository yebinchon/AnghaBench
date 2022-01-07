; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_sharedtuplestore.c_sts_initialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_sharedtuplestore.c_sts_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SharedTuplestore name too long\00", align 1
@STS_CHUNK_DATA_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"meta-data too long\00", align 1
@LWTRANCHE_SHARED_TUPLESTORE = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @sts_initialize(%struct.TYPE_9__* %0, i32 %1, i32 %2, i64 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %7
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @strcpy(i32 %41, i8* %42)
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 4
  %46 = load i64, i64* @STS_CHUNK_DATA_SIZE, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %38
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %80, %51
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* @LWTRANCHE_SHARED_TUPLESTORE, align 4
  %65 = call i32 @LWLockInitialize(i32* %63, i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %56
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %52

83:                                               ; preds = %52
  %84 = call %struct.TYPE_8__* @palloc0(i32 24)
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %15, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %90, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load i32, i32* @CurrentMemoryContext, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  ret %struct.TYPE_8__* %97
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
