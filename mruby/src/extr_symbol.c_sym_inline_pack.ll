; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_symbol.c_sym_inline_pack.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_symbol.c_sym_inline_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MRB_SYMBOL_BITSIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@pack_table = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@SYMBOL_INLINE_SHIFT = common dso_local global i32 0, align 4
@SYMBOL_INLINE = common dso_local global i32 0, align 4
@SYMBOL_INLINE_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @sym_inline_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_inline_pack(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @MRB_SYMBOL_BITSIZE, align 4
  %16 = sub nsw i32 %15, 2
  %17 = sdiv i32 %16, 5
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @MRB_SYMBOL_BITSIZE, align 4
  %19 = sub nsw i32 %18, 2
  %20 = sdiv i32 %19, 6
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %129

26:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %75, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %8, align 1
  %37 = load i8, i8* %8, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %129

41:                                               ; preds = %31
  %42 = load i8*, i8** @pack_table, align 8
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = call i8* @strchr(i8* %42, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %129

49:                                               ; preds = %41
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** @pack_table, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 27
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* @FALSE, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %59, %49
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %78

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %68, 6
  %70 = load i32, i32* @SYMBOL_INLINE_SHIFT, align 4
  %71 = add nsw i32 %69, %70
  %72 = shl i32 %67, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %27

78:                                               ; preds = %65, %27
  %79 = load i64, i64* %12, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %111, %81
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %8, align 1
  %92 = load i8*, i8** @pack_table, align 8
  %93 = load i8, i8* %8, align 1
  %94 = sext i8 %93 to i32
  %95 = call i8* @strchr(i8* %92, i32 %94)
  store i8* %95, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** @pack_table, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %104, 5
  %106 = load i32, i32* @SYMBOL_INLINE_SHIFT, align 4
  %107 = add nsw i32 %105, %106
  %108 = shl i32 %103, %107
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %86
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %82

114:                                              ; preds = %82
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @SYMBOL_INLINE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SYMBOL_INLINE_LOWER, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %3, align 4
  br label %129

120:                                              ; preds = %78
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %129

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @SYMBOL_INLINE, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %124, %114, %48, %40, %25
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i8* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
