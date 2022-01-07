; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_pick_lfn.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_pick_lfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDIR_FstClusLO = common dso_local global i32 0, align 4
@LDIR_Ord = common dso_local global i64 0, align 8
@LLEF = common dso_local global i32 0, align 4
@LfnOfs = common dso_local global i32* null, align 8
@FF_MAX_LFN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pick_lfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pick_lfn(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @LDIR_FstClusLO, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @ld_word(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* @LDIR_Ord, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LLEF, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = sub nsw i32 %24, 1
  %26 = mul nsw i32 %25, 13
  store i32 %26, i32* %6, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %60, %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 13
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** @LfnOfs, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = call i32 @ld_word(i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FF_MAX_LFN, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %82

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  br label %59

54:                                               ; preds = %30
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 65535
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %82

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %27

63:                                               ; preds = %27
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* @LDIR_Ord, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @LLEF, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @FF_MAX_LFN, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %82

76:                                               ; preds = %71
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %63
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %75, %57, %46, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @ld_word(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
