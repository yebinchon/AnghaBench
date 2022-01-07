; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_guess_card.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_guess_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32 }
%struct.shader_caps = type { i32 }
%struct.fragment_caps = type { i32 }

@card_vendor_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Applying card selector \22%s\22.\0A\00", align 1
@PCI_DEVICE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unrecognized renderer %s, falling back to default.\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"No card selector available for card vendor %04x (using GL_RENDERER %s).\0A\00", align 1
@HW_VENDOR_NVIDIA = common dso_local global i32 0, align 4
@card_fallback_nvidia = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_caps*, %struct.fragment_caps*, i32, i8*, i32*, i32*)* @wined3d_guess_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_guess_card(%struct.shader_caps* %0, %struct.fragment_caps* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.shader_caps*, align 8
  %9 = alloca %struct.fragment_caps*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.shader_caps* %0, %struct.shader_caps** %8, align 8
  store %struct.fragment_caps* %1, %struct.fragment_caps** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.shader_caps*, %struct.shader_caps** %8, align 8
  %18 = load %struct.fragment_caps*, %struct.fragment_caps** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @d3d_level_from_caps(%struct.shader_caps* %17, %struct.fragment_caps* %18, i32 %19)
  store i32 %20, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %80, %6
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @card_vendor_table, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @card_vendor_table, align 8
  %28 = load i32, i32* %14, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %80

37:                                               ; preds = %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @card_vendor_table, align 8
  %39 = load i32, i32* %14, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @card_vendor_table, align 8
  %46 = load i32, i32* %14, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @card_vendor_table, align 8
  %52 = load i32, i32* %14, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @select_card_handler(i32 %50, i32 %56, i32 %58, i8* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @PCI_DEVICE_NONE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %37
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %7, align 4
  br label %96

66:                                               ; preds = %37
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @debugstr_a(i8* %67)
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @card_vendor_table, align 8
  %71 = load i32, i32* %14, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  br label %96

80:                                               ; preds = %36
  %81 = load i32, i32* %14, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %21

83:                                               ; preds = %21
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @debugstr_a(i8* %86)
  %88 = call i32 @FIXME(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %87)
  %89 = load i32, i32* @HW_VENDOR_NVIDIA, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** @card_fallback_nvidia, align 8
  %92 = load i32, i32* %15, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %83, %66, %64
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @d3d_level_from_caps(%struct.shader_caps*, %struct.fragment_caps*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @select_card_handler(i32, i32, i32, i8*) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
