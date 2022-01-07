; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_r5g5_snorm_l6_unorm_ext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_r5g5_snorm_l6_unorm_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, i32, i32, i32, i32)* @convert_r5g5_snorm_l6_unorm_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_r5g5_snorm_l6_unorm_ext(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i16*, align 8
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
  br label %29

29:                                               ; preds = %148, %9
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %151

33:                                               ; preds = %29
  store i32 0, i32* %20, align 4
  br label %34

34:                                               ; preds = %144, %33
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %147

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %13, align 4
  %42 = mul i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %12, align 4
  %47 = mul i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = bitcast i8* %49 to i16*
  store i16* %50, i16** %28, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %15, align 4
  %54 = mul i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %14, align 4
  %59 = mul i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  store i8* %61, i8** %22, align 8
  store i32 0, i32* %19, align 4
  br label %62

62:                                               ; preds = %140, %38
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %143

66:                                               ; preds = %62
  %67 = load i16*, i16** %28, align 8
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 64512
  %71 = lshr i32 %70, 10
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %27, align 1
  %73 = load i16*, i16** %28, align 8
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %75, 992
  %77 = lshr i32 %76, 5
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %26, align 1
  %79 = load i16*, i16** %28, align 8
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %81, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %25, align 1
  %84 = load i8, i8* %25, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 3
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %23, align 1
  %88 = load i8, i8* %25, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 16
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %66
  %93 = load i8, i8* %25, align 1
  %94 = zext i8 %93 to i32
  %95 = ashr i32 %94, 1
  %96 = load i8, i8* %23, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, %95
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %23, align 1
  br label %100

100:                                              ; preds = %92, %66
  %101 = load i8, i8* %26, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 3
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %24, align 1
  %105 = load i8, i8* %26, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 16
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %100
  %110 = load i8, i8* %26, align 1
  %111 = zext i8 %110 to i32
  %112 = ashr i32 %111, 1
  %113 = load i8, i8* %24, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %24, align 1
  br label %117

117:                                              ; preds = %109, %100
  %118 = load i8, i8* %23, align 1
  %119 = load i8*, i8** %22, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %118, i8* %120, align 1
  %121 = load i8, i8* %24, align 1
  %122 = load i8*, i8** %22, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  store i8 %121, i8* %123, align 1
  %124 = load i8, i8* %27, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 1
  %127 = load i8, i8* %27, align 1
  %128 = zext i8 %127 to i32
  %129 = ashr i32 %128, 5
  %130 = or i32 %126, %129
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %22, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  store i8 %131, i8* %133, align 1
  %134 = load i8*, i8** %22, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  store i8 0, i8* %135, align 1
  %136 = load i8*, i8** %22, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 4
  store i8* %137, i8** %22, align 8
  %138 = load i16*, i16** %28, align 8
  %139 = getelementptr inbounds i16, i16* %138, i32 1
  store i16* %139, i16** %28, align 8
  br label %140

140:                                              ; preds = %117
  %141 = load i32, i32* %19, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %19, align 4
  br label %62

143:                                              ; preds = %62
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %20, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %20, align 4
  br label %34

147:                                              ; preds = %34
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %21, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %21, align 4
  br label %29

151:                                              ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
