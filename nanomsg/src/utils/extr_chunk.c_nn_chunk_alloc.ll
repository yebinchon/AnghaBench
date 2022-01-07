; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunk.c_nn_chunk_alloc.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunk.c_nn_chunk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunk = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"message chunk\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nn_chunk_default_free = common dso_local global i32 0, align 4
@NN_CHUNK_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_chunk_alloc(i64 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nn_chunk*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = call i64 (...) @nn_chunk_hdrsize()
  store i64 %11, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ult i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @nn_slow(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %29 [
    i32 0, label %26
  ]

26:                                               ; preds = %24
  %27 = load i64, i64* %8, align 8
  %28 = call %struct.nn_chunk* @nn_alloc(i64 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_chunk* %28, %struct.nn_chunk** %9, align 8
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %65

32:                                               ; preds = %26
  %33 = load %struct.nn_chunk*, %struct.nn_chunk** %9, align 8
  %34 = icmp ne %struct.nn_chunk* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @nn_slow(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %65

42:                                               ; preds = %32
  %43 = load %struct.nn_chunk*, %struct.nn_chunk** %9, align 8
  %44 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %43, i32 0, i32 2
  %45 = call i32 @nn_atomic_init(i32* %44, i32 1)
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.nn_chunk*, %struct.nn_chunk** %9, align 8
  %48 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @nn_chunk_default_free, align 4
  %50 = load %struct.nn_chunk*, %struct.nn_chunk** %9, align 8
  %51 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nn_chunk*, %struct.nn_chunk** %9, align 8
  %53 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %52, i64 1
  %54 = bitcast %struct.nn_chunk* %53 to i32*
  %55 = call i32 @nn_putl(i32* %54, i32 0)
  %56 = load %struct.nn_chunk*, %struct.nn_chunk** %9, align 8
  %57 = getelementptr inbounds %struct.nn_chunk, %struct.nn_chunk* %56, i64 1
  %58 = bitcast %struct.nn_chunk* %57 to i32*
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* @NN_CHUNK_TAG, align 4
  %61 = call i32 @nn_putl(i32* %59, i32 %60)
  %62 = load %struct.nn_chunk*, %struct.nn_chunk** %9, align 8
  %63 = call i8* @nn_chunk_getdata(%struct.nn_chunk* %62)
  %64 = load i8**, i8*** %7, align 8
  store i8* %63, i8** %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %42, %39, %29, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @nn_chunk_hdrsize(...) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local %struct.nn_chunk* @nn_alloc(i64, i8*) #1

declare dso_local i32 @nn_atomic_init(i32*, i32) #1

declare dso_local i32 @nn_putl(i32*, i32) #1

declare dso_local i8* @nn_chunk_getdata(%struct.nn_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
