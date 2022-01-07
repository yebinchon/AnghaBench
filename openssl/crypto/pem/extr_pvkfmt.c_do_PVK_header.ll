; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_do_PVK_header.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_do_PVK_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_F_DO_PVK_HEADER = common dso_local global i32 0, align 4
@PEM_R_PVK_TOO_SHORT = common dso_local global i32 0, align 4
@MS_PVKMAGIC = common dso_local global i32 0, align 4
@PEM_R_BAD_MAGIC_NUMBER = common dso_local global i32 0, align 4
@PVK_MAX_KEYLEN = common dso_local global i32 0, align 4
@PVK_MAX_SALTLEN = common dso_local global i32 0, align 4
@PEM_R_INCONSISTENT_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32, i32*, i32*)* @do_PVK_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_PVK_header(i8** %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %20, 20
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @PEM_F_DO_PVK_HEADER, align 4
  %24 = load i32, i32* @PEM_R_PVK_TOO_SHORT, align 4
  %25 = call i32 @PEMerr(i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %77

26:                                               ; preds = %19
  br label %44

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = icmp ult i32 %28, 24
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @PEM_F_DO_PVK_HEADER, align 4
  %32 = load i32, i32* @PEM_R_PVK_TOO_SHORT, align 4
  %33 = call i32 @PEMerr(i32 %31, i32 %32)
  store i32 0, i32* %6, align 4
  br label %77

34:                                               ; preds = %27
  %35 = call i32 @read_ledword(i8** %12)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @MS_PVKMAGIC, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @PEM_F_DO_PVK_HEADER, align 4
  %41 = load i32, i32* @PEM_R_BAD_MAGIC_NUMBER, align 4
  %42 = call i32 @PEMerr(i32 %40, i32 %41)
  store i32 0, i32* %6, align 4
  br label %77

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %46, i8** %12, align 8
  %47 = call i32 @read_ledword(i8** %12)
  %48 = call i32 @read_ledword(i8** %12)
  store i32 %48, i32* %14, align 4
  %49 = call i32 @read_ledword(i8** %12)
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = call i32 @read_ledword(i8** %12)
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PVK_MAX_KEYLEN, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %44
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PVK_MAX_SALTLEN, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %44
  store i32 0, i32* %6, align 4
  br label %77

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @PEM_F_DO_PVK_HEADER, align 4
  %72 = load i32, i32* @PEM_R_INCONSISTENT_HEADER, align 4
  %73 = call i32 @PEMerr(i32 %71, i32 %72)
  store i32 0, i32* %6, align 4
  br label %77

74:                                               ; preds = %66, %63
  %75 = load i8*, i8** %12, align 8
  %76 = load i8**, i8*** %7, align 8
  store i8* %75, i8** %76, align 8
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %70, %62, %39, %30, %22
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @read_ledword(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
