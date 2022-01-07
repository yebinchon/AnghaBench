; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_layout.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_imgfmt_desc = type { i32, i32*, i32*, i32*, i32* }
%struct.mp_image_params = type { i32, i32, i32 }

@MP_MAX_PLANES = common dso_local global i32 0, align 4
@MP_IMGFLAG_HWACCEL = common dso_local global i32 0, align 4
@MP_IMGFLAG_PAL = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32*, i32*)* @mp_image_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_image_layout(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mp_imgfmt_desc, align 8
  %17 = alloca %struct.mp_image_params, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i32, i32* @MP_MAX_PLANES, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* @MP_MAX_PLANES, align 4
  %27 = zext i32 %26 to i64
  %28 = load i32, i32* @MP_MAX_PLANES, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* %9, align 4
  call void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* sret %16, i32 %30)
  %31 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %17, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %17, i32 0, i32 1
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %17, i32 0, i32 2
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %35, align 4
  %37 = call i32 @mp_image_params_valid(%struct.mp_image_params* %17)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %7
  %40 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %16, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MP_IMGFLAG_HWACCEL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %7
  store i32 -1, i32* %8, align 4
  br label %176

46:                                               ; preds = %39
  store i32 0, i32* %18, align 4
  br label %47

47:                                               ; preds = %130, %46
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* @MP_MAX_PLANES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %133

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %16, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mp_chroma_div_up(i32 %52, i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @MP_ALIGN_UP(i32 %60, i32 32)
  %62 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %16, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %61, %67
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %19, align 4
  %70 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %16, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %69, %75
  %77 = add nsw i32 %76, 7
  %78 = sdiv i32 %77, 8
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @MP_ALIGN_UP(i32 %79, i32 %80)
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %110, %51
  %87 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %16, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %86
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %16, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = srem i32 %99, %105
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %94, %86
  %109 = phi i1 [ false, %86 ], [ %107, %94 ]
  br i1 %109, label %110, label %118

110:                                              ; preds = %108
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %111
  store i32 %117, i32* %115, align 4
  br label %86

118:                                              ; preds = %108
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %20, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  br label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %47

133:                                              ; preds = %47
  %134 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %16, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MP_IMGFLAG_PAL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @AVPALETTE_SIZE, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %133
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %144

144:                                              ; preds = %171, %143
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* @MP_MAX_PLANES, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %22, align 4
  br label %158

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %155
  %159 = phi i32 [ %156, %155 ], [ -1, %157 ]
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %23, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* %23, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %22, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %22, align 4
  br label %171

171:                                              ; preds = %158
  %172 = load i32, i32* %23, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %23, align 4
  br label %144

174:                                              ; preds = %144
  %175 = load i32, i32* %22, align 4
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %174, %45
  %177 = load i32, i32* %8, align 4
  ret i32 %177
}

declare dso_local void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* sret, i32) #1

declare dso_local i32 @mp_image_params_valid(%struct.mp_image_params*) #1

declare dso_local i32 @mp_chroma_div_up(i32, i32) #1

declare dso_local i32 @MP_ALIGN_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
