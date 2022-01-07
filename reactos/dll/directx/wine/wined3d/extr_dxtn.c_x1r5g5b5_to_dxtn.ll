; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_x1r5g5b5_to_dxtn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_x1r5g5b5_to_dxtn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x1r5g5b5_to_dxtn.convert_5to8 = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16
@.str = private unnamed_addr constant [41 x i8] c"Converting %ux%u pixels, pitches %u %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to allocate memory for conversion\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32, i32, i32, i64)* @x1r5g5b5_to_dxtn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @x1r5g5b5_to_dxtn(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
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
  store i64 %7, i64* %17, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %14, align 4
  %32 = mul i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32* @HeapAlloc(i32 %29, i32 0, i32 %35)
  store i32* %36, i32** %20, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %8
  %40 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %9, align 8
  br label %157

42:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %142, %42
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %145

47:                                               ; preds = %43
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %22, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %14, align 4
  %57 = mul i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %23, align 8
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %138, %47
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %141

64:                                               ; preds = %60
  %65 = load i32*, i32** %22, align 8
  %66 = load i32, i32* %18, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %21, align 4
  %70 = load i64, i64* %17, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %64
  %73 = load i32, i32* %21, align 4
  %74 = and i32 %73, 32768
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 -16777216, i32 0
  %78 = load i32, i32* %21, align 4
  %79 = and i32 %78, 31
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* @x1r5g5b5_to_dxtn.convert_5to8, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 16
  %85 = or i32 %77, %84
  %86 = load i32, i32* %21, align 4
  %87 = and i32 %86, 992
  %88 = ashr i32 %87, 5
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* @x1r5g5b5_to_dxtn.convert_5to8, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = or i32 %85, %93
  %95 = load i32, i32* %21, align 4
  %96 = and i32 %95, 31744
  %97 = ashr i32 %96, 10
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* @x1r5g5b5_to_dxtn.convert_5to8, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %94, %101
  %103 = load i32*, i32** %23, align 8
  %104 = load i32, i32* %18, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %137

107:                                              ; preds = %64
  %108 = load i32, i32* %21, align 4
  %109 = and i32 %108, 31
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* @x1r5g5b5_to_dxtn.convert_5to8, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 16
  %115 = or i32 -16777216, %114
  %116 = load i32, i32* %21, align 4
  %117 = and i32 %116, 992
  %118 = ashr i32 %117, 5
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* @x1r5g5b5_to_dxtn.convert_5to8, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl i32 %122, 8
  %124 = or i32 %115, %123
  %125 = load i32, i32* %21, align 4
  %126 = and i32 %125, 31744
  %127 = ashr i32 %126, 10
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* @x1r5g5b5_to_dxtn.convert_5to8, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %124, %131
  %133 = load i32*, i32** %23, align 8
  %134 = load i32, i32* %18, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %107, %72
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %18, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %18, align 4
  br label %60

141:                                              ; preds = %60
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %19, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %19, align 4
  br label %43

145:                                              ; preds = %43
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32*, i32** %20, align 8
  %149 = load i32, i32* %16, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @ptx_compress_dxtn(i32 4, i32 %146, i32 %147, i32* %148, i32 %149, i32* %150, i32 %151)
  %153 = call i32 (...) @GetProcessHeap()
  %154 = load i32*, i32** %20, align 8
  %155 = call i32 @HeapFree(i32 %153, i32 0, i32* %154)
  %156 = load i64, i64* @TRUE, align 8
  store i64 %156, i64* %9, align 8
  br label %157

157:                                              ; preds = %145, %39
  %158 = load i64, i64* %9, align 8
  ret i64 %158
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @ptx_compress_dxtn(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
