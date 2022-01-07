; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_flip_page.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_flip_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.mp_image*, i32 }
%struct.TYPE_6__ = type { i32** }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.mp_image = type { i64* }
%struct.TYPE_7__ = type { %struct.mp_image* }

@.str = private unnamed_addr constant [26 x i8] c"could not queue picture!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @flip_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flip_page(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %7 = load %struct.vo*, %struct.vo** %2, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %3, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 4
  %18 = load %struct.mp_image*, %struct.mp_image** %17, align 8
  store %struct.mp_image* %18, %struct.mp_image** %4, align 8
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 4
  store %struct.mp_image* null, %struct.mp_image** %20, align 8
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %15
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.priv*, %struct.priv** %3, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @eglSwapBuffers(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %31, %25, %15
  %42 = load %struct.priv*, %struct.priv** %3, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %45 = icmp ne %struct.mp_image* %44, null
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %5, align 8
  %54 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %55 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = bitcast i8* %59 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %6, align 8
  %61 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store %struct.mp_image* %61, %struct.mp_image** %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = call i64 @mmal_port_send_buffer(i32* %64, %struct.TYPE_7__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %46
  %69 = load %struct.vo*, %struct.vo** %2, align 8
  %70 = call i32 @MP_ERR(%struct.vo* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %72 = call i32 @talloc_free(%struct.mp_image* %71)
  br label %73

73:                                               ; preds = %68, %46
  br label %74

74:                                               ; preds = %73, %41
  %75 = load %struct.priv*, %struct.priv** %3, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.vo*, %struct.vo** %2, align 8
  %81 = call i32 @wait_next_vsync(%struct.vo* %80)
  br label %82

82:                                               ; preds = %14, %79, %74
  ret void
}

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

declare dso_local i64 @mmal_port_send_buffer(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @wait_next_vsync(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
