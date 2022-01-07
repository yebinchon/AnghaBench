; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_HPDF_Outline_GetOpened.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_HPDF_Outline_GetOpened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"_OPENED\00", align 1
@HPDF_OCLASS_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c" HPDF_Outline_GetOpened\0A\00", align 1
@HPDF_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Outline_GetOpened(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @HPDF_OCLASS_NUMBER, align 4
  %7 = call i32 @HPDF_Dict_GetItem(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @HPDF_Dict_GetItem(i32, i8*, i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
