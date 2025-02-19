; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_d1.c_dtls1_write_bytes.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_d1.c_dtls1_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DTLS1_WRITE_BYTES = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_NOTHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_write_bytes(%struct.TYPE_5__* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %15 = icmp ule i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ossl_assert(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %22 = load i32, i32* @SSL_F_DTLS1_WRITE_BYTES, align 4
  %23 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %24 = call i32 @SSLfatal(%struct.TYPE_5__* %20, i32 %21, i32 %22, i32 %23)
  store i32 -1, i32* %6, align 4
  br label %36

25:                                               ; preds = %5
  %26 = load i32, i32* @SSL_NOTHING, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = call i32 @do_dtls1_write(%struct.TYPE_5__* %29, i32 %30, i8* %31, i64 %32, i32 0, i64* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %25, %19
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @do_dtls1_write(%struct.TYPE_5__*, i32, i8*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
