; ModuleID = '/home/carl/AnghaBench/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_get_all_fds.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_get_all_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.fd_lookup_st* }
%struct.fd_lookup_st = type { %struct.fd_lookup_st*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.TYPE_3__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.fd_lookup_st*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %9, align 8
  store %struct.fd_lookup_st* %10, %struct.fd_lookup_st** %7, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %34, %20, %3
  %13 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %7, align 8
  %14 = icmp ne %struct.fd_lookup_st* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %7, align 8
  %17 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %7, align 8
  %22 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %21, i32 0, i32 0
  %23 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %22, align 8
  store %struct.fd_lookup_st* %23, %struct.fd_lookup_st** %7, align 8
  br label %12

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %7, align 8
  %29 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %5, align 8
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %7, align 8
  %39 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %38, i32 0, i32 0
  %40 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %39, align 8
  store %struct.fd_lookup_st* %40, %struct.fd_lookup_st** %7, align 8
  br label %12

41:                                               ; preds = %12
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
