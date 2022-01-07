; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_transpose.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_transpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix4_transpose(%struct.matrix4* %0, %struct.matrix4* %1) #0 {
  %3 = alloca %struct.matrix4*, align 8
  %4 = alloca %struct.matrix4*, align 8
  %5 = alloca %struct.matrix4, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.matrix4* %0, %struct.matrix4** %3, align 8
  store %struct.matrix4* %1, %struct.matrix4** %4, align 8
  %10 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %11 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %12 = icmp eq %struct.matrix4* %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %15 = bitcast %struct.matrix4* %5 to i8*
  %16 = bitcast %struct.matrix4* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 96, i1 false)
  %17 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  call void @matrix4_transpose(%struct.matrix4* %17, %struct.matrix4* %5)
  br label %79

18:                                               ; preds = %2
  %19 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %20 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %24 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @_mm_unpacklo_ps(i8* %22, i8* %26)
  store i8* %27, i8** %6, align 8
  %28 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %29 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %33 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @_mm_unpacklo_ps(i8* %31, i8* %35)
  store i8* %36, i8** %7, align 8
  %37 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %38 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %42 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @_mm_unpackhi_ps(i8* %40, i8* %44)
  store i8* %45, i8** %8, align 8
  %46 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %47 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %51 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @_mm_unpackhi_ps(i8* %49, i8* %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i8* @_mm_unpacklo_ps(i8* %55, i8* %56)
  %58 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %59 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @_mm_unpackhi_ps(i8* %61, i8* %62)
  %64 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %65 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i8* @_mm_unpacklo_ps(i8* %67, i8* %68)
  %70 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %71 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i8* @_mm_unpackhi_ps(i8* %73, i8* %74)
  %76 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %77 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  br label %79

79:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @_mm_unpacklo_ps(i8*, i8*) #2

declare dso_local i8* @_mm_unpackhi_ps(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
