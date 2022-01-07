; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/crypto/extr_kuhl_m_sekurlsa_nt5.c_SymCryptDesxCbcDecrypt2.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/crypto/extr_kuhl_m_sekurlsa_nt5.c_SymCryptDesxCbcDecrypt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SymCryptDesxCbcDecrypt2(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [8 x i32], align 16
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %11, align 4
  %16 = and i32 %15, -8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32* %18, i32** %12, align 8
  br label %19

19:                                               ; preds = %39, %5
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @RtlCopyMemory(i32* %24, i32* %25, i32 8)
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @SymCryptDesxDecrypt2(i32 %27, i32* %28, i32* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %38 = call i32 @RtlCopyMemory(i32* %36, i32* %37, i32 8)
  br label %39

39:                                               ; preds = %23
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32* %43, i32** %9, align 8
  br label %19

44:                                               ; preds = %19
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @SymCryptDesxDecrypt2(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
