; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_new_add_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_new_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srvaddnewcb = common dso_local global i32 0, align 4
@clntaddnewcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8**, i64*, i32*, i64, i32*, i8*)* @new_add_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_add_cb(i32* %0, i32 %1, i32 %2, i8** %3, i64* %4, i32* %5, i64 %6, i32* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8** %3, i8*** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  %22 = load i8*, i8** %19, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @SSL_is_server(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %9
  %28 = load i32, i32* @srvaddnewcb, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @srvaddnewcb, align 4
  br label %33

30:                                               ; preds = %9
  %31 = load i32, i32* @clntaddnewcb, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @clntaddnewcb, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %20, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @SSL_is_server(i32* %36)
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = call i8* @OPENSSL_malloc(i32 1)
  store i8* %40, i8** %21, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %33
  store i32 -1, i32* %10, align 4
  br label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %21, align 8
  store i8 1, i8* %44, align 1
  %45 = load i8*, i8** %21, align 8
  %46 = load i8**, i8*** %14, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i64*, i64** %15, align 8
  store i64 1, i64* %47, align 8
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local i32 @SSL_is_server(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
