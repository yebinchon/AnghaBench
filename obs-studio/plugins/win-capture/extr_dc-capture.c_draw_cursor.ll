; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_draw_cursor.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_draw_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_capture = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@CURSOR_SHOWING = common dso_local global i32 0, align 4
@DI_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_capture*, i32, i64)* @draw_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cursor(%struct.dc_capture* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dc_capture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  store %struct.dc_capture* %0, %struct.dc_capture** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.dc_capture*, %struct.dc_capture** %4, align 8
  %13 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %12, i32 0, i32 0
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %15 = load %struct.dc_capture*, %struct.dc_capture** %4, align 8
  %16 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %19 = load %struct.dc_capture*, %struct.dc_capture** %4, align 8
  %20 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.dc_capture*, %struct.dc_capture** %4, align 8
  %25 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CURSOR_SHOWING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %93

32:                                               ; preds = %3
  %33 = load %struct.dc_capture*, %struct.dc_capture** %4, align 8
  %34 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CopyIcon(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %93

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @GetIconInfo(i32 %42, %struct.TYPE_9__* %8)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @ClientToScreen(i64 %49, %struct.TYPE_8__* %10)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = sub nsw i32 %55, %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = sub nsw i32 %67, %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %71, %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @DI_NORMAL, align 4
  %83 = call i32 @DrawIconEx(i32 %76, i32 %78, i32 %80, i32 %81, i32 0, i32 0, i32 0, i32* null, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DeleteObject(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @DeleteObject(i32 %88)
  br label %90

90:                                               ; preds = %51, %41
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @DestroyIcon(i32 %91)
  br label %93

93:                                               ; preds = %90, %40, %31
  ret void
}

declare dso_local i32 @CopyIcon(i32) #1

declare dso_local i64 @GetIconInfo(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ClientToScreen(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @DrawIconEx(i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DestroyIcon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
