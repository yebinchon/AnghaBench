; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_DecodingContextFindStartpoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_DecodingContextFindStartpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"searching for logical decoding starting point, starting at %X/%X\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"no record found\00", align 1
@InvalidXLogRecPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DecodingContextFindStartpoint(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @DEBUG1, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 32
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @elog(i32 %14, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %54, %1
  store i8* null, i8** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32* @XLogReadRecord(%struct.TYPE_12__* %28, i32 %29, i8** %6)
  store i32* %30, i32** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i32, i8*, ...) @elog(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 (i32, i8*, ...) @elog(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @InvalidXLogRecPtr, align 4
  store i32 %44, i32* %3, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = call i32 @LogicalDecodingProcessRecord(%struct.TYPE_11__* %45, %struct.TYPE_12__* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = call i64 @DecodingContextReady(%struct.TYPE_11__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %56

54:                                               ; preds = %43
  %55 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %25

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = call i32 @SpinLockAcquire(i32* %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = call i32 @SpinLockRelease(i32* %69)
  ret void
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32* @XLogReadRecord(%struct.TYPE_12__*, i32, i8**) #1

declare dso_local i32 @LogicalDecodingProcessRecord(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @DecodingContextReady(%struct.TYPE_11__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
