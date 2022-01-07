; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_my_SSL_set_fd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_my_SSL_set_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SSL_F_SSL_SET_FD = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @my_SSL_set_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_SSL_set_fd(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = call i32* (...) @my_BIO_s_socket()
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @SSL_F_SSL_SET_FD, align 4
  %13 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %14 = call i32 @SSLerr(i32 %12, i32 %13)
  br label %38

15:                                               ; preds = %2
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @BIO_new(i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @SSL_F_SSL_SET_FD, align 4
  %22 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %23 = call i32 @SSLerr(i32 %21, i32 %22)
  br label %38

24:                                               ; preds = %15
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = call i32 @BIO_set_data(i32* %25, %struct.TYPE_4__* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @SSL_set_bio(i32 %30, i32* %31, i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @BIO_NOCLOSE, align 4
  %37 = call i32 @BIO_set_fd(i32* %34, i32 %35, i32 %36)
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %24, %20, %11
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32* @my_BIO_s_socket(...) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @BIO_new(i32*) #1

declare dso_local i32 @BIO_set_data(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @SSL_set_bio(i32, i32*, i32*) #1

declare dso_local i32 @BIO_set_fd(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
