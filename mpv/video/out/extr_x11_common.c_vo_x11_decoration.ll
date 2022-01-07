; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_decoration.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_decoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@_MOTIF_WM_HINTS = common dso_local global i32 0, align 4
@MWM_HINTS_FUNCTIONS = common dso_local global i32 0, align 4
@MWM_FUNC_MOVE = common dso_local global i32 0, align 4
@MWM_FUNC_CLOSE = common dso_local global i32 0, align 4
@MWM_FUNC_MINIMIZE = common dso_local global i32 0, align 4
@MWM_FUNC_MAXIMIZE = common dso_local global i32 0, align 4
@MWM_FUNC_RESIZE = common dso_local global i32 0, align 4
@MWM_HINTS_DECORATIONS = common dso_local global i32 0, align 4
@MWM_DECOR_ALL = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32)* @vo_x11_decoration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_decoration(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %10, align 8
  store %struct.vo_x11_state* %11, %struct.vo_x11_state** %5, align 8
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %13 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %18 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  br label %80

22:                                               ; preds = %16
  %23 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %24 = load i32, i32* @_MOTIF_WM_HINTS, align 4
  %25 = call i32 @XA(%struct.vo_x11_state* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 16, i1 false)
  %27 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %28 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %29 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @x11_get_property_copy(%struct.vo_x11_state* %27, i32 %30, i32 %31, i32 %32, i32 32, %struct.TYPE_3__* %7, i32 16)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %80

40:                                               ; preds = %36, %22
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @MWM_HINTS_FUNCTIONS, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @MWM_FUNC_MOVE, align 4
  %47 = load i32, i32* @MWM_FUNC_CLOSE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MWM_FUNC_MINIMIZE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MWM_FUNC_MAXIMIZE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MWM_FUNC_RESIZE, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %43, %40
  %57 = load i32, i32* @MWM_HINTS_DECORATIONS, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @MWM_DECOR_ALL, align 4
  br label %66

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %70 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %73 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PropModeReplace, align 4
  %78 = bitcast %struct.TYPE_3__* %7 to i8*
  %79 = call i32 @XChangeProperty(i32 %71, i32 %74, i32 %75, i32 %76, i32 32, i32 %77, i8* %78, i32 5)
  br label %80

80:                                               ; preds = %66, %39, %21
  ret void
}

declare dso_local i32 @XA(%struct.vo_x11_state*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @x11_get_property_copy(%struct.vo_x11_state*, i32, i32, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
