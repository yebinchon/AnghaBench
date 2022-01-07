; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_translate_drawable_coords.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_translate_drawable_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.wined3d_texture* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @surface_translate_drawable_coords(%struct.wined3d_surface* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.wined3d_surface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.wined3d_texture*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %11, i32 0, i32 0
  %13 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  store %struct.wined3d_texture* %13, %struct.wined3d_texture** %7, align 8
  %14 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %68

20:                                               ; preds = %3
  %21 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %23 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %27 = icmp eq %struct.wined3d_texture* %21, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ScreenToClient(i32 %29, %struct.TYPE_10__* %8)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @OffsetRect(%struct.TYPE_9__* %31, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %28, %20
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @GetClientRect(i32 %38, %struct.TYPE_9__* %10)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %41 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %48 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %58 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %37, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ScreenToClient(i32, %struct.TYPE_10__*) #2

declare dso_local i32 @OffsetRect(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
