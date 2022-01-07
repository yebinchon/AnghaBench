; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_context_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { i32 }
%struct.priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Couldn't initialize EGL\0A\00", align 1
@EGL_EXTENSIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"EGL extensions: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not create EGL context!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_init(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i8*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 1
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %10, i32 0, i32 0
  %12 = load %struct.vo*, %struct.vo** %11, align 8
  store %struct.vo* %12, %struct.vo** %5, align 8
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @eglInitialize(i32 %15, i32* null, i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.vo*, %struct.vo** %5, align 8
  %20 = call i32 @MP_FATAL(%struct.vo* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EGL_EXTENSIONS, align 4
  %26 = call i8* @eglQueryString(i32 %24, i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.vo*, %struct.vo** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @MP_DBG(%struct.vo* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %35 = load %struct.priv*, %struct.priv** %4, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 1
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = call i32 @mpegl_create_context(%struct.ra_ctx* %34, i32 %37, i32* %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load %struct.vo*, %struct.vo** %5, align 8
  %46 = call i32 @MP_FATAL(%struct.vo* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %48

47:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %51

48:                                               ; preds = %44, %18
  %49 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %50 = call i32 @context_destroy(%struct.ra_ctx* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @eglInitialize(i32, i32*, i32*) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i8* @eglQueryString(i32, i32) #1

declare dso_local i32 @MP_DBG(%struct.vo*, i8*, i8*) #1

declare dso_local i32 @mpegl_create_context(%struct.ra_ctx*, i32, i32*, i32*) #1

declare dso_local i32 @context_destroy(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
