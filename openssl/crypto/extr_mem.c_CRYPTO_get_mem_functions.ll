; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_mem.c_CRYPTO_get_mem_functions.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_mem.c_CRYPTO_get_mem_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_get_mem_functions(i8* (i64, i8*, i32)** %0, i8* (i8*, i64, i8*, i32)** %1, void (i8*, i8*, i32)** %2) #0 {
  %4 = alloca i8* (i64, i8*, i32)**, align 8
  %5 = alloca i8* (i8*, i64, i8*, i32)**, align 8
  %6 = alloca void (i8*, i8*, i32)**, align 8
  store i8* (i64, i8*, i32)** %0, i8* (i64, i8*, i32)*** %4, align 8
  store i8* (i8*, i64, i8*, i32)** %1, i8* (i8*, i64, i8*, i32)*** %5, align 8
  store void (i8*, i8*, i32)** %2, void (i8*, i8*, i32)*** %6, align 8
  %7 = load i8* (i64, i8*, i32)**, i8* (i64, i8*, i32)*** %4, align 8
  %8 = icmp ne i8* (i64, i8*, i32)** %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i8* (i64, i8*, i32)**, i8* (i64, i8*, i32)*** %4, align 8
  store i8* (i64, i8*, i32)* @malloc_impl, i8* (i64, i8*, i32)** %10, align 8
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i8* (i8*, i64, i8*, i32)**, i8* (i8*, i64, i8*, i32)*** %5, align 8
  %13 = icmp ne i8* (i8*, i64, i8*, i32)** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8* (i8*, i64, i8*, i32)**, i8* (i8*, i64, i8*, i32)*** %5, align 8
  store i8* (i8*, i64, i8*, i32)* @realloc_impl, i8* (i8*, i64, i8*, i32)** %15, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load void (i8*, i8*, i32)**, void (i8*, i8*, i32)*** %6, align 8
  %18 = icmp ne void (i8*, i8*, i32)** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load void (i8*, i8*, i32)**, void (i8*, i8*, i32)*** %6, align 8
  store void (i8*, i8*, i32)* @free_impl, void (i8*, i8*, i32)** %20, align 8
  br label %21

21:                                               ; preds = %19, %16
  ret void
}

declare dso_local i8* @malloc_impl(i64, i8*, i32) #1

declare dso_local i8* @realloc_impl(i8*, i64, i8*, i32) #1

declare dso_local void @free_impl(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
