; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_bio_ssl.c_BIO_ssl_shutdown.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_bio_ssl.c_BIO_ssl_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@BIO_TYPE_SSL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BIO_ssl_shutdown(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @BIO_method_type(i32* %8)
  %10 = load i64, i64* @BIO_TYPE_SSL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %29

13:                                               ; preds = %7
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_3__* @BIO_get_data(i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @SSL_shutdown(i32* %26)
  br label %28

28:                                               ; preds = %23, %18, %13
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @BIO_next(i32* %30)
  store i32* %31, i32** %2, align 8
  br label %4

32:                                               ; preds = %4
  ret void
}

declare dso_local i64 @BIO_method_type(i32*) #1

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
