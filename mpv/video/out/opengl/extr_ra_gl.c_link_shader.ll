; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_link_shader.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_link_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*)*, i32 (i32)* }

@GL_LINK_STATUS = common dso_local global i32 0, align 4
@GL_INFO_LOG_LENGTH = common dso_local global i32 0, align 4
@MSGL_V = common dso_local global i32 0, align 4
@MSGL_DEBUG = common dso_local global i32 0, align 4
@MSGL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"shader link log (status=%d): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, i32, i32*)* @link_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_shader(%struct.ra* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ra*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.ra*, %struct.ra** %4, align 8
  %13 = call %struct.TYPE_3__* @ra_gl_get(%struct.ra* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 %16(i32 %17)
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @GL_LINK_STATUS, align 4
  %24 = call i32 %21(i32 %22, i32 %23, i32* %8)
  store i32 0, i32* %9, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %30 = call i32 %27(i32 %28, i32 %29, i32* %9)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @MSGL_V, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @MSGL_DEBUG, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  br label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @MSGL_ERR, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ra*, %struct.ra** %4, align 8
  %47 = getelementptr inbounds %struct.ra, %struct.ra* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @mp_msg_test(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32* @talloc_zero_size(i32* null, i32 %54)
  store i32* %55, i32** %11, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 %58(i32 %59, i32 %60, i32* null, i32* %61)
  %63 = load %struct.ra*, %struct.ra** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @MP_MSG(%struct.ra* %63, i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %65, i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @talloc_free(i32* %68)
  br label %70

70:                                               ; preds = %52, %44
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %71
  store i32 %74, i32* %72, align 4
  ret void
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(%struct.ra*) #1

declare dso_local i64 @mp_msg_test(i32, i32) #1

declare dso_local i32* @talloc_zero_size(i32*, i32) #1

declare dso_local i32 @MP_MSG(%struct.ra*, i32, i8*, i32, i32*) #1

declare dso_local i32 @talloc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
