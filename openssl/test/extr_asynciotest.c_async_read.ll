; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asynciotest.c_async_read.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asynciotest.c_async_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_ctrs = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @async_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.async_ctrs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @BIO_next(i32* %11)
  store i32* %12, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %54

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call %struct.async_ctrs* @BIO_get_data(i32* %21)
  store %struct.async_ctrs* %22, %struct.async_ctrs** %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @BIO_clear_retry_flags(i32* %23)
  %25 = load %struct.async_ctrs*, %struct.async_ctrs** %8, align 8
  %26 = getelementptr inbounds %struct.async_ctrs, %struct.async_ctrs* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @BIO_read(i32* %30, i8* %31, i32 1)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @BIO_should_read(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @BIO_set_retry_read(i32* %40)
  br label %42

42:                                               ; preds = %39, %35, %29
  %43 = load %struct.async_ctrs*, %struct.async_ctrs** %8, align 8
  %44 = getelementptr inbounds %struct.async_ctrs, %struct.async_ctrs* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %52

45:                                               ; preds = %20
  %46 = load %struct.async_ctrs*, %struct.async_ctrs** %8, align 8
  %47 = getelementptr inbounds %struct.async_ctrs, %struct.async_ctrs* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @BIO_set_retry_read(i32* %50)
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %19, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local %struct.async_ctrs* @BIO_get_data(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i64 @BIO_should_read(i32*) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
