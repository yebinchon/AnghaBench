; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_UNENCRYPT.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_UNENCRYPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @UNENCRYPT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UNENCRYPT(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %11, align 4
  br label %32

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = srem i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %104, %32
  %35 = load i32, i32* %13, align 4
  %36 = icmp uge i32 %35, 1
  br i1 %36, label %37, label %107

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @READ(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %7, align 4
  %56 = srem i32 %54, %55
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %61, %49
  br label %70

63:                                               ; preds = %41
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %14, align 4
  %69 = srem i32 %68, %67
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %63, %62
  br label %101

71:                                               ; preds = %37
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @READ(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %71
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %8, align 4
  %86 = srem i32 %84, %85
  %87 = sub nsw i32 %83, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %79
  br label %100

93:                                               ; preds = %71
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %14, align 4
  %99 = srem i32 %98, %97
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %93, %92
  br label %101

101:                                              ; preds = %100, %70
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = add i32 %105, -1
  store i32 %106, i32* %13, align 4
  br label %34

107:                                              ; preds = %34
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %110, %111
  ret i32 %112
}

declare dso_local i32 @READ(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
