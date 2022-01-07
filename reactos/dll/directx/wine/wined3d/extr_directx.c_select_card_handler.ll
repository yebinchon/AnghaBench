; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_select_card_handler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_select_card_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_vendor_selection = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Applying card selector \22%s\22.\0A\00", align 1
@PCI_DEVICE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"Couldn't find a suitable card selector for GL vendor %04x (using GL_RENDERER %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_vendor_selection*, i32, i32, i8*)* @select_card_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_card_handler(%struct.gl_vendor_selection* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gl_vendor_selection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gl_vendor_selection* %0, %struct.gl_vendor_selection** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %76, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %12
  %17 = load %struct.gl_vendor_selection*, %struct.gl_vendor_selection** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %17, i64 %19
  %21 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %76

26:                                               ; preds = %16
  %27 = load %struct.gl_vendor_selection*, %struct.gl_vendor_selection** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %27, i64 %29
  %31 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %71, %26
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.gl_vendor_selection*, %struct.gl_vendor_selection** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %36, i64 %38
  %40 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %35, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.gl_vendor_selection*, %struct.gl_vendor_selection** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %45, i64 %47
  %49 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strstr(i8* %44, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %43
  %59 = load %struct.gl_vendor_selection*, %struct.gl_vendor_selection** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %59, i64 %61
  %63 = getelementptr inbounds %struct.gl_vendor_selection, %struct.gl_vendor_selection* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  br label %85

70:                                               ; preds = %43
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %34

74:                                               ; preds = %34
  %75 = load i32, i32* @PCI_DEVICE_NONE, align 4
  store i32 %75, i32* %5, align 4
  br label %85

76:                                               ; preds = %25
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %12

79:                                               ; preds = %12
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @debugstr_a(i8* %81)
  %83 = call i32 @FIXME(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %82)
  %84 = load i32, i32* @PCI_DEVICE_NONE, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %74, %58
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
