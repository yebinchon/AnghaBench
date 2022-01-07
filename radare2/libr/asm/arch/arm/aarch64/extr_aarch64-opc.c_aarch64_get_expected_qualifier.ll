; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_get_expected_qualifier.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_get_expected_qualifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AARCH64_OPND_NIL = common dso_local global i64 0, align 8
@AARCH64_MAX_QLF_SEQ_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @aarch64_get_expected_qualifier(i64** %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64** %0, i64*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @AARCH64_OPND_NIL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load i64**, i64*** %6, align 8
  %17 = getelementptr inbounds i64*, i64** %16, i64 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AARCH64_OPND_NIL, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64**, i64*** %6, align 8
  %28 = getelementptr inbounds i64*, i64** %27, i64 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  br label %72

34:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @AARCH64_MAX_QLF_SEQ_NUM, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load i64**, i64*** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64*, i64** %40, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* @AARCH64_OPND_NIL, align 8
  store i64 %55, i64* %5, align 8
  br label %72

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %39
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load i64**, i64*** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64*, i64** %63, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %62, %54, %15
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
