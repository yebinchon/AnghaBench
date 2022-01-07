; ModuleID = '/home/carl/AnghaBench/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_get_fd.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_get_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.fd_lookup_st* }
%struct.fd_lookup_st = type { i8*, %struct.fd_lookup_st*, i8*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASYNC_WAIT_CTX_get_fd(%struct.TYPE_3__* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.fd_lookup_st*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  store %struct.fd_lookup_st* %13, %struct.fd_lookup_st** %10, align 8
  br label %14

14:                                               ; preds = %41, %22, %4
  %15 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %10, align 8
  %16 = icmp ne %struct.fd_lookup_st* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %10, align 8
  %19 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %10, align 8
  %24 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %23, i32 0, i32 1
  %25 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %24, align 8
  store %struct.fd_lookup_st* %25, %struct.fd_lookup_st** %10, align 8
  br label %14

26:                                               ; preds = %17
  %27 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %10, align 8
  %28 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %10, align 8
  %34 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %10, align 8
  %38 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %9, align 8
  store i8* %39, i8** %40, align 8
  store i32 1, i32* %5, align 4
  br label %46

41:                                               ; preds = %26
  %42 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %10, align 8
  %43 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %42, i32 0, i32 1
  %44 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %43, align 8
  store %struct.fd_lookup_st* %44, %struct.fd_lookup_st** %10, align 8
  br label %14

45:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
