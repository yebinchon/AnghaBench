; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_DownloadBootPages.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_DownloadBootPages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@BOOT_FLAG = common dso_local global i32 0, align 4
@GET_PROG = common dso_local global i32 0, align 4
@MAXSWAPSIZE = common dso_local global i32 0, align 4
@mei_arc_swap_buff = common dso_local global i32 0, align 4
@GET_DATA = common dso_local global i32 0, align 4
@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @IFX_MEI_DownloadBootPages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_DownloadBootPages(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  br label %6

6:                                                ; preds = %78, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_6__* @DSL_DEV_PRIVATE(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %81

15:                                               ; preds = %6
  %16 = load i32*, i32** %2, align 8
  %17 = call %struct.TYPE_6__* @DSL_DEV_PRIVATE(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BOOT_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %15
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @GET_PROG, align 4
  %34 = load i32, i32* @MAXSWAPSIZE, align 4
  %35 = load i32, i32* @mei_arc_swap_buff, align 4
  %36 = call i32 @IFX_MEI_GetPage(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32* %5)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @mei_arc_swap_buff, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @IFX_MEI_DMAWrite(i32* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %30
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32*, i32** %2, align 8
  %48 = call %struct.TYPE_6__* @DSL_DEV_PRIVATE(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BOOT_FLAG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %46
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @GET_DATA, align 4
  %65 = load i32, i32* @MAXSWAPSIZE, align 4
  %66 = load i32, i32* @mei_arc_swap_buff, align 4
  %67 = call i32 @IFX_MEI_GetPage(i32* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32* %5)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @mei_arc_swap_buff, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @IFX_MEI_DMAWrite(i32* %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %61
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %6

81:                                               ; preds = %6
  %82 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_6__* @DSL_DEV_PRIVATE(i32*) #1

declare dso_local i32 @IFX_MEI_GetPage(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @IFX_MEI_DMAWrite(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
