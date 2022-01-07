; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32, %struct.TYPE_6__, %struct.TYPE_6__, %struct.cuda_mapper_priv*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cuda_mapper_priv = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { i32 (%struct.ra_hwdec_mapper*, i32, i32)*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*)*, i32 (i32)* }
%struct.ra_imgfmt_desc = type { i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Unsupported format: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_init(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.cuda_hw_priv*, align 8
  %5 = alloca %struct.cuda_mapper_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ra_imgfmt_desc, align 8
  %12 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %13 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %14 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %16, align 8
  store %struct.cuda_hw_priv* %17, %struct.cuda_hw_priv** %4, align 8
  %18 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %19 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %18, i32 0, i32 3
  %20 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %19, align 8
  store %struct.cuda_mapper_priv* %20, %struct.cuda_mapper_priv** %5, align 8
  %21 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %4, align 8
  %22 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %4, align 8
  %25 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %5, align 8
  %28 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %30 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %34 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %33, i32 0, i32 1
  %35 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %36 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %35, i32 0, i32 2
  %37 = bitcast %struct.TYPE_6__* %34 to i8*
  %38 = bitcast %struct.TYPE_6__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %41 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %44 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %5, align 8
  %47 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %46, i32 0, i32 1
  %48 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %49 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %48, i32 0, i32 1
  %50 = call i32 @mp_image_set_params(i32* %47, %struct.TYPE_6__* %49)
  %51 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %52 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ra_get_imgfmt_desc(i32 %53, i32 %54, %struct.ra_imgfmt_desc* %11)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %1
  %58 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @mp_imgfmt_to_name(i32 %59)
  %61 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %2, align 4
  br label %113

62:                                               ; preds = %1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %5, align 8
  %67 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %65(i32 %68)
  %70 = call i32 @CHECK_CU(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %113

75:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %97, %75
  %77 = load i32, i32* %12, align 4
  %78 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %4, align 8
  %83 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %82, i32 0, i32 0
  %84 = load i32 (%struct.ra_hwdec_mapper*, i32, i32)*, i32 (%struct.ra_hwdec_mapper*, i32, i32)** %83, align 8
  %85 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %86 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %11, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 %84(%struct.ra_hwdec_mapper* %85, i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %81
  br label %101

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %76

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %100, %95
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32 (i32*)*, i32 (i32*)** %103, align 8
  %105 = call i32 %104(i32* %6)
  %106 = call i32 @CHECK_CU(i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %109, %73, %57
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_image_set_params(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @ra_get_imgfmt_desc(i32, i32, %struct.ra_imgfmt_desc*) #2

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, i32) #2

declare dso_local i32 @mp_imgfmt_to_name(i32) #2

declare dso_local i32 @CHECK_CU(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
