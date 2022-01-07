; ModuleID = '/home/carl/AnghaBench/radare2/libr/hash/extr_sha2.c_SHA256_End.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/hash/extr_sha2.c_SHA256_End.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@sha2_hex_digits = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SHA256_End(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @SHA256_Final(i32* %14, i32* %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %52, %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load i8**, i8*** @sha2_hex_digits, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 240
  %33 = ashr i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %29, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  store i8 %37, i8* %38, align 1
  %40 = load i8**, i8*** @sha2_hex_digits, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %40, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %8, align 8
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %24

55:                                               ; preds = %24
  %56 = load i8*, i8** %5, align 8
  store i8 0, i8* %56, align 1
  br label %60

57:                                               ; preds = %18
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @r_mem_memzero(i32* %58, i32 4)
  br label %60

60:                                               ; preds = %57, %55
  %61 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %62 = call i32 @r_mem_memzero(i32* %14, i32 %61)
  %63 = load i8*, i8** %5, align 8
  store i8* %63, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %17
  %65 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHA256_Final(i32*, i32*) #2

declare dso_local i32 @r_mem_memzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
