; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_d2.c_X509_STORE_set_default_paths.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_d2.c_X509_STORE_set_default_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_FILETYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_STORE_set_default_paths(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 (...) @X509_LOOKUP_file()
  %7 = call i32* @X509_STORE_add_lookup(i32* %5, i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @X509_FILETYPE_DEFAULT, align 4
  %14 = call i32 @X509_LOOKUP_load_file(i32* %12, i32* null, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (...) @X509_LOOKUP_hash_dir()
  %17 = call i32* @X509_STORE_add_lookup(i32* %15, i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %35

21:                                               ; preds = %11
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @X509_FILETYPE_DEFAULT, align 4
  %24 = call i32 @X509_LOOKUP_add_dir(i32* %22, i32* null, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (...) @X509_LOOKUP_store()
  %27 = call i32* @X509_STORE_add_lookup(i32* %25, i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @X509_LOOKUP_add_store(i32* %32, i32* null)
  %34 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %30, %20, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_file(...) #1

declare dso_local i32 @X509_LOOKUP_load_file(i32*, i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_hash_dir(...) #1

declare dso_local i32 @X509_LOOKUP_add_dir(i32*, i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_store(...) #1

declare dso_local i32 @X509_LOOKUP_add_store(i32*, i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
