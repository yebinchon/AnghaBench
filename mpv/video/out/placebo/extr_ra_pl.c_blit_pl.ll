; ModuleID = '/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_blit_pl.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_blit_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_tex = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mp_rect = type { i32, i32, i32, i32 }
%struct.pl_rect3d = type { i8*, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_tex*, %struct.ra_tex*, %struct.mp_rect*, %struct.mp_rect*)* @blit_pl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit_pl(%struct.ra* %0, %struct.ra_tex* %1, %struct.ra_tex* %2, %struct.mp_rect* %3, %struct.mp_rect* %4) #0 {
  %6 = alloca %struct.ra*, align 8
  %7 = alloca %struct.ra_tex*, align 8
  %8 = alloca %struct.ra_tex*, align 8
  %9 = alloca %struct.mp_rect*, align 8
  %10 = alloca %struct.mp_rect*, align 8
  %11 = alloca %struct.pl_rect3d, align 8
  %12 = alloca %struct.pl_rect3d, align 8
  store %struct.ra* %0, %struct.ra** %6, align 8
  store %struct.ra_tex* %1, %struct.ra_tex** %7, align 8
  store %struct.ra_tex* %2, %struct.ra_tex** %8, align 8
  store %struct.mp_rect* %3, %struct.mp_rect** %9, align 8
  store %struct.mp_rect* %4, %struct.mp_rect** %10, align 8
  %13 = bitcast %struct.pl_rect3d* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = bitcast %struct.pl_rect3d* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %16 = icmp ne %struct.mp_rect* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %5
  %18 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %19 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MPMAX(i32 %20, i32 0)
  %22 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %23 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @MPMIN(i32 %21, i32 %25)
  %27 = getelementptr inbounds %struct.pl_rect3d, %struct.pl_rect3d* %11, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %29 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MPMAX(i32 %30, i32 0)
  %32 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %33 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @MPMIN(i32 %31, i32 %35)
  %37 = getelementptr inbounds %struct.pl_rect3d, %struct.pl_rect3d* %11, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %39 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MPMAX(i32 %40, i32 0)
  %42 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %43 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @MPMIN(i32 %41, i32 %45)
  %47 = getelementptr inbounds %struct.pl_rect3d, %struct.pl_rect3d* %11, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %49 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @MPMAX(i32 %50, i32 0)
  %52 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %53 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @MPMIN(i32 %51, i32 %55)
  %57 = getelementptr inbounds %struct.pl_rect3d, %struct.pl_rect3d* %11, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %17, %5
  %59 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %60 = icmp ne %struct.mp_rect* %59, null
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %63 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MPMAX(i32 %64, i32 0)
  %66 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %67 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @MPMIN(i32 %65, i32 %69)
  %71 = getelementptr inbounds %struct.pl_rect3d, %struct.pl_rect3d* %12, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %73 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MPMAX(i32 %74, i32 0)
  %76 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %77 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @MPMIN(i32 %75, i32 %79)
  %81 = getelementptr inbounds %struct.pl_rect3d, %struct.pl_rect3d* %12, i32 0, i32 2
  store i8* %80, i8** %81, align 8
  %82 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %83 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MPMAX(i32 %84, i32 0)
  %86 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %87 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @MPMIN(i32 %85, i32 %89)
  %91 = getelementptr inbounds %struct.pl_rect3d, %struct.pl_rect3d* %12, i32 0, i32 1
  store i8* %90, i8** %91, align 8
  %92 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %93 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @MPMAX(i32 %94, i32 0)
  %96 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %97 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @MPMIN(i32 %95, i32 %99)
  %101 = getelementptr inbounds %struct.pl_rect3d, %struct.pl_rect3d* %12, i32 0, i32 0
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %61, %58
  %103 = load %struct.ra*, %struct.ra** %6, align 8
  %104 = call i32 @get_gpu(%struct.ra* %103)
  %105 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %106 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %109 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pl_tex_blit(i32 %104, i32 %107, i32 %110, %struct.pl_rect3d* byval(%struct.pl_rect3d) align 8 %12, %struct.pl_rect3d* byval(%struct.pl_rect3d) align 8 %11)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @MPMIN(i32, i32) #2

declare dso_local i32 @MPMAX(i32, i32) #2

declare dso_local i32 @pl_tex_blit(i32, i32, i32, %struct.pl_rect3d* byval(%struct.pl_rect3d) align 8, %struct.pl_rect3d* byval(%struct.pl_rect3d) align 8) #2

declare dso_local i32 @get_gpu(%struct.ra*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
