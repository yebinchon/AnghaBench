; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_open_windowless_display.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_open_windowless_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to open new X connection!\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to get XCB connection to main display\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to get screen root\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to get screen number from root\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to load GLX entry functions.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @open_windowless_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_windowless_display() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = call i32* @XOpenDisplay(i32* null)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @LOG_ERROR, align 4
  %13 = call i32 @blog(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %64

14:                                               ; preds = %0
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @XGetXCBConnection(i32* %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @LOG_ERROR, align 4
  %21 = call i32 @blog(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %57

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @xcb_get_setup(i32* %23)
  %25 = call %struct.TYPE_4__* @xcb_setup_roots_iterator(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %26, align 8
  %27 = bitcast %struct.TYPE_5__* %4 to i8*
  %28 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @LOG_ERROR, align 4
  %35 = call i32 @blog(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %57

36:                                               ; preds = %22
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @get_screen_num_from_root(i32* %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @LOG_ERROR, align 4
  %46 = call i32 @blog(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %57

47:                                               ; preds = %36
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @gladLoadGLX(i32* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @LOG_ERROR, align 4
  %54 = call i32 @blog(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %57

55:                                               ; preds = %47
  %56 = load i32*, i32** %2, align 8
  store i32* %56, i32** %1, align 8
  br label %64

57:                                               ; preds = %52, %44, %33, %19
  %58 = load i32*, i32** %2, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @XCloseDisplay(i32* %61)
  br label %63

63:                                               ; preds = %60, %57
  store i32* null, i32** %1, align 8
  br label %64

64:                                               ; preds = %63, %55, %11
  %65 = load i32*, i32** %1, align 8
  ret i32* %65
}

declare dso_local i32* @XOpenDisplay(i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32* @XGetXCBConnection(i32*) #1

declare dso_local %struct.TYPE_4__* @xcb_setup_roots_iterator(i32) #1

declare dso_local i32 @xcb_get_setup(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_screen_num_from_root(i32*, i32) #1

declare dso_local i32 @gladLoadGLX(i32*, i32) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
