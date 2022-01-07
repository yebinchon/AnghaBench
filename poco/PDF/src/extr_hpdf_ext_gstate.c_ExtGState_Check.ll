; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_ext_gstate.c_ExtGState_Check.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_ext_gstate.c_ExtGState_Check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@HPDF_INVALID_OBJECT = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_EXT_GSTATE_R = common dso_local global i32 0, align 4
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_EXT_GSTATE_READ_ONLY = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExtGState_Check(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = call i32 @HPDF_ExtGState_Validate(%struct.TYPE_6__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @HPDF_INVALID_OBJECT, align 4
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HPDF_OSUBCLASS_EXT_GSTATE_R, align 4
  %15 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HPDF_EXT_GSTATE_READ_ONLY, align 4
  %23 = call i32 @HPDF_RaiseError(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %9
  %25 = load i32, i32* @HPDF_OK, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %18, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @HPDF_ExtGState_Validate(%struct.TYPE_6__*) #1

declare dso_local i32 @HPDF_RaiseError(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
