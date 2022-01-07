; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_SizeChildrenToHeight.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_SizeChildrenToHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"[%d;%d) by %d\0A\00", align 1
@RBBS_VARIABLEHEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Resizing %d: %d -> %d [%d]\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@NTF_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*)* @REBAR_SizeChildrenToHeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_SizeChildrenToHeight(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i8*, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_8__* @REBAR_GetBand(i32* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_8__* @REBAR_GetBand(i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %26, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %98, %5
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %102

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call %struct.TYPE_8__* @REBAR_GetBand(i32* %40, i32 %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %14, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %45 = call i32 @REBARSPACE(%struct.TYPE_8__* %44)
  %46 = sub nsw i32 %43, %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %15, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @round_child_height(%struct.TYPE_8__* %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %39
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RBBS_VARIABLEHEIGHT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73, i32 %74, i32 %77)
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @NTF_INVALIDATE, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %91 = call i32 @update_min_band_height(i32* %89, %struct.TYPE_8__* %90)
  br label %92

92:                                               ; preds = %69, %62, %56, %39
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @max(i32 %93, i32 %96)
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %92
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @next_visible(i32* %99, i32 %100)
  store i32 %101, i32* %13, align 4
  br label %35

102:                                              ; preds = %35
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %103, %104
  ret i32 %105
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, ...) #1

declare dso_local %struct.TYPE_8__* @REBAR_GetBand(i32*, i32) #1

declare dso_local i32 @REBARSPACE(%struct.TYPE_8__*) #1

declare dso_local i32 @round_child_height(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @update_min_band_height(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @next_visible(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
