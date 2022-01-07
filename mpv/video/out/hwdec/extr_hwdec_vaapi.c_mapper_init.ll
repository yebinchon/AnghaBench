; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_6__, i32, %struct.TYPE_6__, %struct.priv*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.priv = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i32, i32 (%struct.ra_hwdec_mapper*, %struct.ra_imgfmt_desc*)* }
%struct.ra_imgfmt_desc = type { i32, i32 }

@VA_INVALID_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unsupported VA image format %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_init(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv_owner*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.ra_imgfmt_desc, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %7 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %8 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.priv_owner*, %struct.priv_owner** %10, align 8
  store %struct.priv_owner* %11, %struct.priv_owner** %4, align 8
  %12 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %13 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %12, i32 0, i32 3
  %14 = load %struct.priv*, %struct.priv** %13, align 8
  store %struct.priv* %14, %struct.priv** %5, align 8
  %15 = load i32, i32* @VA_INVALID_ID, align 4
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.priv*, %struct.priv** %5, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %15, i32* %21, align 4
  %22 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %23 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %22, i32 0, i32 0
  %24 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %25 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %24, i32 0, i32 2
  %26 = bitcast %struct.TYPE_6__* %23 to i8*
  %27 = bitcast %struct.TYPE_6__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %29 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %33 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %36 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = bitcast %struct.ra_imgfmt_desc* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 8, i1 false)
  %39 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %40 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %43 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ra_get_imgfmt_desc(i32 %41, i64 %45, %struct.ra_imgfmt_desc* %6)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %94

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.priv*, %struct.priv** %5, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.priv*, %struct.priv** %5, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 0
  %56 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %57 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %56, i32 0, i32 0
  %58 = call i32 @mp_image_set_params(i32* %55, %struct.TYPE_6__* %57)
  %59 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %60 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %59, i32 0, i32 1
  %61 = load i32 (%struct.ra_hwdec_mapper*, %struct.ra_imgfmt_desc*)*, i32 (%struct.ra_hwdec_mapper*, %struct.ra_imgfmt_desc*)** %60, align 8
  %62 = icmp ne i32 (%struct.ra_hwdec_mapper*, %struct.ra_imgfmt_desc*)* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %49
  %64 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %65 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %64, i32 0, i32 1
  %66 = load i32 (%struct.ra_hwdec_mapper*, %struct.ra_imgfmt_desc*)*, i32 (%struct.ra_hwdec_mapper*, %struct.ra_imgfmt_desc*)** %65, align 8
  %67 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %68 = call i32 %66(%struct.ra_hwdec_mapper* %67, %struct.ra_imgfmt_desc* %6)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 -1, i32* %2, align 4
  br label %94

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %49
  %73 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %74 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %72
  %78 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %79 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %80 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @check_fmt(%struct.ra_hwdec_mapper* %78, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %87 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %88 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @mp_imgfmt_to_name(i64 %90)
  %92 = call i32 @MP_FATAL(%struct.ra_hwdec_mapper* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i32 -1, i32* %2, align 4
  br label %94

93:                                               ; preds = %77, %72
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %85, %70, %48
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ra_get_imgfmt_desc(i32, i64, %struct.ra_imgfmt_desc*) #2

declare dso_local i32 @mp_image_set_params(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @check_fmt(%struct.ra_hwdec_mapper*, i64) #2

declare dso_local i32 @MP_FATAL(%struct.ra_hwdec_mapper*, i8*, i32) #2

declare dso_local i32 @mp_imgfmt_to_name(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
