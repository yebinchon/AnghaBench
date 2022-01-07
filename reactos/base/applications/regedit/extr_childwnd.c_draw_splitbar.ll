; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_childwnd.c_draw_splitbar.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_childwnd.c_draw_splitbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@SizingPattern = common dso_local global i64 0, align 8
@__const.draw_splitbar.Pattern = private unnamed_addr constant [4 x i32] [i32 1431677610, i32 1431677610, i32 1431677610, i32 1431677610], align 16
@SizingBrush = common dso_local global i64 0, align 8
@SPLIT_WIDTH = common dso_local global i32 0, align 4
@PATINVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @draw_splitbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_splitbar(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GetDC(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* @SizingPattern, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.draw_splitbar.Pattern to i8*), i64 16, i1 false)
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %16 = call i64 @CreateBitmap(i32 8, i32 8, i32 1, i32 1, i32* %15)
  store i64 %16, i64* @SizingPattern, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i64, i64* @SizingBrush, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @SizingPattern, align 8
  %22 = call i64 @CreatePatternBrush(i64 %21)
  store i64 %22, i64* @SizingBrush, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @GetClientRect(i32 %24, %struct.TYPE_3__* %5)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SPLIT_WIDTH, align 4
  %28 = sdiv i32 %27, 2
  %29 = sub nsw i32 %26, %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SPLIT_WIDTH, align 4
  %33 = sdiv i32 %32, 2
  %34 = add nsw i32 %31, %33
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i64, i64* @SizingBrush, align 8
  %39 = call i64 @SelectObject(i32 %37, i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %51, %53
  %55 = load i32, i32* @PATINVERT, align 4
  %56 = call i32 @PatBlt(i32 %40, i32 %42, i64 %44, i32 %49, i64 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @SelectObject(i32 %57, i64 %58)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ReleaseDC(i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CreatePatternBrush(i64) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @PatBlt(i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
