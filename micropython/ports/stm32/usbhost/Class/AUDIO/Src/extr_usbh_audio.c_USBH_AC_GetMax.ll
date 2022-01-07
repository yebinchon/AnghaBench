; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AC_GetMax.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AC_GetMax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, i32 }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__**, %struct.TYPE_24__**, %struct.TYPE_23__** }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@COPY_PROTECT_CONTROL = common dso_local global i32 0, align 4
@USB_D2H = common dso_local global i32 0, align 4
@USB_REQ_RECIPIENT_INTERFACE = common dso_local global i32 0, align 4
@USB_REQ_TYPE_CLASS = common dso_local global i32 0, align 4
@UAC_GET_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, i32, i32, i32, i8*)* @USBH_AC_GetMax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_AC_GetMax(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %18, align 8
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %94 [
    i32 129, label %25
    i32 130, label %49
    i32 128, label %74
  ]

25:                                               ; preds = %6
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %30, i64 0
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %35 = load i32, i32* %16, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %17, align 4
  %38 = or i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %14, align 8
  %41 = load i32, i32* @COPY_PROTECT_CONTROL, align 4
  %42 = shl i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %13, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 0, i32* %48, align 4
  store i8* inttoptr (i64 1 to i8*), i8** %15, align 8
  br label %94

49:                                               ; preds = %6
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %54, i64 %56
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %61 = load i32, i32* %16, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %17, align 4
  %64 = or i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %14, align 8
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %12, align 8
  store i8* %73, i8** %15, align 8
  br label %94

74:                                               ; preds = %6
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %79, i64 0
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = shl i32 %84, 8
  %86 = load i32, i32* %17, align 4
  %87 = or i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %14, align 8
  %90 = load i32, i32* @COPY_PROTECT_CONTROL, align 4
  %91 = shl i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %13, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %15, align 8
  br label %94

94:                                               ; preds = %6, %74, %49, %25
  %95 = load i32, i32* @USB_D2H, align 4
  %96 = load i32, i32* @USB_REQ_RECIPIENT_INTERFACE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @USB_REQ_TYPE_CLASS, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store i32 %99, i32* %104, align 8
  %105 = load i32, i32* @UAC_GET_MAX, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 4
  store i32 %105, i32* %110, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  store i8* %111, i8** %117, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 0
  store i8* %118, i8** %124, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 0
  store i8* %125, i8** %131, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @USBH_CtlReq(%struct.TYPE_20__* %132, i32* %135, i8* %136)
  ret i32 %137
}

declare dso_local i32 @USBH_CtlReq(%struct.TYPE_20__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
