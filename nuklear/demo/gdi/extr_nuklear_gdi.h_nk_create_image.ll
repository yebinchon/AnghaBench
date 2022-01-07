; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_create_image.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_create_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_image = type { i32, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_image*, i8*, i32, i32)* @nk_create_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_create_image(%struct.nk_image* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nk_image*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nk_image* %0, %struct.nk_image** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.nk_image*, %struct.nk_image** %5, align 8
  %18 = icmp ne %struct.nk_image* %17, null
  br i1 %18, label %19, label %145

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %145

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %145

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.nk_image*, %struct.nk_image** %5, align 8
  %31 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.nk_image*, %struct.nk_image** %5, align 8
  %34 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nk_image*, %struct.nk_image** %5, align 8
  %36 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.nk_image*, %struct.nk_image** %5, align 8
  %40 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.nk_image*, %struct.nk_image** %5, align 8
  %45 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.nk_image*, %struct.nk_image** %5, align 8
  %50 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 3
  %55 = add nsw i32 %54, 3
  %56 = and i32 %55, -4
  store i32 %56, i32* %9, align 4
  %57 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %57, i8 0, i64 32, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 4, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  store i32 24, i32* %69, align 4
  %70 = load i32, i32* @BI_RGB, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  store i8* null, i8** %12, align 8
  %78 = load i32, i32* @DIB_RGB_COLORS, align 4
  %79 = call i32 @CreateDIBSection(i32* null, %struct.TYPE_8__* %10, i32 %78, i8** %11, i32* null, i32 0)
  store i32 %79, i32* %13, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %6, align 8
  store i8* %86, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %132, %28
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = sext i32 %92 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8* %96, i8** %12, align 8
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %128, %91
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %97
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 0
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 %104, i8* %109, align 1
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  store i8 %112, i8* %117, align 1
  %118 = load i8*, i8** %14, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  store i8 %120, i8* %125, align 1
  %126 = load i8*, i8** %14, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  store i8* %127, i8** %14, align 8
  br label %128

128:                                              ; preds = %101
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 3
  store i32 %130, i32* %16, align 4
  br label %97

131:                                              ; preds = %97
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %87

135:                                              ; preds = %87
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* @DIB_RGB_COLORS, align 4
  %140 = call i32 @SetDIBits(i32* null, i32 %136, i32 0, i32 %137, i8* %138, %struct.TYPE_8__* %10, i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.nk_image*, %struct.nk_image** %5, align 8
  %143 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  br label %145

145:                                              ; preds = %135, %25, %22, %19, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CreateDIBSection(i32*, %struct.TYPE_8__*, i32, i8**, i32*, i32) #2

declare dso_local i32 @SetDIBits(i32*, i32, i32, i32, i8*, %struct.TYPE_8__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
