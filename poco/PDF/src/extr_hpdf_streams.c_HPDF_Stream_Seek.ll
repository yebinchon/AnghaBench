; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_Seek.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}*, i32 }

@.str = private unnamed_addr constant [19 x i8] c" HPDF_Stream_Seek\0A\00", align 1
@HPDF_INVALID_OPERATION = common dso_local global i32 0, align 4
@HPDF_THIS_FUNC_WAS_SKIPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Stream_Seek(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.TYPE_4__*, i32, i32)**
  %12 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_4__*, i32, i32)* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HPDF_INVALID_OPERATION, align 4
  %19 = call i32 @HPDF_SetError(i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @HPDF_Error_GetCode(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @HPDF_THIS_FUNC_WAS_SKIPPED, align 4
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.TYPE_4__*, i32, i32)**
  %32 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %32(%struct.TYPE_4__* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %26, %14
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
