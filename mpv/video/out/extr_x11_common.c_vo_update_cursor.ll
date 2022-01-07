; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_update_cursor.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i64, i64, i64, i32*, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"black\00", align 1
@None = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @vo_update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_update_cursor(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.vo_x11_state*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %13 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.vo*, %struct.vo** %2, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %15, align 8
  store %struct.vo_x11_state* %16, %struct.vo_x11_state** %9, align 8
  %17 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %18 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %21 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %24 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %29 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %1
  %34 = phi i1 [ false, %1 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %38 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %108

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %45 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %47 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %50 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %42
  br label %108

57:                                               ; preds = %53
  %58 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %59 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %57
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @DefaultScreen(i32* %64)
  %66 = call i32 @DefaultColormap(i32* %63, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @XAllocNamedColor(i32* %67, i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %5, %struct.TYPE_6__* %6)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %108

72:                                               ; preds = %62
  %73 = load i32*, i32** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %76 = call i64 @XCreateBitmapFromData(i32* %73, i64 %74, i8* %75, i32 8, i32 8)
  store i64 %76, i64* %4, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @XCreatePixmapCursor(i32* %77, i64 %78, i64 %79, %struct.TYPE_6__* %5, %struct.TYPE_6__* %5, i32 0, i32 0)
  store i32 %80, i32* %3, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @XDefineCursor(i32* %81, i64 %82, i32 %83)
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @XFreeCursor(i32* %85, i32 %86)
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @None, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %72
  %92 = load i32*, i32** %10, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @XFreePixmap(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %91, %72
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %99 = call i32 @XFreeColors(i32* %96, i32 %97, i32* %98, i32 1, i32 0)
  br label %108

100:                                              ; preds = %57
  %101 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %102 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %105 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @XDefineCursor(i32* %103, i64 %106, i32 0)
  br label %108

108:                                              ; preds = %41, %56, %71, %100, %95
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DefaultColormap(i32*, i32) #2

declare dso_local i32 @DefaultScreen(i32*) #2

declare dso_local i32 @XAllocNamedColor(i32*, i32, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*) #2

declare dso_local i64 @XCreateBitmapFromData(i32*, i64, i8*, i32, i32) #2

declare dso_local i32 @XCreatePixmapCursor(i32*, i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @XDefineCursor(i32*, i64, i32) #2

declare dso_local i32 @XFreeCursor(i32*, i32) #2

declare dso_local i32 @XFreePixmap(i32*, i64) #2

declare dso_local i32 @XFreeColors(i32*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
