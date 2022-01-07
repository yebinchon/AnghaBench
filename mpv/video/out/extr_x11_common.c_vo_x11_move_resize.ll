; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_move_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_move_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mp_rect = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@CWX = common dso_local global i32 0, align 4
@CWY = common dso_local global i32 0, align 4
@CWWidth = common dso_local global i32 0, align 4
@CWHeight = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32, i32, i64)* @vo_x11_move_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_move_resize(%struct.vo* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mp_rect, align 4
  %6 = alloca %struct.vo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.mp_rect* %5 to i64*
  store i64 %3, i64* %13, align 4
  store %struct.vo* %0, %struct.vo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  %14 = load %struct.vo*, %struct.vo** %6, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %77

21:                                               ; preds = %4
  %22 = bitcast %struct.mp_rect* %5 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i32 @RC_W(i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = bitcast %struct.mp_rect* %5 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @RC_H(i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %33 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %36 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %21
  %41 = load i32, i32* @CWX, align 4
  %42 = load i32, i32* @CWY, align 4
  %43 = or i32 %41, %42
  br label %45

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 0, %44 ]
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @CWWidth, align 4
  %51 = load i32, i32* @CWHeight, align 4
  %52 = or i32 %50, %51
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ %52, %49 ], [ 0, %53 ]
  %56 = or i32 %46, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.vo*, %struct.vo** %6, align 8
  %61 = getelementptr inbounds %struct.vo, %struct.vo* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vo*, %struct.vo** %6, align 8
  %66 = getelementptr inbounds %struct.vo, %struct.vo* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @XConfigureWindow(i32 %64, i32 %69, i32 %70, %struct.TYPE_5__* %11)
  br label %72

72:                                               ; preds = %59, %54
  %73 = load %struct.vo*, %struct.vo** %6, align 8
  %74 = bitcast %struct.mp_rect* %5 to i64*
  %75 = load i64, i64* %74, align 4
  %76 = call i32 @vo_x11_sizehint(%struct.vo* %73, i64 %75, i32 0)
  br label %77

77:                                               ; preds = %72, %20
  ret void
}

declare dso_local i32 @RC_W(i64) #1

declare dso_local i32 @RC_H(i64) #1

declare dso_local i32 @XConfigureWindow(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @vo_x11_sizehint(%struct.vo*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
