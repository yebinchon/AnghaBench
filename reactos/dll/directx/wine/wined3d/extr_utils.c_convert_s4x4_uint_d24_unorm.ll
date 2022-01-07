; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_s4x4_uint_d24_unorm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_s4x4_uint_d24_unorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @convert_s4x4_uint_d24_unorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_s4x4_uint_d24_unorm(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %24

24:                                               ; preds = %79, %9
  %25 = load i32, i32* %21, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %24
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %75, %28
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32* %44, i32** %22, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %15, align 4
  %48 = mul i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %14, align 4
  %53 = mul i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32* %55, i32** %23, align 8
  store i32 0, i32* %19, align 4
  br label %56

56:                                               ; preds = %71, %33
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32*, i32** %22, align 8
  %62 = load i32, i32* %19, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -241
  %67 = load i32*, i32** %23, align 8
  %68 = load i32, i32* %19, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %19, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %19, align 4
  br label %56

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %20, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %20, align 4
  br label %29

78:                                               ; preds = %29
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %21, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %21, align 4
  br label %24

82:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
