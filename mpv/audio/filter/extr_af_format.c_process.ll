; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_format.c_process.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_format.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.priv* }
%struct.priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.mp_frame = type { i64, %struct.mp_aframe* }
%struct.mp_aframe = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Failing on purpose.\0A\00", align 1
@MP_FRAME_EOF = common dso_local global i64 0, align 8
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"audio frame expected\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"could not force output channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_aframe*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %7 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %10 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mp_pin_can_transfer_data(i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %120

20:                                               ; preds = %1
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call { i64, %struct.mp_aframe* } @mp_pin_out_read(i32 %23)
  %25 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_aframe* }*
  %26 = getelementptr inbounds { i64, %struct.mp_aframe* }, { i64, %struct.mp_aframe* }* %25, i32 0, i32 0
  %27 = extractvalue { i64, %struct.mp_aframe* } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, %struct.mp_aframe* }, { i64, %struct.mp_aframe* }* %25, i32 0, i32 1
  %29 = extractvalue { i64, %struct.mp_aframe* } %24, 1
  store %struct.mp_aframe* %29, %struct.mp_aframe** %28, align 8
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %38 = call i32 @MP_ERR(%struct.mp_filter* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %116

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MP_FRAME_EOF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %46 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_aframe* }*
  %51 = getelementptr inbounds { i64, %struct.mp_aframe* }, { i64, %struct.mp_aframe* }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds { i64, %struct.mp_aframe* }, { i64, %struct.mp_aframe* }* %50, i32 0, i32 1
  %54 = load %struct.mp_aframe*, %struct.mp_aframe** %53, align 8
  %55 = call i32 @mp_pin_in_write(i32 %49, i64 %52, %struct.mp_aframe* %54)
  br label %120

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %63 = call i32 @MP_ERR(%struct.mp_filter* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %116

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %66 = load %struct.mp_aframe*, %struct.mp_aframe** %65, align 8
  store %struct.mp_aframe* %66, %struct.mp_aframe** %5, align 8
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %64
  %75 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %76 = load %struct.priv*, %struct.priv** %3, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = call i32 @mp_aframe_set_chmap(%struct.mp_aframe* %75, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %87 = call i32 @MP_ERR(%struct.mp_filter* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %116

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %64
  %90 = load %struct.priv*, %struct.priv** %3, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %98 = load %struct.priv*, %struct.priv** %3, align 8
  %99 = getelementptr inbounds %struct.priv, %struct.priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @mp_aframe_set_rate(%struct.mp_aframe* %97, i64 %102)
  br label %104

104:                                              ; preds = %96, %89
  %105 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %106 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_aframe* }*
  %111 = getelementptr inbounds { i64, %struct.mp_aframe* }, { i64, %struct.mp_aframe* }* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds { i64, %struct.mp_aframe* }, { i64, %struct.mp_aframe* }* %110, i32 0, i32 1
  %114 = load %struct.mp_aframe*, %struct.mp_aframe** %113, align 8
  %115 = call i32 @mp_pin_in_write(i32 %109, i64 %112, %struct.mp_aframe* %114)
  br label %120

116:                                              ; preds = %85, %61, %36
  %117 = call i32 @mp_frame_unref(%struct.mp_frame* %4)
  %118 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %119 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %118)
  br label %120

120:                                              ; preds = %116, %104, %44, %19
  ret void
}

declare dso_local i32 @mp_pin_can_transfer_data(i32, i32) #1

declare dso_local { i64, %struct.mp_aframe* } @mp_pin_out_read(i32) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32 @mp_pin_in_write(i32, i64, %struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_set_chmap(%struct.mp_aframe*, i32*) #1

declare dso_local i32 @mp_aframe_set_rate(%struct.mp_aframe*, i64) #1

declare dso_local i32 @mp_frame_unref(%struct.mp_frame*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
