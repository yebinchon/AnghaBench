; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_DumpItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_DumpItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"item %p - mask=%08x, pszText=%p, cchTM=%d, iImage=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"item %p - iSelectedImage=%d, iOverlay=%d, iIndent=%d, lParam=%08lx\0A\00", align 1
@CBEIF_TEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"item %p - pszText=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @COMBOEX_DumpItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COMBOEX_DumpItem(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, %struct.TYPE_4__*, i32, ...) @TRACE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %3, i32 %6, i32 %9, i32 %12, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, %struct.TYPE_4__*, i32, ...) @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %17, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CBEIF_TEXT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @debugstr_txt(i32 %41)
  %43 = call i32 (i8*, %struct.TYPE_4__*, i32, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %38, i32 %42)
  br label %44

44:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i32, ...) #1

declare dso_local i32 @debugstr_txt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
