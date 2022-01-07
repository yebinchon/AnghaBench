; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_bio_ssl.c_BIO_ssl_copy_session_id.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_bio_ssl.c_BIO_ssl_copy_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@BIO_TYPE_SSL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_ssl_copy_session_id(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @BIO_TYPE_SSL, align 4
  %10 = call i32* @BIO_find_type(i32* %8, i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @BIO_TYPE_SSL, align 4
  %13 = call i32* @BIO_find_type(i32* %11, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %46

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_3__* @BIO_get_data(i32* %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_3__* @BIO_get_data(i32* %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %7, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %20
  store i32 0, i32* %3, align 4
  br label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @SSL_copy_session_id(i32* %38, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %34, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32* @BIO_find_type(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32 @SSL_copy_session_id(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
