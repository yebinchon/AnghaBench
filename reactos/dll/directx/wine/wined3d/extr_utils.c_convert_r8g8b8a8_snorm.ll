; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_r8g8b8a8_snorm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_r8g8b8a8_snorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, i32, i32, i32, i32)* @convert_r8g8b8a8_snorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_r8g8b8a8_snorm(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
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

25:                                               ; preds = %103, %9
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %106

29:                                               ; preds = %25
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %99, %29
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %102

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
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %22, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %15, align 4
  %50 = mul i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %14, align 4
  %55 = mul i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8* %57, i8** %23, align 8
  store i32 0, i32* %19, align 4
  br label %58

58:                                               ; preds = %95, %34
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %58
  %63 = load i32*, i32** %22, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %22, align 8
  %65 = load i32, i32* %63, align 4
  store i32 %65, i32* %24, align 4
  %66 = load i32, i32* %24, align 4
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = add nsw i32 %68, 128
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %23, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 %70, i8* %72, align 1
  %73 = load i32, i32* %24, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = add nsw i32 %75, 128
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %23, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8 %77, i8* %79, align 1
  %80 = load i32, i32* %24, align 4
  %81 = and i32 %80, 255
  %82 = add nsw i32 %81, 128
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %23, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %24, align 4
  %87 = ashr i32 %86, 24
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, 128
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %23, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  store i8 %90, i8* %92, align 1
  %93 = load i8*, i8** %23, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %23, align 8
  br label %95

95:                                               ; preds = %62
  %96 = load i32, i32* %19, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %19, align 4
  br label %58

98:                                               ; preds = %58
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %20, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %20, align 4
  br label %30

102:                                              ; preds = %30
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %21, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %21, align 4
  br label %25

106:                                              ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
