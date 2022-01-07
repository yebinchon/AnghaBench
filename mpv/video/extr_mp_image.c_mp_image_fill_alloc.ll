; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_fill_alloc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_fill_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32*, i32**, i32, i32, i32 }

@MP_MAX_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_image*, i32, i8*, i32)* @mp_image_fill_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_image_fill_alloc(%struct.mp_image* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @MP_MAX_PLANES, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @MP_MAX_PLANES, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load i32, i32* @MP_MAX_PLANES, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %29 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %30 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %33 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %36 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mp_image_layout(i32 %31, i32 %34, i32 %37, i32 %38, i32* %22, i32* %25, i32* %28)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %110

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @MP_ALIGN_UP(i64 %49, i32 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = sub i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %110

62:                                               ; preds = %47
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %17, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32*, i32** %17, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %17, align 8
  store i32 0, i32* %18, align 4
  br label %69

69:                                               ; preds = %106, %62
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @MP_MAX_PLANES, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %69
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %25, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %25, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  br label %88

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %79
  %89 = phi i32* [ %86, %79 ], [ null, %87 ]
  %90 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %91 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  store i32* %89, i32** %95, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %22, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %101 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %69

109:                                              ; preds = %69
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %110

110:                                              ; preds = %109, %61, %46
  %111 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mp_image_layout(i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @MP_ALIGN_UP(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
