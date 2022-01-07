; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_l4a4_unorm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_l4a4_unorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, i32, i32, i32, i32)* @convert_l4a4_unorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_l4a4_unorm(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
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
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8, align 1
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %89, %9
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %25
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %85, %29
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %21, align 4
  %37 = load i32, i32* %13, align 4
  %38 = mul i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %22, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %15, align 4
  %49 = mul i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %14, align 4
  %54 = mul i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8* %56, i8** %23, align 8
  store i32 0, i32* %19, align 4
  br label %57

57:                                               ; preds = %81, %34
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load i8*, i8** %22, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %22, align 8
  %64 = load i8, i8* %62, align 1
  store i8 %64, i8* %24, align 1
  %65 = load i8, i8* %24, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 240
  %68 = shl i32 %67, 0
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %23, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %69, i8* %71, align 1
  %72 = load i8, i8* %24, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 15
  %75 = shl i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %23, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %76, i8* %78, align 1
  %79 = load i8*, i8** %23, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %23, align 8
  br label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %19, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %19, align 4
  br label %57

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %20, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %20, align 4
  br label %30

88:                                               ; preds = %30
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %21, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %21, align 4
  br label %25

92:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
