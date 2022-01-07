; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_get_xv_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_get_xv_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32*, i64*, i32 }
%struct.vo = type { %struct.mp_image_params*, %struct.xvctx* }
%struct.mp_image_params = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xvctx = type { i64, i64, i32, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32*, i64*, i64 }

@MP_FOURCC_YV12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_image*, %struct.vo*, i32)* @get_xv_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_xv_buffer(%struct.mp_image* noalias sret %0, %struct.vo* %1, i32 %2) #0 {
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xvctx*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_image_params, align 8
  store %struct.vo* %1, %struct.vo** %4, align 8
  store i32 %2, i32* %5, align 4
  %12 = load %struct.vo*, %struct.vo** %4, align 8
  %13 = getelementptr inbounds %struct.vo, %struct.vo* %12, i32 0, i32 1
  %14 = load %struct.xvctx*, %struct.xvctx** %13, align 8
  store %struct.xvctx* %14, %struct.xvctx** %6, align 8
  %15 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %16 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %7, align 8
  %22 = bitcast %struct.mp_image* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  %23 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %24 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %27 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mp_image_set_size(%struct.mp_image* %0, i32 %25, i32 %28)
  %30 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %31 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mp_image_setfmt(%struct.mp_image* %0, i32 %32)
  %34 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %35 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MP_FOURCC_YV12, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %88, %3
  %41 = load i32, i32* %9, align 4
  %42 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %0, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 2, i32 1
  br label %58

56:                                               ; preds = %48, %45
  %57 = load i32, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi i32 [ %55, %51 ], [ %57, %56 ]
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %62, %69
  %71 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %0, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %70, i64* %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %0, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %58
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %40

91:                                               ; preds = %40
  %92 = load %struct.vo*, %struct.vo** %4, align 8
  %93 = getelementptr inbounds %struct.vo, %struct.vo* %92, i32 0, i32 0
  %94 = load %struct.mp_image_params*, %struct.mp_image_params** %93, align 8
  %95 = icmp ne %struct.mp_image_params* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load %struct.vo*, %struct.vo** %4, align 8
  %98 = getelementptr inbounds %struct.vo, %struct.vo* %97, i32 0, i32 0
  %99 = load %struct.mp_image_params*, %struct.mp_image_params** %98, align 8
  %100 = bitcast %struct.mp_image_params* %11 to i8*
  %101 = bitcast %struct.mp_image_params* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 8, i1 false)
  %102 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %103 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %108 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %11, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %96
  %113 = call i32 @mp_image_set_attributes(%struct.mp_image* %0, %struct.mp_image_params* %11)
  br label %114

114:                                              ; preds = %112, %91
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #2

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_image_set_attributes(%struct.mp_image*, %struct.mp_image_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
