; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_ext_gstate.c_HPDF_ExtGState_Validate.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_ext_gstate.c_HPDF_ExtGState_Validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@HPDF_OSUBCLASS_EXT_GSTATE = common dso_local global i32 0, align 4
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_EXT_GSTATE_R = common dso_local global i32 0, align 4
@HPDF_FALSE = common dso_local global i32 0, align 4
@HPDF_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_ExtGState_Validate(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HPDF_OSUBCLASS_EXT_GSTATE, align 4
  %12 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %13 = or i32 %11, %12
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HPDF_OSUBCLASS_EXT_GSTATE_R, align 4
  %21 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %22 = or i32 %20, %21
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15, %1
  %25 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %15, %6
  %27 = load i32, i32* @HPDF_TRUE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
