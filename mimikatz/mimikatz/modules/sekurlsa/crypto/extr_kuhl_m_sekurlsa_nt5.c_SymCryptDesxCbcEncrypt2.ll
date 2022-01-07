; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/crypto/extr_kuhl_m_sekurlsa_nt5.c_SymCryptDesxCbcEncrypt2.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/crypto/extr_kuhl_m_sekurlsa_nt5.c_SymCryptDesxCbcEncrypt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SymCryptDesxCbcEncrypt2(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %11, align 4
  %15 = and i32 %14, -8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32* %17, i32** %12, align 8
  br label %18

18:                                               ; preds = %37, %5
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp ult i32* %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @SymCryptDesxEncrypt2(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @RtlCopyMemory(i32 %34, i32 %35, i32 8)
  br label %37

37:                                               ; preds = %22
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %10, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @SymCryptDesxEncrypt2(i32, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
