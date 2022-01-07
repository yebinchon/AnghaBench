; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_io_intern.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_io_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_async_args = type { i64, i32, %struct.TYPE_6__, i8*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i8*, i64, i32*)*, i32 (%struct.TYPE_7__*, i8*, i64, i32*)*, i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ssl_io_intern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_io_intern(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ssl_async_args*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ssl_async_args*
  store %struct.ssl_async_args* %9, %struct.ssl_async_args** %4, align 8
  %10 = load %struct.ssl_async_args*, %struct.ssl_async_args** %4, align 8
  %11 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %10, i32 0, i32 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.ssl_async_args*, %struct.ssl_async_args** %4, align 8
  %14 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load %struct.ssl_async_args*, %struct.ssl_async_args** %4, align 8
  %17 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.ssl_async_args*, %struct.ssl_async_args** %4, align 8
  %20 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %51 [
    i32 129, label %22
    i32 128, label %33
    i32 130, label %44
  ]

22:                                               ; preds = %1
  %23 = load %struct.ssl_async_args*, %struct.ssl_async_args** %4, align 8
  %24 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_7__*, i8*, i64, i32*)*, i32 (%struct.TYPE_7__*, i8*, i64, i32*)** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i32 %26(%struct.TYPE_7__* %27, i8* %28, i64 %29, i32* %31)
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %1
  %34 = load %struct.ssl_async_args*, %struct.ssl_async_args** %4, align 8
  %35 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_7__*, i8*, i64, i32*)*, i32 (%struct.TYPE_7__*, i8*, i64, i32*)** %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 %37(%struct.TYPE_7__* %38, i8* %39, i64 %40, i32* %42)
  store i32 %43, i32* %2, align 4
  br label %52

44:                                               ; preds = %1
  %45 = load %struct.ssl_async_args*, %struct.ssl_async_args** %4, align 8
  %46 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = call i32 %48(%struct.TYPE_7__* %49)
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %44, %33, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
