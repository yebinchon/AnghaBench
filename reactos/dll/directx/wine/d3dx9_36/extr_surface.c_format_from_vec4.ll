; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_format_from_vec4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_format_from_vec4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel_format_desc = type { i32*, i64, i32*, i32 }
%struct.vec4 = type { i32 }

@format_from_vec4.component_offsets = internal constant [4 x i32] [i32 3, i32 0, i32 1, i32 2], align 16
@FORMAT_ARGBF16 = common dso_local global i64 0, align 8
@FORMAT_ARGBF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pixel_format_desc*, %struct.vec4*, i32*)* @format_from_vec4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_from_vec4(%struct.pixel_format_desc* %0, %struct.vec4* %1, i32* %2) #0 {
  %4 = alloca %struct.pixel_format_desc*, align 8
  %5 = alloca %struct.vec4*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pixel_format_desc* %0, %struct.pixel_format_desc** %4, align 8
  store %struct.vec4* %1, %struct.vec4** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %16 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @memset(i32* %14, i32 0, i32 %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %185, %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %188

22:                                               ; preds = %19
  %23 = load %struct.vec4*, %struct.vec4** %5, align 8
  %24 = bitcast %struct.vec4* %23 to float*
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* @format_from_vec4.component_offsets, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %24, i64 %29
  %31 = load float, float* %30, align 4
  store float %31, float* %11, align 4
  %32 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %33 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %22
  br label %185

41:                                               ; preds = %22
  %42 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %43 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 32, %48
  %50 = lshr i32 -1, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %52 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FORMAT_ARGBF16, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load float, float* %11, align 4
  %58 = call i32 @float_32_to_16(float %57)
  store i32 %58, i32* %7, align 4
  br label %84

59:                                               ; preds = %41
  %60 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %61 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FORMAT_ARGBF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = bitcast float* %11 to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  br label %83

68:                                               ; preds = %59
  %69 = load float, float* %11, align 4
  %70 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %71 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 1, %76
  %78 = sub nsw i32 %77, 1
  %79 = sitofp i32 %78 to float
  %80 = fmul float %69, %79
  %81 = fadd float %80, 5.000000e-01
  %82 = fptoui float %81 to i32
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %68, %65
  br label %84

84:                                               ; preds = %83, %56
  %85 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %86 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 8
  %93 = mul nsw i32 %92, 8
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %181, %84
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %97 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %104 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %102, %109
  %111 = icmp ult i32 %95, %110
  br i1 %111, label %112, label %184

112:                                              ; preds = %94
  %113 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %114 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ugt i32 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %112
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %125 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sub i32 %130, %131
  %133 = shl i32 %123, %132
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %136 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = sub i32 %141, %142
  %144 = shl i32 %134, %143
  %145 = load i32, i32* %12, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %13, align 4
  br label %172

147:                                              ; preds = %112
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %151 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = sub i32 %149, %156
  %158 = lshr i32 %148, %157
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %162 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = sub i32 %160, %167
  %169 = lshr i32 %159, %168
  %170 = load i32, i32* %12, align 4
  %171 = and i32 %169, %170
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %147, %122
  %173 = load i32, i32* %13, align 4
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %10, align 4
  %176 = udiv i32 %175, 8
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %173
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %10, align 4
  %183 = add i32 %182, 8
  store i32 %183, i32* %10, align 4
  br label %94

184:                                              ; preds = %94
  br label %185

185:                                              ; preds = %184, %40
  %186 = load i32, i32* %9, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %19

188:                                              ; preds = %19
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @float_32_to_16(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
