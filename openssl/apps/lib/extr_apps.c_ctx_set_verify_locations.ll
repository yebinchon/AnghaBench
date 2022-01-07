; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_ctx_set_verify_locations.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_ctx_set_verify_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctx_set_verify_locations(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %7
  %19 = load i8*, i8** %12, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i8*, i8** %14, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @SSL_CTX_set_default_verify_file(i32* %28)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %77

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @SSL_CTX_set_default_verify_dir(i32* %36)
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %77

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @SSL_CTX_set_default_verify_store(i32* %44)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %77

48:                                               ; preds = %43, %40
  store i32 1, i32* %8, align 4
  br label %77

49:                                               ; preds = %21, %18, %7
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32*, i32** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @SSL_CTX_load_verify_file(i32* %53, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %77

58:                                               ; preds = %52, %49
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32*, i32** %9, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @SSL_CTX_load_verify_dir(i32* %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %77

67:                                               ; preds = %61, %58
  %68 = load i8*, i8** %14, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32*, i32** %9, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @SSL_CTX_load_verify_store(i32* %71, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %77

76:                                               ; preds = %70, %67
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %75, %66, %57, %48, %47, %39, %31
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i64 @SSL_CTX_set_default_verify_file(i32*) #1

declare dso_local i64 @SSL_CTX_set_default_verify_dir(i32*) #1

declare dso_local i64 @SSL_CTX_set_default_verify_store(i32*) #1

declare dso_local i32 @SSL_CTX_load_verify_file(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_load_verify_dir(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_load_verify_store(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
