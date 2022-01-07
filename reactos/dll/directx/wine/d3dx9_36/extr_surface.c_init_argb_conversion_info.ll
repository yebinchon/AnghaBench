; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_init_argb_conversion_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_init_argb_conversion_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel_format_desc = type { i32*, i32* }
%struct.argb_conversion_info = type { i32, i32*, i32*, i32*, i8**, i8**, %struct.pixel_format_desc*, %struct.pixel_format_desc* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pixel_format_desc*, %struct.pixel_format_desc*, %struct.argb_conversion_info*)* @init_argb_conversion_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_argb_conversion_info(%struct.pixel_format_desc* %0, %struct.pixel_format_desc* %1, %struct.argb_conversion_info* %2) #0 {
  %4 = alloca %struct.pixel_format_desc*, align 8
  %5 = alloca %struct.pixel_format_desc*, align 8
  %6 = alloca %struct.argb_conversion_info*, align 8
  %7 = alloca i32, align 4
  store %struct.pixel_format_desc* %0, %struct.pixel_format_desc** %4, align 8
  store %struct.pixel_format_desc* %1, %struct.pixel_format_desc** %5, align 8
  store %struct.argb_conversion_info* %2, %struct.argb_conversion_info** %6, align 8
  %8 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %9 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ZeroMemory(i32* %10, i32 16)
  %12 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %13 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %15 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %16 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %15, i32 0, i32 7
  store %struct.pixel_format_desc* %14, %struct.pixel_format_desc** %16, align 8
  %17 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %5, align 8
  %18 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %19 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %18, i32 0, i32 6
  store %struct.pixel_format_desc* %17, %struct.pixel_format_desc** %19, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %171, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %174

23:                                               ; preds = %20
  %24 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %25 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %32 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %5, align 8
  %39 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %37, %44
  %46 = call i8* @max(i32 %45, i32 0)
  %47 = sext i32 %30 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  %49 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %50 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %49, i32 0, i32 5
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  %55 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %5, align 8
  %56 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %5, align 8
  %63 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %70 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %68, %75
  %77 = call i8* @max(i32 %76, i32 0)
  %78 = sext i32 %61 to i64
  %79 = getelementptr i8, i8* %77, i64 %78
  %80 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %81 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %80, i32 0, i32 4
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %79, i8** %85, align 8
  %86 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %87 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 1, %92
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %96 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %94, %101
  %103 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %104 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %5, align 8
  %110 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 1, %115
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %5, align 8
  %119 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %117, %124
  %126 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %127 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %5, align 8
  %133 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %23
  %141 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %142 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %140
  %150 = load i32, i32* @TRUE, align 4
  %151 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %152 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  br label %169

157:                                              ; preds = %140
  %158 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %159 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %6, align 8
  %166 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %157, %149
  br label %170

170:                                              ; preds = %169, %23
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %20

174:                                              ; preds = %20
  ret void
}

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
