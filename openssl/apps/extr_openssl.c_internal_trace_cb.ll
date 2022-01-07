; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_openssl.c_internal_trace_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_openssl.c_internal_trace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"TRACE[%s]:%s: \00", align 1
@PREFIX_CTRL_SET_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, i32, i8*)* @internal_trace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @internal_trace_cb(i8* %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %13, align 8
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %80 [
    i32 130, label %20
    i32 128, label %51
    i32 129, label %65
  ]

20:                                               ; preds = %5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ossl_assert(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %89

30:                                               ; preds = %20
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = call i32 (...) @CRYPTO_THREAD_get_current_id()
  store i32 %33, i32* %16, align 4
  %34 = bitcast i32* %16 to i8*
  %35 = call i8* @OPENSSL_buf2hexstr(i8* %34, i32 4)
  store i8* %35, i8** %15, align 8
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %37 = load i8*, i8** %15, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @OSSL_trace_get_category_name(i32 %38)
  %40 = call i32 @BIO_snprintf(i8* %36, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @OPENSSL_free(i8* %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PREFIX_CTRL_SET_PREFIX, align 4
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %50 = call i32 @BIO_ctrl(i32 %45, i32 %46, i32 %48, i8* %49)
  br label %80

51:                                               ; preds = %5
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ossl_assert(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  br label %89

58:                                               ; preds = %51
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @BIO_write(i32 %61, i8* %62, i64 %63)
  store i32 %64, i32* %12, align 4
  br label %80

65:                                               ; preds = %5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ossl_assert(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i64 0, i64* %6, align 8
  br label %89

72:                                               ; preds = %65
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PREFIX_CTRL_SET_PREFIX, align 4
  %79 = call i32 @BIO_ctrl(i32 %77, i32 %78, i32 0, i8* null)
  br label %80

80:                                               ; preds = %5, %72, %58, %30
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = phi i32 [ 0, %83 ], [ %85, %84 ]
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %86, %71, %57, %29
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i32 @ossl_assert(i32) #1

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
