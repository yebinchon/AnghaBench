; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___RtlImageRvaToVa.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___RtlImageRvaToVa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__RtlImageRvaToVa(i32* %0, i32* %1, i64 %2, %struct.TYPE_4__** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_4__** %3, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %12 = icmp ne %struct.TYPE_4__** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  br label %16

16:                                               ; preds = %13, %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @SWAPD(i32 %23)
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @SWAPD(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @SWAPD(i32 %34)
  %36 = add nsw i64 %31, %35
  %37 = icmp sge i64 %27, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %26, %19, %16
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call %struct.TYPE_4__* @RtlImageRvaToSection(i32* %39, i32* %40, i64 %41)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %10, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = icmp eq %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32* null, i32** %5, align 8
  br label %69

46:                                               ; preds = %38
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %48 = icmp ne %struct.TYPE_4__** %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i32*, i32** %7, align 8
  %55 = ptrtoint i32* %54 to i64
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @SWAPD(i32 %60)
  %62 = add nsw i64 %57, %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @SWAPD(i32 %65)
  %67 = sub nsw i64 %62, %66
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %5, align 8
  br label %69

69:                                               ; preds = %53, %45
  %70 = load i32*, i32** %5, align 8
  ret i32* %70
}

declare dso_local i64 @SWAPD(i32) #1

declare dso_local %struct.TYPE_4__* @RtlImageRvaToSection(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
