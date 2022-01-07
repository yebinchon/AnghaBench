; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/signature/extr_dsa.c_dsa_digest_signverify_init.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/signature/extr_dsa.c_dsa_digest_signverify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @dsa_digest_signverify_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_digest_signverify_init(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @dsa_signature_init(i8* %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32* @EVP_MD_fetch(i32 %22, i8* %23, i8* %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %54

29:                                               ; preds = %19
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @EVP_MD_size(i32* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = call i32* (...) @EVP_MD_CTX_new()
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %54

45:                                               ; preds = %29
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @EVP_DigestInit_ex(i32* %48, i32* %49, i32* null)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %54

53:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %52, %44, %28, %18
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @dsa_signature_init(i8*, i8*) #1

declare dso_local i32* @EVP_MD_fetch(i32, i8*, i8*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
