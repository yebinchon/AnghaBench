; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_create_context_x11_old.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_create_context_x11_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.priv = type { i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Can't create a legacy GLX context without X visual\0A\00", align 1
@True = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not create GLX context!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not set GLX context!\0A\00", align 1
@glXGetProcAddressARB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*, i32*)* @create_context_x11_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_context_x11_old(%struct.ra_ctx* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %6, align 8
  %14 = load %struct.ra_ctx*, %struct.ra_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %14, i32 0, i32 0
  %16 = load %struct.vo*, %struct.vo** %15, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.ra_ctx*, %struct.ra_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %21, i32 0, i32 0
  %23 = load %struct.vo*, %struct.vo** %22, align 8
  store %struct.vo* %23, %struct.vo** %8, align 8
  %24 = load %struct.priv*, %struct.priv** %6, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %88

29:                                               ; preds = %2
  %30 = load %struct.priv*, %struct.priv** %6, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.vo*, %struct.vo** %8, align 8
  %36 = call i32 @MP_FATAL(%struct.vo* %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %88

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.priv*, %struct.priv** %6, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @True, align 4
  %43 = call i64 @glXCreateContext(i32* %38, i32 %41, i32* null, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load %struct.vo*, %struct.vo** %8, align 8
  %48 = call i32 @MP_FATAL(%struct.vo* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %88

49:                                               ; preds = %37
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.ra_ctx*, %struct.ra_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %51, i32 0, i32 0
  %53 = load %struct.vo*, %struct.vo** %52, align 8
  %54 = getelementptr inbounds %struct.vo, %struct.vo* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @glXMakeCurrent(i32* %50, i32 %57, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %49
  %62 = load %struct.vo*, %struct.vo** %8, align 8
  %63 = call i32 @MP_FATAL(%struct.vo* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @glXDestroyContext(i32* %64, i64 %65)
  store i32 0, i32* %3, align 4
  br label %88

67:                                               ; preds = %49
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.ra_ctx*, %struct.ra_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %69, i32 0, i32 0
  %71 = load %struct.vo*, %struct.vo** %70, align 8
  %72 = getelementptr inbounds %struct.vo, %struct.vo* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @glXQueryExtensionsString(i32* %68, i32 %75)
  store i8* %76, i8** %10, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* @glXGetProcAddressARB, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i8*, i8** %10, align 8
  %81 = load %struct.vo*, %struct.vo** %8, align 8
  %82 = getelementptr inbounds %struct.vo, %struct.vo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mpgl_load_functions(i32* %77, i8* %79, i8* %80, i32 %83)
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.priv*, %struct.priv** %6, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %67, %61, %46, %34, %28
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i64 @glXCreateContext(i32*, i32, i32*, i32) #1

declare dso_local i32 @glXMakeCurrent(i32*, i32, i64) #1

declare dso_local i32 @glXDestroyContext(i32*, i64) #1

declare dso_local i8* @glXQueryExtensionsString(i32*, i32) #1

declare dso_local i32 @mpgl_load_functions(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
