; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelSetupTupleQueues.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelSetupTupleQueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@PARALLEL_TUPLE_QUEUE_SIZE = common dso_local global i32 0, align 4
@PARALLEL_KEY_TUPLE_QUEUE = common dso_local global i32 0, align 4
@MyProc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (%struct.TYPE_3__*, i32)* @ExecParallelSetupTupleQueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @ExecParallelSetupTupleQueues(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32** null, i32*** %3, align 8
  br label %85

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @palloc(i32 %21)
  %23 = inttoptr i64 %22 to i32**
  store i32** %23, i32*** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %15
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PARALLEL_TUPLE_QUEUE_SIZE, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mul_size(i32 %30, i32 %33)
  %35 = call i8* @shm_toc_allocate(i32 %29, i32 %34)
  store i8* %35, i8** %7, align 8
  br label %42

36:                                               ; preds = %15
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PARALLEL_KEY_TUPLE_QUEUE, align 4
  %41 = call i8* @shm_toc_lookup(i32 %39, i32 %40, i32 0)
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %36, %26
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PARALLEL_TUPLE_QUEUE_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load i32, i32* @PARALLEL_TUPLE_QUEUE_SIZE, align 4
  %57 = call i32* @shm_mq_create(i8* %55, i32 %56)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @MyProc, align 4
  %60 = call i32 @shm_mq_set_receiver(i32* %58, i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @shm_mq_attach(i32* %61, i32 %64, i32* null)
  %66 = load i32**, i32*** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* %65, i32** %69, align 8
  br label %70

70:                                               ; preds = %49
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PARALLEL_KEY_TUPLE_QUEUE, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @shm_toc_insert(i32 %79, i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %76, %73
  %84 = load i32**, i32*** %6, align 8
  store i32** %84, i32*** %3, align 8
  br label %85

85:                                               ; preds = %83, %14
  %86 = load i32**, i32*** %3, align 8
  ret i32** %86
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @shm_toc_allocate(i32, i32) #1

declare dso_local i32 @mul_size(i32, i32) #1

declare dso_local i8* @shm_toc_lookup(i32, i32, i32) #1

declare dso_local i32* @shm_mq_create(i8*, i32) #1

declare dso_local i32 @shm_mq_set_receiver(i32*, i32) #1

declare dso_local i32* @shm_mq_attach(i32*, i32, i32*) #1

declare dso_local i32 @shm_toc_insert(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
