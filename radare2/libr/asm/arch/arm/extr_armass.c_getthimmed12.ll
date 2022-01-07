; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getthimmed12.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getthimmed12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getthimmed12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getthimmed12(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @getnum(i8* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @err, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %120

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 255
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 8
  store i32 %17, i32* %2, align 4
  br label %120

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, -16711936
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 16711680
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 255
  %27 = shl i32 %26, 16
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, 16
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %120

38:                                               ; preds = %22, %18
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 16711935
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, -16777216
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 65280
  %47 = shl i32 %46, 16
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 65280
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, 32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %120

57:                                               ; preds = %42, %38
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, -16777216
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 16711680
  %62 = shl i32 %61, 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, -16777216
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 65280
  %69 = shl i32 %68, 16
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, -16777216
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 255
  %76 = shl i32 %75, 24
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, 65280
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, 48
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %120

86:                                               ; preds = %71, %64, %57
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @firstsigdigit(i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %119

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 24, %93
  %95 = ashr i32 %92, %94
  %96 = and i32 %95, 127
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 8, %100
  %102 = and i32 %101, 1
  %103 = shl i32 %102, 15
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 8, %106
  %108 = and i32 %107, 14
  %109 = shl i32 %108, 3
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 8, %112
  %114 = and i32 %113, 16
  %115 = shl i32 %114, 14
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %86
  store i32 1, i32* @err, align 4
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %91, %78, %49, %29, %15, %11
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @getnum(i8*) #1

declare dso_local i32 @firstsigdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
