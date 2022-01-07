; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_osx.c_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_osx.c_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_6__, i32, %struct.TYPE_6__, %struct.priv* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.priv = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 (i32, i32)* }

@MP_MAX_PLANES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unsupported CVPixelBuffer format.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported texture format.\0A\00", align 1
@RA_CTYPE_UNORM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Format unsupported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_init(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %7 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %8 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %7, i32 0, i32 3
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %11 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_8__* @ra_gl_get(i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load i32, i32* @MP_MAX_PLANES, align 4
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %16(i32 %17, i32 %20)
  %22 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %23 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %22, i32 0, i32 0
  %24 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %25 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %24, i32 0, i32 2
  %26 = bitcast %struct.TYPE_6__* %23 to i8*
  %27 = bitcast %struct.TYPE_6__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %29 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %33 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %36 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %39 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %1
  %44 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %45 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %90

46:                                               ; preds = %1
  %47 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %48 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %51 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.priv*, %struct.priv** %4, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 0
  %56 = call i32 @ra_get_imgfmt_desc(i32 %49, i64 %53, %struct.TYPE_9__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %60 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %90

61:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.priv*, %struct.priv** %4, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %62
  %70 = load %struct.priv*, %struct.priv** %4, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 %75
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RA_CTYPE_UNORM, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %84 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %90

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %62

89:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %82, %58, %43
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_8__* @ra_gl_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*) #1

declare dso_local i32 @ra_get_imgfmt_desc(i32, i64, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
