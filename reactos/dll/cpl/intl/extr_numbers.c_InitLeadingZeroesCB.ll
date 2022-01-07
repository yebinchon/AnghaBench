; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitLeadingZeroesCB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitLeadingZeroesCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@IDC_NUMBERSDISPLEADZER = common dso_local global i32 0, align 4
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@MAX_LEAD_ZEROES_SAMPLES = common dso_local global i64 0, align 8
@lpLeadNumFmtSamples = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i32] [i32 44, i32 0], align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @InitLeadingZeroesCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitLeadingZeroesCB(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IDC_NUMBERSDISPLEADZER, align 4
  %10 = load i32, i32* @CB_RESETCONTENT, align 4
  %11 = call i32 @SendDlgItemMessageW(i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %38, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MAX_LEAD_ZEROES_SAMPLES, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load i32*, i32** @lpLeadNumFmtSamples, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @ReplaceSubStr(i32 %20, i32 %23, i8* bitcast ([2 x i32]* @.str to i8*))
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IDC_NUMBERSDISPLEADZER, align 4
  %30 = load i32, i32* @CB_ADDSTRING, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @SendDlgItemMessage(i32 %28, i32 %29, i32 %30, i32 0, i32 %32)
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @HeapFree(i32 %34, i32 0, i32* %35)
  br label %37

37:                                               ; preds = %27, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %12

41:                                               ; preds = %12
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @IDC_NUMBERSDISPLEADZER, align 4
  %44 = load i32, i32* @CB_SETCURSEL, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @SendDlgItemMessageW(i32 %42, i32 %43, i32 %44, i32 %48, i32 0)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32* @ReplaceSubStr(i32, i32, i8*) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
