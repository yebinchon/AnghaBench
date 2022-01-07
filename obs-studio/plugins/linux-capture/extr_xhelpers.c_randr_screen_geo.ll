; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xhelpers.c_randr_screen_geo.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xhelpers.c_randr_screen_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randr_screen_geo(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.TYPE_6__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__**, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_6__** %6, %struct.TYPE_6__*** %15, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @xcb_get_setup(i32* %24)
  %26 = call %struct.TYPE_6__* @xcb_setup_roots_iterator(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %16, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xcb_randr_get_screen_resources(i32* %30, i32 %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %18, align 4
  %37 = call i32* @xcb_randr_get_screen_resources_reply(i32* %35, i32 %36, i32 0)
  store i32* %37, i32** %19, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %7
  br label %90

41:                                               ; preds = %7
  %42 = load i32*, i32** %19, align 8
  %43 = call i32 @xcb_randr_get_screen_resources_crtcs_length(i32* %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %41
  br label %90

51:                                               ; preds = %46
  %52 = load i32*, i32** %19, align 8
  %53 = call i32* @xcb_randr_get_screen_resources_crtcs(i32* %52)
  store i32* %53, i32** %21, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @xcb_randr_get_crtc_info(i32* %54, i32 %59, i32 0)
  store i32 %60, i32* %22, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %22, align 4
  %63 = call %struct.TYPE_7__* @xcb_randr_get_crtc_info_reply(i32* %61, i32 %62, i32 0)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %23, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  br label %90

67:                                               ; preds = %51
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %14, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %85 = icmp ne %struct.TYPE_6__** %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %67
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %88, align 8
  br label %89

89:                                               ; preds = %86, %67
  store i32 0, i32* %8, align 4
  br label %95

90:                                               ; preds = %66, %50, %40
  %91 = load i32*, i32** %14, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32*, i32** %13, align 8
  store i32 0, i32* %92, align 4
  %93 = load i32*, i32** %12, align 8
  store i32 0, i32* %93, align 4
  %94 = load i32*, i32** %11, align 8
  store i32 0, i32* %94, align 4
  store i32 -1, i32* %8, align 4
  br label %95

95:                                               ; preds = %90, %89
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_6__* @xcb_setup_roots_iterator(i32) #1

declare dso_local i32 @xcb_get_setup(i32*) #1

declare dso_local i32 @xcb_randr_get_screen_resources(i32*, i32) #1

declare dso_local i32* @xcb_randr_get_screen_resources_reply(i32*, i32, i32) #1

declare dso_local i32 @xcb_randr_get_screen_resources_crtcs_length(i32*) #1

declare dso_local i32* @xcb_randr_get_screen_resources_crtcs(i32*) #1

declare dso_local i32 @xcb_randr_get_crtc_info(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @xcb_randr_get_crtc_info_reply(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
