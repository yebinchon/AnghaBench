; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_getopt.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipebase = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NN_SOL_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_getopt(%struct.nn_pipebase* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca %struct.nn_pipebase*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nn_pipebase* %0, %struct.nn_pipebase** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NN_SOL_SOCKET, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %33 [
    i32 128, label %18
    i32 129, label %23
    i32 130, label %28
  ]

18:                                               ; preds = %16
  %19 = load %struct.nn_pipebase*, %struct.nn_pipebase** %6, align 8
  %20 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  br label %48

23:                                               ; preds = %16
  %24 = load %struct.nn_pipebase*, %struct.nn_pipebase** %6, align 8
  %25 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  br label %48

28:                                               ; preds = %16
  %29 = load %struct.nn_pipebase*, %struct.nn_pipebase** %6, align 8
  %30 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  br label %48

33:                                               ; preds = %16
  %34 = load %struct.nn_pipebase*, %struct.nn_pipebase** %6, align 8
  %35 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = call i32 @nn_sock_getopt_inner(i32 %36, i32 %37, i32 %38, i8* %39, i64* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 @errnum_assert(i32 %44, i32 %46)
  br label %76

48:                                               ; preds = %28, %23, %18
  %49 = load i8*, i8** %9, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %54, align 8
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i64 [ %55, %53 ], [ 4, %56 ]
  %59 = call i32 @memcpy(i8* %49, i32* %12, i64 %58)
  %60 = load i64*, i64** %10, align 8
  store i64 4, i64* %60, align 8
  br label %76

61:                                               ; preds = %5
  %62 = load %struct.nn_pipebase*, %struct.nn_pipebase** %6, align 8
  %63 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = call i32 @nn_sock_getopt_inner(i32 %64, i32 %65, i32 %66, i8* %67, i64* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i32 @errnum_assert(i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %61, %57, %33
  ret void
}

declare dso_local i32 @nn_sock_getopt_inner(i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
