; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_draw_margin_lines.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_draw_margin_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@preview = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@LOGPIXELSX = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@margins = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@PS_DOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, float)* @draw_margin_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_margin_lines(i32 %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %13 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 1) to i8*), i64 16, i1 false)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LOGPIXELSX, align 4
  %16 = call i8* @GetDeviceCaps(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LOGPIXELSY, align 4
  %20 = call i8* @GetDeviceCaps(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 1, i32 0), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @margins, i32 0, i32 0), align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 1, i32 1), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @margins, i32 0, i32 1), align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 1, i32 2), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @margins, i32 0, i32 2), align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 1, i32 3), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @margins, i32 0, i32 3), align 4
  %33 = sub nsw i32 %31, %32
  %34 = call i32 @SetRect(%struct.TYPE_10__* %12, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @twips_to_pixels(i32 %36, i8* %38)
  %40 = sitofp i64 %39 to float
  %41 = load float, float* %8, align 4
  %42 = fmul float %40, %41
  %43 = fptosi float %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @twips_to_pixels(i32 %46, i8* %48)
  %50 = sitofp i64 %49 to float
  %51 = load float, float* %8, align 4
  %52 = fmul float %50, %51
  %53 = fptosi float %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @twips_to_pixels(i32 %56, i8* %58)
  %60 = sitofp i64 %59 to float
  %61 = load float, float* %8, align 4
  %62 = fmul float %60, %61
  %63 = fptosi float %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @twips_to_pixels(i32 %66, i8* %68)
  %70 = sitofp i64 %69 to float
  %71 = load float, float* %8, align 4
  %72 = fmul float %70, %71
  %73 = fptosi float %72 to i32
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @OffsetRect(%struct.TYPE_10__* %12, i32 %75, i32 %76)
  %78 = load i32, i32* @PS_DOT, align 4
  %79 = call i32 @RGB(i32 0, i32 0, i32 0)
  %80 = call i32 @CreatePen(i32 %78, i32 1, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @SelectObject(i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MoveToEx(i32 %84, i32 %85, i32 %87, i32* null)
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 0, i32 0), align 4
  %92 = add nsw i32 %90, %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @LineTo(i32 %89, i32 %92, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @MoveToEx(i32 %96, i32 %97, i32 %99, i32* null)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 0, i32 0), align 4
  %104 = add nsw i32 %102, %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @LineTo(i32 %101, i32 %104, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @MoveToEx(i32 %108, i32 %110, i32 %111, i32* null)
  %113 = load i32, i32* %5, align 4
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 0, i32 1), align 4
  %118 = add nsw i32 %116, %117
  %119 = call i32 @LineTo(i32 %113, i32 %115, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @MoveToEx(i32 %120, i32 %122, i32 %123, i32* null)
  %125 = load i32, i32* %5, align 4
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @preview, i32 0, i32 0, i32 1), align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @LineTo(i32 %125, i32 %127, i32 %130)
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @SelectObject(i32 %132, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @DeleteObject(i32 %135)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @GetDeviceCaps(i32, i32) #2

declare dso_local i32 @SetRect(%struct.TYPE_10__*, i32, i32, i32, i32) #2

declare dso_local i64 @twips_to_pixels(i32, i8*) #2

declare dso_local i32 @OffsetRect(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @CreatePen(i32, i32, i32) #2

declare dso_local i32 @RGB(i32, i32, i32) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @MoveToEx(i32, i32, i32, i32*) #2

declare dso_local i32 @LineTo(i32, i32, i32) #2

declare dso_local i32 @DeleteObject(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
