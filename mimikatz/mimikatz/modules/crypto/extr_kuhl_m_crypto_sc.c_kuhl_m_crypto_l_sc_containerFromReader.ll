; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_sc.c_kuhl_m_crypto_l_sc_containerFromReader.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_sc.c_kuhl_m_crypto_l_sc_containerFromReader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 92, i32 92, i32 46, i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kuhl_m_crypto_l_sc_containerFromReader(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @wcslen(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @LPTR, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, 6
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i64 @LocalAlloc(i32 %7, i32 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @RtlCopyMemory(i32* %17, i8* bitcast ([5 x i32]* @.str to i8*), i32 16)
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @RtlCopyMemory(i32* %20, i8* %21, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @RtlCopyMemory(i32* %31, i8* bitcast ([2 x i32]* @.str.1 to i8*), i32 4)
  br label %33

33:                                               ; preds = %16, %1
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
