; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_sign_ok.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_sign_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_ppk_n = common dso_local global i64 0, align 8
@g_ppk_d = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdssl_sign_ok(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %34, label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 64
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 64
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 64
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %25, %9
  store i32 1, i32* %10, align 4
  br label %89

35:                                               ; preds = %31
  %36 = call i8* (...) @rdssl_md5_info_create()
  store i8* %36, i8** %22, align 8
  %37 = load i8*, i8** %22, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %89

40:                                               ; preds = %35
  %41 = call i64 @xmalloc(i32 176)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %20, align 8
  %43 = call i64 @xmalloc(i32 64)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %21, align 8
  %45 = load i8*, i8** %20, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = call i32 @memcpy(i8* %45, i8* %46, i32 176)
  %48 = load i8*, i8** %20, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 32
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @memcpy(i8* %49, i8* %50, i32 4)
  %52 = load i8*, i8** %20, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 36
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @memcpy(i8* %53, i8* %54, i32 64)
  %56 = load i8*, i8** %22, align 8
  %57 = call i32 @rdssl_md5_clear(i8* %56)
  %58 = load i8*, i8** %22, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = call i32 @rdssl_md5_transform(i8* %58, i8* %59, i32 108)
  %61 = load i8*, i8** %21, align 8
  %62 = call i32 @memset(i8* %61, i32 255, i32 64)
  %63 = load i8*, i8** %22, align 8
  %64 = load i8*, i8** %21, align 8
  %65 = call i32 @rdssl_md5_complete(i8* %63, i8* %64)
  %66 = load i8*, i8** %21, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 16
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %21, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 62
  store i8 1, i8* %69, align 1
  %70 = load i8*, i8** %21, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 63
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %15, align 8
  %73 = load i8*, i8** %21, align 8
  %74 = load i64, i64* @g_ppk_n, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i64, i64* @g_ppk_d, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @rdssl_mod_exp(i8* %72, i32 64, i8* %73, i32 64, i8* %75, i32 64, i8* %77, i32 64)
  %79 = load i8*, i8** %22, align 8
  %80 = call i32 @rdssl_md5_info_delete(i8* %79)
  %81 = load i8*, i8** %20, align 8
  %82 = call i32 @xfree(i8* %81)
  %83 = load i8*, i8** %21, align 8
  %84 = call i32 @xfree(i8* %83)
  %85 = load i8*, i8** %15, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @memcmp(i8* %85, i8* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %40, %39, %34
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i8* @rdssl_md5_info_create(...) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rdssl_md5_clear(i8*) #1

declare dso_local i32 @rdssl_md5_transform(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rdssl_md5_complete(i8*, i8*) #1

declare dso_local i32 @rdssl_mod_exp(i8*, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @rdssl_md5_info_delete(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
