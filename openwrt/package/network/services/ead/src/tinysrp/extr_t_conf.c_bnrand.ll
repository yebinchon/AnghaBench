; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_t_conf.c_bnrand.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_t_conf.c_bnrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32)* @bnrand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnrand(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @BN_zero(i32* %20)
  store i32 1, i32* %6, align 4
  br label %125

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 7
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 1
  %28 = srem i32 %27, 8
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = shl i32 255, %29
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @malloc(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %114

37:                                               ; preds = %22
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @t_random(i8* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 1, i8* %48, align 1
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, 128
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  br label %74

55:                                               ; preds = %43
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %56, 1
  %58 = shl i32 3, %57
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %58
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %60, align 1
  %65 = load i32, i32* %16, align 4
  %66 = shl i32 %65, 1
  %67 = xor i32 %66, -1
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, %67
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  br label %74

74:                                               ; preds = %55, %46
  br label %93

75:                                               ; preds = %37
  %76 = load i32, i32* %14, align 4
  %77 = shl i32 1, %76
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %81, %77
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load i32, i32* %16, align 4
  %85 = shl i32 %84, 1
  %86 = xor i32 %85, -1
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, %86
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  br label %93

93:                                               ; preds = %75, %74
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, 1
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 1
  br label %106

106:                                              ; preds = %96, %93
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @BN_bin2bn(i8* %107, i32 %108, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  br label %114

113:                                              ; preds = %106
  store i32 1, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %112, %36
  %115 = load i8*, i8** %12, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @memset(i8* %118, i32 0, i32 %119)
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @free(i8* %121)
  br label %123

123:                                              ; preds = %117, %114
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %19
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @t_random(i8*, i32) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
