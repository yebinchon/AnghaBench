; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_get_cipher_name_pair.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_get_cipher_name_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@tls_cipher_name_translation_table = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @tls_get_cipher_name_pair(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tls_cipher_name_translation_table, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %6, align 8
  br label %8

8:                                                ; preds = %45, %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @strlen(i32* %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @memcmp(i8* %21, i32* %24, i64 %25)
  %27 = icmp eq i64 0, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %20, %13
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @strlen(i32* %31)
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @memcmp(i8* %36, i32* %39, i64 %40)
  %42 = icmp eq i64 0, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %20
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %3, align 8
  br label %49

45:                                               ; preds = %35, %28
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 1
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %6, align 8
  br label %8

48:                                               ; preds = %8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %49

49:                                               ; preds = %48, %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %50
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @memcmp(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
