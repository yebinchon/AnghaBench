; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_wgl_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_wgl_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_4__*, i32, %struct.priv* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.priv = type { i32, i32, i32 (i32)*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"opengl-dwmflush\00", align 1
@m_option_type_choice = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"set SwapInterval(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @wgl_swap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wgl_swap_buffers(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 2
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @SwapBuffers(i32 %11)
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mp_read_option_raw(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* @m_option_type_choice, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25, %22
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %42 = call i64 @compositor_active(%struct.ra_ctx* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %34, %25
  %45 = call i64 (...) @DwmFlush()
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %44
  br label %50

50:                                               ; preds = %49, %40, %37
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.priv*, %struct.priv** %3, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 2
  %60 = load i32 (i32)*, i32 (i32)** %59, align 8
  %61 = icmp ne i32 (i32)* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.priv*, %struct.priv** %3, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 2
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 %65(i32 %66)
  %68 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %69 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @MP_VERBOSE(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %62, %57, %51
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.priv*, %struct.priv** %3, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i32 @SwapBuffers(i32) #1

declare dso_local i32 @mp_read_option_raw(i32, i8*, i32*, i32*) #1

declare dso_local i64 @compositor_active(%struct.ra_ctx*) #1

declare dso_local i64 @DwmFlush(...) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
