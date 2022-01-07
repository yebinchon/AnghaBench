; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintLumBar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintLumBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@IDC_COLOR_LUMBAR = common dso_local global i32 0, align 4
@YSTEPS = common dso_local global i32 0, align 4
@BDR_SUNKENOUTER = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @CC_PaintLumBar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CC_PaintLumBar(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IDC_COLOR_LUMBAR, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @IsWindowVisible(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @GetDC(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @GetClientRect(i32 %22, %struct.TYPE_7__* %5)
  %24 = bitcast %struct.TYPE_7__* %4 to i8*
  %25 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = load i32, i32* @YSTEPS, align 4
  %27 = sdiv i32 240, %26
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @YSTEPS, align 4
  %31 = sdiv i32 %29, %30
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %62, %19
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 240, %35
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @max(i32 0, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @CC_HSLtoRGB(i32 %47, i32 %50, i32 %51)
  %53 = call i32 @CreateSolidBrush(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @FillRect(i32 %54, %struct.TYPE_7__* %4, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @DeleteObject(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %38
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %33

66:                                               ; preds = %33
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @GetClientRect(i32 %67, %struct.TYPE_7__* %4)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @BDR_SUNKENOUTER, align 4
  %71 = load i32, i32* @BF_RECT, align 4
  %72 = call i32 @DrawEdge(i32 %69, %struct.TYPE_7__* %4, i32 %70, i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ReleaseDC(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %66, %1
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @CC_HSLtoRGB(i32, i32, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
