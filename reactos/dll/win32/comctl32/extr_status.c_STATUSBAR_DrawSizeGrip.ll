; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_DrawSizeGrip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_DrawSizeGrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"draw size grip %s\0A\00", align 1
@SP_GRIPPER = common dso_local global i32 0, align 4
@TS_DRAW = common dso_local global i32 0, align 4
@SM_CXVSCROLL = common dso_local global i32 0, align 4
@SM_CYHSCROLL = common dso_local global i32 0, align 4
@DFC_SCROLL = common dso_local global i32 0, align 4
@DFCS_SCROLLSIZEGRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.TYPE_11__*)* @STATUSBAR_DrawSizeGrip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @STATUSBAR_DrawSizeGrip(i64 %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = bitcast %struct.TYPE_11__* %7 to i8*
  %11 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %12)
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %3
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SP_GRIPPER, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = load i32, i32* @TS_DRAW, align 4
  %23 = call i32 @GetThemePartSize(i64 %18, i32 %19, i32 %20, i32 0, %struct.TYPE_11__* %21, i32 %22, %struct.TYPE_10__* %8)
  %24 = call i64 @SUCCEEDED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %28 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %37 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SP_GRIPPER, align 4
  %48 = call i32 @DrawThemeBackground(i64 %45, i32 %46, i32 %47, i32 0, %struct.TYPE_11__* %7, i32* null)
  %49 = call i64 @SUCCEEDED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %26
  br label %85

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52, %17
  br label %54

54:                                               ; preds = %53, %3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @SM_CXVSCROLL, align 4
  %60 = call i8* @GetSystemMetrics(i32 %59)
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sub nsw i64 %63, 1
  %65 = inttoptr i64 %64 to i8*
  %66 = call i8* @max(i8* %56, i8* %65)
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @SM_CYHSCROLL, align 4
  %73 = call i8* @GetSystemMetrics(i32 %72)
  %74 = ptrtoint i8* %71 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sub nsw i64 %76, 1
  %78 = inttoptr i64 %77 to i8*
  %79 = call i8* @max(i8* %69, i8* %78)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @DFC_SCROLL, align 4
  %83 = load i32, i32* @DFCS_SCROLLSIZEGRIP, align 4
  %84 = call i32 @DrawFrameControl(i32 %81, %struct.TYPE_11__* %7, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %54, %51
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_11__*) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @GetThemePartSize(i64, i32, i32, i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, %struct.TYPE_11__*, i32*) #2

declare dso_local i8* @max(i8*, i8*) #2

declare dso_local i8* @GetSystemMetrics(i32) #2

declare dso_local i32 @DrawFrameControl(i32, %struct.TYPE_11__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
