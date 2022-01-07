; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vaapi.c_va_create_standalone.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vaapi.c_va_create_standalone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8*)*, i32 (i32**, i8**, i32)* }
%struct.AVBufferRef = type { i32 }
%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }
%struct.hwcontext_create_dev_params = type { i32 }
%struct.vaapi_opts = type { i32 }
%struct.mp_vaapi_ctx = type { %struct.TYPE_3__, i32 (i8*)*, i8* }
%struct.TYPE_3__ = type { %struct.AVBufferRef* }

@vaapi_conf = common dso_local global i32 0, align 4
@native_displays = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.AVBufferRef* (%struct.mpv_global*, %struct.mp_log*, %struct.hwcontext_create_dev_params*)* @va_create_standalone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.AVBufferRef* @va_create_standalone(%struct.mpv_global* %0, %struct.mp_log* %1, %struct.hwcontext_create_dev_params* %2) #0 {
  %4 = alloca %struct.mpv_global*, align 8
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca %struct.hwcontext_create_dev_params*, align 8
  %7 = alloca %struct.AVBufferRef*, align 8
  %8 = alloca %struct.vaapi_opts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mp_vaapi_ctx*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %4, align 8
  store %struct.mp_log* %1, %struct.mp_log** %5, align 8
  store %struct.hwcontext_create_dev_params* %2, %struct.hwcontext_create_dev_params** %6, align 8
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %7, align 8
  %13 = load %struct.mpv_global*, %struct.mpv_global** %4, align 8
  %14 = call %struct.vaapi_opts* @mp_get_config_group(i32* null, %struct.mpv_global* %13, i32* @vaapi_conf)
  store %struct.vaapi_opts* %14, %struct.vaapi_opts** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %75, %3
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @native_displays, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %78

22:                                               ; preds = %15
  store i32* null, i32** %10, align 8
  store i8* null, i8** %11, align 8
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @native_displays, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32 (i32**, i8**, i32)*, i32 (i32**, i8**, i32)** %28, align 8
  %30 = load %struct.vaapi_opts*, %struct.vaapi_opts** %8, align 8
  %31 = getelementptr inbounds %struct.vaapi_opts, %struct.vaapi_opts* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(i32** %10, i8** %11, i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %74

36:                                               ; preds = %22
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %39 = load %struct.hwcontext_create_dev_params*, %struct.hwcontext_create_dev_params** %6, align 8
  %40 = getelementptr inbounds %struct.hwcontext_create_dev_params, %struct.hwcontext_create_dev_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.mp_vaapi_ctx* @va_initialize(i32* %37, %struct.mp_log* %38, i32 %41)
  store %struct.mp_vaapi_ctx* %42, %struct.mp_vaapi_ctx** %12, align 8
  %43 = load %struct.mp_vaapi_ctx*, %struct.mp_vaapi_ctx** %12, align 8
  %44 = icmp ne %struct.mp_vaapi_ctx* %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %36
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @vaTerminate(i32* %46)
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @native_displays, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (i8*)*, i32 (i8*)** %53, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 %54(i8* %55)
  br label %79

57:                                               ; preds = %36
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.mp_vaapi_ctx*, %struct.mp_vaapi_ctx** %12, align 8
  %60 = getelementptr inbounds %struct.mp_vaapi_ctx, %struct.mp_vaapi_ctx* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @native_displays, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (i8*)*, i32 (i8*)** %66, align 8
  %68 = load %struct.mp_vaapi_ctx*, %struct.mp_vaapi_ctx** %12, align 8
  %69 = getelementptr inbounds %struct.mp_vaapi_ctx, %struct.mp_vaapi_ctx* %68, i32 0, i32 1
  store i32 (i8*)* %67, i32 (i8*)** %69, align 8
  %70 = load %struct.mp_vaapi_ctx*, %struct.mp_vaapi_ctx** %12, align 8
  %71 = getelementptr inbounds %struct.mp_vaapi_ctx, %struct.mp_vaapi_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.AVBufferRef*, %struct.AVBufferRef** %72, align 8
  store %struct.AVBufferRef* %73, %struct.AVBufferRef** %7, align 8
  br label %79

74:                                               ; preds = %22
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %15

78:                                               ; preds = %15
  br label %79

79:                                               ; preds = %78, %57, %45
  %80 = load %struct.vaapi_opts*, %struct.vaapi_opts** %8, align 8
  %81 = call i32 @talloc_free(%struct.vaapi_opts* %80)
  %82 = load %struct.AVBufferRef*, %struct.AVBufferRef** %7, align 8
  ret %struct.AVBufferRef* %82
}

declare dso_local %struct.vaapi_opts* @mp_get_config_group(i32*, %struct.mpv_global*, i32*) #1

declare dso_local %struct.mp_vaapi_ctx* @va_initialize(i32*, %struct.mp_log*, i32) #1

declare dso_local i32 @vaTerminate(i32*) #1

declare dso_local i32 @talloc_free(%struct.vaapi_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
