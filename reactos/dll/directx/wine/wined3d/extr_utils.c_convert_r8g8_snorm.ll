; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_r8g8_snorm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_r8g8_snorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, i32, i32, i32, i32)* @convert_r8g8_snorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_r8g8_snorm(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %22 = alloca i16*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i16, align 2
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

25:                                               ; preds = %92, %9
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %25
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %88, %29
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %91

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
  %46 = bitcast i8* %45 to i16*
  store i16* %46, i16** %22, align 8
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

58:                                               ; preds = %84, %34
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load i16*, i16** %22, align 8
  %64 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %64, i16** %22, align 8
  %65 = load i16, i16* %63, align 2
  store i16 %65, i16* %24, align 2
  %66 = load i8*, i8** %23, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 -1, i8* %67, align 1
  %68 = load i16, i16* %24, align 2
  %69 = sext i16 %68 to i32
  %70 = ashr i32 %69, 8
  %71 = add nsw i32 %70, 128
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %23, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %74, align 1
  %75 = load i16, i16* %24, align 2
  %76 = sext i16 %75 to i32
  %77 = and i32 %76, 255
  %78 = add nsw i32 %77, 128
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %23, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 %79, i8* %81, align 1
  %82 = load i8*, i8** %23, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  store i8* %83, i8** %23, align 8
  br label %84

84:                                               ; preds = %62
  %85 = load i32, i32* %19, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %19, align 4
  br label %58

87:                                               ; preds = %58
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %20, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %20, align 4
  br label %30

91:                                               ; preds = %30
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %21, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %21, align 4
  br label %25

95:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
