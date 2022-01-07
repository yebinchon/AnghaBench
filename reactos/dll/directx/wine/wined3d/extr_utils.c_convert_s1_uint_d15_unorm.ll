; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_s1_uint_d15_unorm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_s1_uint_d15_unorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @convert_s1_uint_d15_unorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_s1_uint_d15_unorm(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  br label %26

26:                                               ; preds = %95, %9
  %27 = load i32, i32* %21, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %98

30:                                               ; preds = %26
  store i32 0, i32* %20, align 4
  br label %31

31:                                               ; preds = %91, %30
  %32 = load i32, i32* %20, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %94

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* %13, align 4
  %39 = mul i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %12, align 4
  %44 = mul i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32* %46, i32** %22, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %15, align 4
  %50 = mul i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %14, align 4
  %55 = mul i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32* %57, i32** %23, align 8
  store i32 0, i32* %19, align 4
  br label %58

58:                                               ; preds = %87, %35
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = load i32*, i32** %22, align 8
  %64 = load i32, i32* %19, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %24, align 4
  %70 = shl i32 %69, 9
  %71 = load i32, i32* %24, align 4
  %72 = ashr i32 %71, 6
  %73 = add nsw i32 %70, %72
  store i32 %73, i32* %25, align 4
  %74 = load i32, i32* %25, align 4
  %75 = shl i32 %74, 8
  %76 = load i32*, i32** %22, align 8
  %77 = load i32, i32* %19, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 1
  %82 = or i32 %75, %81
  %83 = load i32*, i32** %23, align 8
  %84 = load i32, i32* %19, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %62
  %88 = load i32, i32* %19, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %19, align 4
  br label %58

90:                                               ; preds = %58
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %20, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %20, align 4
  br label %31

94:                                               ; preds = %31
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %21, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %21, align 4
  br label %26

98:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
