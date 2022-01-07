; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_render_cb_compressed.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_render_cb_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ao = type { i32, %struct.TYPE_5__, %struct.priv* }
%struct.TYPE_5__ = type { i32 }
%struct.priv = type { i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Unsupported unaligned read of %d bytes.\0A\00", align 1
@kAudioHardwareUnspecifiedError = common dso_local global i32 0, align 4
@noErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32*, %struct.TYPE_6__*, i32*, i8*)* @render_cb_compressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_cb_compressed(i32 %0, i32* %1, i8* %2, i32* %3, %struct.TYPE_6__* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ao*, align 8
  %17 = alloca %struct.priv*, align 8
  %18 = alloca %struct.TYPE_7__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %23 = load i8*, i8** %15, align 8
  %24 = bitcast i8* %23 to %struct.ao*
  store %struct.ao* %24, %struct.ao** %16, align 8
  %25 = load %struct.ao*, %struct.ao** %16, align 8
  %26 = getelementptr inbounds %struct.ao, %struct.ao* %25, i32 0, i32 2
  %27 = load %struct.priv*, %struct.priv** %26, align 8
  store %struct.priv* %27, %struct.priv** %17, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load %struct.priv*, %struct.priv** %17, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %33
  %35 = bitcast %struct.TYPE_7__* %18 to i8*
  %36 = bitcast %struct.TYPE_7__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %19, align 4
  %39 = load %struct.priv*, %struct.priv** %17, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %7
  %44 = load %struct.ao*, %struct.ao** %16, align 8
  %45 = getelementptr inbounds %struct.ao, %struct.ao* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 4, %47
  br label %53

49:                                               ; preds = %7
  %50 = load %struct.ao*, %struct.ao** %16, align 8
  %51 = getelementptr inbounds %struct.ao, %struct.ao* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = phi i32 [ %48, %43 ], [ %52, %49 ]
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %20, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* %20, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.ao*, %struct.ao** %16, align 8
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @MP_ERR(%struct.ao* %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @kAudioHardwareUnspecifiedError, align 4
  store i32 %67, i32* %8, align 4
  br label %105

68:                                               ; preds = %53
  %69 = call i32 (...) @mp_time_us()
  store i32 %69, i32* %22, align 4
  %70 = load %struct.priv*, %struct.priv** %17, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i64 @ca_get_latency(i32* %73)
  %75 = add nsw i64 %72, %74
  %76 = load %struct.ao*, %struct.ao** %16, align 8
  %77 = load i32, i32* %21, align 4
  %78 = call i64 @ca_frames_to_us(%struct.ao* %76, i32 %77)
  %79 = add nsw i64 %75, %78
  %80 = load i32, i32* %22, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %22, align 4
  %84 = load %struct.ao*, %struct.ao** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %22, align 4
  %88 = call i32 @ao_read_data(%struct.ao* %84, i32* %85, i32 %86, i32 %87)
  %89 = load %struct.priv*, %struct.priv** %17, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %68
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load %struct.ao*, %struct.ao** %16, align 8
  %98 = getelementptr inbounds %struct.ao, %struct.ao* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %96, %100
  %102 = call i32 @bad_hack_mygodwhy(i32 %95, i32 %101)
  br label %103

103:                                              ; preds = %93, %68
  %104 = load i32, i32* @noErr, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %63
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i32) #2

declare dso_local i32 @mp_time_us(...) #2

declare dso_local i64 @ca_get_latency(i32*) #2

declare dso_local i64 @ca_frames_to_us(%struct.ao*, i32) #2

declare dso_local i32 @ao_read_data(%struct.ao*, i32*, i32, i32) #2

declare dso_local i32 @bad_hack_mygodwhy(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
