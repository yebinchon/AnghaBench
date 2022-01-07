; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_masking.c_gl_mask_index_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_masking.c_gl_mask_index_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i64, i32*, i32*, i64*, i32*)* }

@PB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_mask_index_pixels(%struct.TYPE_8__* %0, i64 %1, i32* %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* @PB_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_8__*, i64, i32*, i32*, i64*, i32*)*, i32 (%struct.TYPE_8__*, i64, i32*, i32*, i64*, i32*)** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 %25(%struct.TYPE_8__* %26, i64 %27, i32* %28, i32* %29, i64* %21, i32* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = xor i64 %36, -1
  store i64 %37, i64* %17, align 8
  store i64 0, i64* %13, align 8
  br label %38

38:                                               ; preds = %58, %6
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %16, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds i64, i64* %21, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %17, align 8
  %53 = and i64 %51, %52
  %54 = or i64 %48, %53
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %42
  %59 = load i64, i64* %13, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %13, align 8
  br label %38

61:                                               ; preds = %38
  %62 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
