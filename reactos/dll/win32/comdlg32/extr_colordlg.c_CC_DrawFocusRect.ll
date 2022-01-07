; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_DrawFocusRect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_DrawFocusRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32, i32, i32)* @CC_DrawFocusRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CC_DrawFocusRect(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = call i32 @CC_DrawCurrentFocusRect(%struct.TYPE_8__* %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @GetClientRect(i32 %19, %struct.TYPE_7__* %13)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %22, %24
  %26 = load i32, i32* %12, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %29, %31
  %33 = load i32, i32* %11, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %14, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sub nsw i32 %37, 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %15, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sub nsw i32 %44, 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @GetDC(i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @DrawFocusRect(i32 %61, %struct.TYPE_7__* %13)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_7__* %64 to i8*
  %66 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 16, i1 false)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @ReleaseDC(i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @CC_DrawCurrentFocusRect(%struct.TYPE_8__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @DrawFocusRect(i32, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
