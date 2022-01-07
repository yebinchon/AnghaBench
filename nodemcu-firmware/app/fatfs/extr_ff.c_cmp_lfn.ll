; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_cmp_lfn.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_cmp_lfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDIR_FstClusLO = common dso_local global i32 0, align 4
@LDIR_Ord = common dso_local global i64 0, align 8
@LfnOfs = common dso_local global i32* null, align 8
@FF_MAX_LFN = common dso_local global i32 0, align 4
@LLEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @cmp_lfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_lfn(i32* %0, i32* %1) #0 {
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
  br label %87

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* @LDIR_Ord, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 63
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %23, 13
  store i32 %24, i32* %6, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %64, %17
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 13
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** @LfnOfs, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  %37 = call i32 @ld_word(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FF_MAX_LFN, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @ff_wtoupper(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ff_wtoupper(i32 %52)
  %54 = icmp ne i64 %46, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44, %40
  store i32 0, i32* %3, align 4
  br label %87

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %8, align 4
  br label %63

58:                                               ; preds = %28
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 65535
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %87

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %25

67:                                               ; preds = %25
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* @LDIR_Ord, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @LLEF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %87

86:                                               ; preds = %78, %75, %67
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85, %61, %55, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ld_word(i32*) #1

declare dso_local i64 @ff_wtoupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
