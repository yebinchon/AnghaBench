; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CONTROL_TRUE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@SOUND_MIXER_READ_DEVMASK = common dso_local global i32 0, align 4
@CONTROL_ERROR = common dso_local global i32 0, align 4
@CONTROL_OK = common dso_local global i32 0, align 4
@CONTROL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.ao* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.ao*, %struct.ao** %5, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 1
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %90 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %3, %3
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %9, align 8
  %20 = load %struct.ao*, %struct.ao** %5, align 8
  %21 = getelementptr inbounds %struct.ao, %struct.ao* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @af_fmt_is_pcm(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @CONTROL_TRUE, align 4
  store i32 %26, i32* %4, align 4
  br label %92

27:                                               ; preds = %17
  %28 = load %struct.priv*, %struct.priv** %8, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = call i32 @open(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %88

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @SOUND_MIXER_READ_DEVMASK, align 4
  %37 = call i32 @ioctl(i32 %35, i32 %36, i32* %12)
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.priv*, %struct.priv** %8, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %38, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 129
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.priv*, %struct.priv** %8, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MIXER_READ(i32 %52)
  %54 = call i32 @ioctl(i32 %49, i32 %53, i32* %11)
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 65280
  %57 = ashr i32 %56, 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 255
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %79

64:                                               ; preds = %45
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %68, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.priv*, %struct.priv** %8, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @MIXER_WRITE(i32 %76)
  %78 = call i32 @ioctl(i32 %73, i32 %77, i32* %11)
  br label %79

79:                                               ; preds = %64, %48
  br label %84

80:                                               ; preds = %34
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %83, i32* %4, align 4
  br label %92

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @close(i32 %85)
  %87 = load i32, i32* @CONTROL_OK, align 4
  store i32 %87, i32* %4, align 4
  br label %92

88:                                               ; preds = %27
  %89 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %3
  %91 = load i32, i32* @CONTROL_UNKNOWN, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %88, %84, %80, %25
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @af_fmt_is_pcm(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @MIXER_READ(i32) #1

declare dso_local i32 @MIXER_WRITE(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
