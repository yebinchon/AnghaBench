; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_SetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_SetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@FW_BOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"full redraw needed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i64)* @TOOLTIPS_SetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TOOLTIPS_SetFont(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @GetObjectW(i32 %9, i32 4, %struct.TYPE_7__* %8)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @DeleteObject(i8* %16)
  %18 = call i8* @CreateFontIndirectW(%struct.TYPE_7__* %8)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @DeleteObject(i8* %23)
  %25 = load i32, i32* @FW_BOLD, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = call i8* @CreateFontIndirectW(%struct.TYPE_7__* %8)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %13
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32, %13
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @GetObjectW(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @DeleteObject(i8*) #1

declare dso_local i8* @CreateFontIndirectW(%struct.TYPE_7__*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
