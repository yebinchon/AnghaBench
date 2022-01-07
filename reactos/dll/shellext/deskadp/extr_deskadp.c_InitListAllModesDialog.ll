; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/deskadp/extr_deskadp.c_InitListAllModesDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/deskadp/extr_deskadp.c_InitListAllModesDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* (i32, i32)*, %struct.TYPE_10__* (i32)* }
%struct.TYPE_10__ = type { i32, i32 }

@hInstance = common dso_local global i32 0, align 4
@IDS_MODEFMT = common dso_local global i32 0, align 4
@IDC_ALLVALIDMODES = common dso_local global i32 0, align 4
@LB_ADDSTRING = common dso_local global i32 0, align 4
@LB_SETITEMDATA = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @InitListAllModesDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitListAllModesDialog(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i32], align 16
  %7 = alloca [64 x i32], align 16
  %8 = alloca [64 x i32], align 16
  %9 = alloca [64 x i32], align 16
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %12, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %108

18:                                               ; preds = %2
  %19 = load i32, i32* @hInstance, align 4
  %20 = load i32, i32* @IDS_MODEFMT, align 4
  %21 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %22 = call i32 @LoadString(i32 %19, i32 %20, i32* %21, i32 64)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = call i32 @TEXT(i8 signext 0)
  %26 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__* (i32)*, %struct.TYPE_10__* (i32)** %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_10__* %32(i32 %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %11, align 8
  br label %39

39:                                               ; preds = %104, %27
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__* (i32, i32)*, %struct.TYPE_10__* (i32, i32)** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %12, align 8
  %52 = trunc i64 %50 to i32
  %53 = call %struct.TYPE_10__* %44(i32 %49, i32 %52)
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %10, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %103

56:                                               ; preds = %39
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %59 = call i32 @GetColorDescription(%struct.TYPE_10__* %57, i32* %58, i32 64)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %62 = call i32 @GetRefreshRateDescription(%struct.TYPE_10__* %60, i32* %61, i32 64)
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %64 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %72 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %73 = call i32 @_sntprintf(i32* %63, i32 64, i32* %64, i32 %67, i32 %70, i32* %71, i32* %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @IDC_ALLVALIDMODES, align 4
  %76 = load i32, i32* @LB_ADDSTRING, align 4
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %78 = ptrtoint i32* %77 to i32
  %79 = call i64 @SendDlgItemMessage(i32 %74, i32 %75, i32 %76, i32 0, i32 %78)
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %56
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @IDC_ALLVALIDMODES, align 4
  %85 = load i32, i32* @LB_SETITEMDATA, align 4
  %86 = load i64, i64* %13, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = ptrtoint %struct.TYPE_10__* %88 to i32
  %90 = call i64 @SendDlgItemMessage(i32 %83, i32 %84, i32 %85, i32 %87, i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = icmp eq %struct.TYPE_10__* %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %82
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @IDC_ALLVALIDMODES, align 4
  %97 = load i32, i32* @LB_SETCURSEL, align 4
  %98 = load i64, i64* %13, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i64 @SendDlgItemMessage(i32 %95, i32 %96, i32 %97, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %94, %82
  br label %102

102:                                              ; preds = %101, %56
  br label %103

103:                                              ; preds = %102, %39
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %39, label %107

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %107, %2
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #1

declare dso_local i32 @TEXT(i8 signext) #1

declare dso_local i32 @GetColorDescription(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @GetRefreshRateDescription(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @_sntprintf(i32*, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
