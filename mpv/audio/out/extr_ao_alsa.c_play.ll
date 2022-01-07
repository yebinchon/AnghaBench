; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_play.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i32 }

@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ESTRPIPE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Write error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"pcm prepare error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i8**, i32, i32)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(%struct.ao* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ao*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ao*, %struct.ao** %6, align 8
  %15 = getelementptr inbounds %struct.ao, %struct.ao* %14, i32 0, i32 1
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.priv*, %struct.priv** %10, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  %28 = load %struct.priv*, %struct.priv** %10, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22, %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %121

36:                                               ; preds = %32
  %37 = load %struct.priv*, %struct.priv** %10, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 4
  %39 = load i8**, i8*** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ao_convert_inplace(i32* %38, i8** %39, i32 %40)
  br label %42

42:                                               ; preds = %115, %36
  %43 = load %struct.ao*, %struct.ao** %6, align 8
  %44 = getelementptr inbounds %struct.ao, %struct.ao* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @af_fmt_is_planar(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.priv*, %struct.priv** %10, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i8**, i8*** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @snd_pcm_writen(i32 %51, i8** %52, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %64

55:                                               ; preds = %42
  %56 = load %struct.priv*, %struct.priv** %10, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i8**, i8*** %7, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @snd_pcm_writei(i32 %58, i8* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %55, %48
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @EINTR, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %64
  store i32 0, i32* %11, align 4
  br label %114

75:                                               ; preds = %69
  %76 = load %struct.ao*, %struct.ao** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @check_device_present(%struct.ao* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %140

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @ESTRPIPE, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.ao*, %struct.ao** %6, align 8
  %91 = call i32 @resume_device(%struct.ao* %90)
  br label %106

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @EPIPE, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.ao*, %struct.ao** %6, align 8
  %99 = call i32 @handle_underrun(%struct.ao* %98)
  br label %105

100:                                              ; preds = %92
  %101 = load %struct.ao*, %struct.ao** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @snd_strerror(i32 %102)
  %104 = call i32 @MP_ERR(%struct.ao* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %97
  br label %106

106:                                              ; preds = %105, %89
  %107 = load %struct.priv*, %struct.priv** %10, align 8
  %108 = getelementptr inbounds %struct.priv, %struct.priv* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @snd_pcm_prepare(i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %106, %81
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %74
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %42, label %118

118:                                              ; preds = %115
  %119 = load %struct.priv*, %struct.priv** %10, align 8
  %120 = getelementptr inbounds %struct.priv, %struct.priv* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %35
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi i1 [ false, %121 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32
  %131 = load %struct.priv*, %struct.priv** %10, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %11, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = phi i32 [ -1, %135 ], [ %137, %136 ]
  store i32 %139, i32* %5, align 4
  br label %141

140:                                              ; preds = %80
  store i32 -1, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %138
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @ao_convert_inplace(i32*, i8**, i32) #1

declare dso_local i64 @af_fmt_is_planar(i32) #1

declare dso_local i32 @snd_pcm_writen(i32, i8**, i32) #1

declare dso_local i32 @snd_pcm_writei(i32, i8*, i32) #1

declare dso_local i32 @check_device_present(%struct.ao*, i32) #1

declare dso_local i32 @resume_device(%struct.ao*) #1

declare dso_local i32 @handle_underrun(%struct.ao*) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i32) #1

declare dso_local i32 @snd_strerror(i32) #1

declare dso_local i32 @snd_pcm_prepare(i32) #1

declare dso_local i32 @CHECK_ALSA_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
