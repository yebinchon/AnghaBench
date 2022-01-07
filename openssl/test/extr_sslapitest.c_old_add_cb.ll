; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_old_add_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_old_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srvaddoldcb = common dso_local global i32 0, align 4
@clntaddoldcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i64*, i32*, i8*)* @old_add_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_add_cb(i32* %0, i32 %1, i8** %2, i64* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @SSL_is_server(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @srvaddoldcb, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @srvaddoldcb, align 4
  br label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @clntaddoldcb, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @clntaddoldcb, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @SSL_is_server(i32* %30)
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = call i8* @OPENSSL_malloc(i32 1)
  store i8* %34, i8** %15, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %27
  store i32 -1, i32* %7, align 4
  br label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %15, align 8
  store i8 1, i8* %38, align 1
  %39 = load i8*, i8** %15, align 8
  %40 = load i8**, i8*** %10, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i64*, i64** %11, align 8
  store i64 1, i64* %41, align 8
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %36
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @SSL_is_server(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
