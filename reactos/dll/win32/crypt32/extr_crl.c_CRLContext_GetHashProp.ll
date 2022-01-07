; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_crl.c_CRLContext_GetHashProp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_crl.c_CRLContext_GetHashProp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32*, i32, i8*, i32*)* @CRLContext_GetHashProp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRLContext_GetHashProp(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i8*, i8** %13, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i64 @CryptHashCertificate(i32 0, i32 %17, i32 0, i32* %18, i32 %19, i8* %20, i32* %21)
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %15, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %7
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %29, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %35 = load i8*, i8** %13, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %34, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @CRLContext_SetProperty(i32* %37, i32 %38, i32 0, %struct.TYPE_3__* %16)
  store i64 %39, i64* %15, align 8
  br label %40

40:                                               ; preds = %28, %25, %7
  %41 = load i64, i64* %15, align 8
  ret i64 %41
}

declare dso_local i64 @CryptHashCertificate(i32, i32, i32, i32*, i32, i8*, i32*) #1

declare dso_local i64 @CRLContext_SetProperty(i32*, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
