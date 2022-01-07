; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xhelpers.c_x11_screen_geo.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xhelpers.c_x11_screen_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x11_screen_geo(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %55

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @xcb_get_setup(i32* %17)
  %19 = call { %struct.TYPE_5__*, i64 } @xcb_setup_roots_iterator(i32 %18)
  %20 = bitcast %struct.TYPE_6__* %12 to { %struct.TYPE_5__*, i64 }*
  %21 = getelementptr inbounds { %struct.TYPE_5__*, i64 }, { %struct.TYPE_5__*, i64 }* %20, i32 0, i32 0
  %22 = extractvalue { %struct.TYPE_5__*, i64 } %19, 0
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds { %struct.TYPE_5__*, i64 }, { %struct.TYPE_5__*, i64 }* %20, i32 0, i32 1
  %24 = extractvalue { %struct.TYPE_5__*, i64 } %19, 1
  store i64 %24, i64* %23, align 8
  %25 = bitcast %struct.TYPE_6__* %11 to i8*
  %26 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  br label %27

27:                                               ; preds = %46, %16
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %34, %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  %49 = call i32 @xcb_screen_next(%struct.TYPE_6__* %11)
  br label %27

50:                                               ; preds = %27
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %58

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i32*, i32** %9, align 8
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 0, i32* %57, align 4
  store i32 -1, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %53
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local { %struct.TYPE_5__*, i64 } @xcb_setup_roots_iterator(i32) #1

declare dso_local i32 @xcb_get_setup(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xcb_screen_next(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
