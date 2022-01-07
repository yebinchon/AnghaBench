; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_get_screen_from_root.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_get_screen_from_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i64)* @get_screen_from_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @get_screen_from_root(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @xcb_get_setup(i32* %7)
  %9 = call { %struct.TYPE_6__*, i64 } @xcb_setup_roots_iterator(i32 %8)
  %10 = bitcast %struct.TYPE_7__* %6 to { %struct.TYPE_6__*, i64 }*
  %11 = getelementptr inbounds { %struct.TYPE_6__*, i64 }, { %struct.TYPE_6__*, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { %struct.TYPE_6__*, i64 } %9, 0
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds { %struct.TYPE_6__*, i64 }, { %struct.TYPE_6__*, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { %struct.TYPE_6__*, i64 } %9, 1
  store i64 %14, i64* %13, align 8
  br label %15

15:                                               ; preds = %29, %2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %3, align 8
  br label %32

29:                                               ; preds = %19
  %30 = call i32 @xcb_screen_next(%struct.TYPE_7__* %6)
  br label %15

31:                                               ; preds = %15
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %33
}

declare dso_local { %struct.TYPE_6__*, i64 } @xcb_setup_roots_iterator(i32) #1

declare dso_local i32 @xcb_get_setup(i32*) #1

declare dso_local i32 @xcb_screen_next(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
