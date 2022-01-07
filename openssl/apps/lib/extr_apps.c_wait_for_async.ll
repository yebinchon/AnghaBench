; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_wait_for_async.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_wait_for_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"allocate async fds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_for_async(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @SSL_get_all_async_fds(i32* %8, i64* null, i64* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %65

12:                                               ; preds = %1
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %65

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i64* @app_malloc(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i64* %20, i64** %5, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = call i32 @SSL_get_all_async_fds(i32* %21, i64* %22, i64* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i64*, i64** %5, align 8
  %27 = call i32 @OPENSSL_free(i64* %26)
  br label %65

28:                                               ; preds = %16
  %29 = call i32 @FD_ZERO(i32* %4)
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %56, %28
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp sle i32 %35, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %34
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @openssl_fdset(i32 %54, i32* %4)
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* %3, align 4
  %61 = bitcast i32* %4 to i8*
  %62 = call i32 @select(i32 %60, i8* %61, i32* null, i32* null, i32* null)
  %63 = load i64*, i64** %5, align 8
  %64 = call i32 @OPENSSL_free(i64* %63)
  br label %65

65:                                               ; preds = %59, %25, %15, %11
  ret void
}

declare dso_local i32 @SSL_get_all_async_fds(i32*, i64*, i64*) #1

declare dso_local i64* @app_malloc(i32, i8*) #1

declare dso_local i32 @OPENSSL_free(i64*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @openssl_fdset(i32, i32*) #1

declare dso_local i32 @select(i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
