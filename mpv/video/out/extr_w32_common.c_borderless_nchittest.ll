; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_borderless_nchittest.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_borderless_nchittest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@HTCLIENT = common dso_local global i32 0, align 4
@SM_CXFRAME = common dso_local global i32 0, align 4
@SM_CXPADDEDBORDER = common dso_local global i32 0, align 4
@SM_CXBORDER = common dso_local global i32 0, align 4
@HTTOPLEFT = common dso_local global i32 0, align 4
@HTTOPRIGHT = common dso_local global i32 0, align 4
@HTTOP = common dso_local global i32 0, align 4
@HTBOTTOMLEFT = common dso_local global i32 0, align 4
@HTBOTTOMRIGHT = common dso_local global i32 0, align 4
@HTBOTTOM = common dso_local global i32 0, align 4
@HTLEFT = common dso_local global i32 0, align 4
@HTRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_w32_state*, i32, i32)* @borderless_nchittest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @borderless_nchittest(%struct.vo_w32_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_w32_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vo_w32_state*, %struct.vo_w32_state** %5, align 8
  %12 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IsMaximized(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @HTCLIENT, align 4
  store i32 %17, i32* %4, align 4
  br label %116

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = load %struct.vo_w32_state*, %struct.vo_w32_state** %5, align 8
  %26 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ScreenToClient(i32 %27, %struct.TYPE_3__* %8)
  %29 = load i32, i32* @SM_CXFRAME, align 4
  %30 = call i32 @GetSystemMetrics(i32 %29)
  %31 = load i32, i32* @SM_CXPADDEDBORDER, align 4
  %32 = call i32 @GetSystemMetrics(i32 %31)
  %33 = add nsw i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 2
  %36 = load i32, i32* @SM_CXBORDER, align 4
  %37 = call i32 @GetSystemMetrics(i32 %36)
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @HTTOPLEFT, align 4
  store i32 %49, i32* %4, align 4
  br label %116

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vo_w32_state*, %struct.vo_w32_state** %5, align 8
  %54 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rect_w(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  %59 = icmp sge i32 %52, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @HTTOPRIGHT, align 4
  store i32 %61, i32* %4, align 4
  br label %116

62:                                               ; preds = %50
  %63 = load i32, i32* @HTTOP, align 4
  store i32 %63, i32* %4, align 4
  br label %116

64:                                               ; preds = %18
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vo_w32_state*, %struct.vo_w32_state** %5, align 8
  %68 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rect_h(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %70, %71
  %73 = icmp sge i32 %66, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @HTBOTTOMLEFT, align 4
  store i32 %80, i32* %4, align 4
  br label %116

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.vo_w32_state*, %struct.vo_w32_state** %5, align 8
  %85 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rect_w(i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp sge i32 %83, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @HTBOTTOMRIGHT, align 4
  store i32 %92, i32* %4, align 4
  br label %116

93:                                               ; preds = %81
  %94 = load i32, i32* @HTBOTTOM, align 4
  store i32 %94, i32* %4, align 4
  br label %116

95:                                               ; preds = %64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @HTLEFT, align 4
  store i32 %101, i32* %4, align 4
  br label %116

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.vo_w32_state*, %struct.vo_w32_state** %5, align 8
  %106 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @rect_w(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %108, %109
  %111 = icmp sge i32 %104, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32, i32* @HTRIGHT, align 4
  store i32 %113, i32* %4, align 4
  br label %116

114:                                              ; preds = %102
  %115 = load i32, i32* @HTCLIENT, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %112, %100, %93, %91, %79, %62, %60, %48, %16
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @IsMaximized(i32) #1

declare dso_local i32 @ScreenToClient(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @rect_w(i32) #1

declare dso_local i32 @rect_h(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
