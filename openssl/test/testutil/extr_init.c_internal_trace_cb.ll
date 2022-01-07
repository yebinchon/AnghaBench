; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_init.c_internal_trace_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_init.c_internal_trace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"TRACE[%s]:%s: \00", align 1
@PREFIX_CTRL_SET_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, i32, i8*)* @internal_trace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @internal_trace_cb(i8* %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %12, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %55 [
    i32 130, label %19
    i32 128, label %40
    i32 129, label %47
  ]

19:                                               ; preds = %5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = call i32 (...) @CRYPTO_THREAD_get_current_id()
  store i32 %22, i32* %15, align 4
  %23 = bitcast i32* %15 to i8*
  %24 = call i8* @OPENSSL_buf2hexstr(i8* %23, i32 4)
  store i8* %24, i8** %14, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @OSSL_trace_get_category_name(i32 %27)
  %29 = call i32 @BIO_snprintf(i8* %25, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %28)
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 @OPENSSL_free(i8* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PREFIX_CTRL_SET_PREFIX, align 4
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %37 = call i32 @strlen(i8* %36)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %39 = call i32 @BIO_ctrl(i32 %34, i32 %35, i32 %37, i8* %38)
  br label %55

40:                                               ; preds = %5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @BIO_write(i32 %43, i8* %44, i64 %45)
  store i32 %46, i32* %11, align 4
  br label %55

47:                                               ; preds = %5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PREFIX_CTRL_SET_PREFIX, align 4
  %54 = call i32 @BIO_ctrl(i32 %52, i32 %53, i32 0, i8* null)
  br label %55

55:                                               ; preds = %5, %47, %40, %19
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32 [ 0, %58 ], [ %60, %59 ]
  %63 = sext i32 %62 to i64
  ret i64 %63
}

declare dso_local i32 @CRYPTO_THREAD_get_current_id(...) #1

declare dso_local i8* @OPENSSL_buf2hexstr(i8*, i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @OSSL_trace_get_category_name(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_ctrl(i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BIO_write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
