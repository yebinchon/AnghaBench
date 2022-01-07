; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_namedict.c_HPDF_NameDict_Validate.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_namedict.c_HPDF_NameDict_Validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@HPDF_FALSE = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_NAMEDICT = common dso_local global i32 0, align 4
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_INVALID_OBJECT = common dso_local global i32 0, align 4
@HPDF_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_NameDict_Validate(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %7, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HPDF_OSUBCLASS_NAMEDICT, align 4
  %14 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %15 = or i32 %13, %14
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HPDF_INVALID_OBJECT, align 4
  %22 = call i32 @HPDF_SetError(i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @HPDF_TRUE, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %17, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
