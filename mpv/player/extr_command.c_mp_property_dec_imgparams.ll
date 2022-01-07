; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_dec_imgparams.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_dec_imgparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_4__ = type { %struct.vo_chain* }
%struct.vo_chain = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mp_image_params = type { i32, i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_dec_imgparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_dec_imgparams(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.mp_image_params, align 4
  %12 = alloca %struct.vo_chain*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = bitcast %struct.mp_image_params* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.vo_chain*, %struct.vo_chain** %17, align 8
  store %struct.vo_chain* %18, %struct.vo_chain** %12, align 8
  %19 = load %struct.vo_chain*, %struct.vo_chain** %12, align 8
  %20 = icmp ne %struct.vo_chain* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.vo_chain*, %struct.vo_chain** %12, align 8
  %23 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.vo_chain*, %struct.vo_chain** %12, align 8
  %28 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mp_decoder_wrapper_get_video_dec_params(i32 %31, %struct.mp_image_params* %11)
  br label %33

33:                                               ; preds = %26, %21, %4
  %34 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = bitcast %struct.mp_image_params* %11 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = call i32 @property_imgparams(i64 %43, i32 %40, i8* %41)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %37
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_decoder_wrapper_get_video_dec_params(i32, %struct.mp_image_params*) #2

declare dso_local i32 @property_imgparams(i64, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
