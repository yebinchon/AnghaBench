; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_put_xvimage.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_put_xvimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.xvctx* }
%struct.vo_x11_state = type { i32, i32, i32 }
%struct.xvctx = type { i32, i32, i64, %struct.mp_rect, %struct.mp_rect }
%struct.mp_rect = type { i32, i32, i32, i32 }

@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32*)* @put_xvimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_xvimage(%struct.vo* %0, i32* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xvctx*, align 8
  %6 = alloca %struct.vo_x11_state*, align 8
  %7 = alloca %struct.mp_rect*, align 8
  %8 = alloca %struct.mp_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.vo*, %struct.vo** %3, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 1
  %15 = load %struct.xvctx*, %struct.xvctx** %14, align 8
  store %struct.xvctx* %15, %struct.xvctx** %5, align 8
  %16 = load %struct.vo*, %struct.vo** %3, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 0
  %18 = load %struct.vo_x11_state*, %struct.vo_x11_state** %17, align 8
  store %struct.vo_x11_state* %18, %struct.vo_x11_state** %6, align 8
  %19 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %20 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %19, i32 0, i32 4
  store %struct.mp_rect* %20, %struct.mp_rect** %7, align 8
  %21 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %22 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %21, i32 0, i32 3
  store %struct.mp_rect* %22, %struct.mp_rect** %8, align 8
  %23 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %24 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %27 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %31 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %34 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %38 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %41 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %11, align 4
  %44 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %45 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %48 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %52 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %2
  %56 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %57 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %60 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %63 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %66 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %70 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %73 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %78 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %81 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @True, align 4
  %86 = call i32 @XvShmPutImage(i32 %58, i32 %61, i32 %64, i32 %67, i32* %68, i32 %71, i32 %74, i32 %75, i32 %76, i32 %79, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %88 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %122

91:                                               ; preds = %2
  %92 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %93 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %96 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %99 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %102 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %106 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %109 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %114 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %117 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @XvPutImage(i32 %94, i32 %97, i32 %100, i32 %103, i32* %104, i32 %107, i32 %110, i32 %111, i32 %112, i32 %115, i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %91, %55
  ret void
}

declare dso_local i32 @XvShmPutImage(i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XvPutImage(i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
