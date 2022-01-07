; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fdi.c_QTMfdi_initmodel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fdi.c_QTMfdi_initmodel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.QTMmodel = type { i32, i32, i32*, %struct.QTMmodelsym* }
%struct.QTMmodelsym = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.QTMmodel*, %struct.QTMmodelsym*, i32, i32)* @QTMfdi_initmodel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @QTMfdi_initmodel(%struct.QTMmodel* %0, %struct.QTMmodelsym* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.QTMmodel*, align 8
  %6 = alloca %struct.QTMmodelsym*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.QTMmodel* %0, %struct.QTMmodel** %5, align 8
  store %struct.QTMmodelsym* %1, %struct.QTMmodelsym** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.QTMmodel*, %struct.QTMmodel** %5, align 8
  %11 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %10, i32 0, i32 0
  store i32 4, i32* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.QTMmodel*, %struct.QTMmodel** %5, align 8
  %14 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %6, align 8
  %16 = load %struct.QTMmodel*, %struct.QTMmodel** %5, align 8
  %17 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %16, i32 0, i32 3
  store %struct.QTMmodelsym* %15, %struct.QTMmodelsym** %17, align 8
  %18 = load %struct.QTMmodel*, %struct.QTMmodel** %5, align 8
  %19 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @memset(i32* %20, i32 255, i32 8)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %56, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.QTMmodel*, %struct.QTMmodel** %5, align 8
  %29 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32 %27, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.QTMmodel*, %struct.QTMmodel** %5, align 8
  %40 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %39, i32 0, i32 3
  %41 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %41, i64 %43
  %45 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load %struct.QTMmodel*, %struct.QTMmodel** %5, align 8
  %50 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %49, i32 0, i32 3
  %51 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %51, i64 %53
  %55 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %54, i32 0, i32 1
  store i32 %48, i32* %55, align 4
  br label %56

56:                                               ; preds = %26
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load %struct.QTMmodel*, %struct.QTMmodel** %5, align 8
  %61 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %60, i32 0, i32 3
  %62 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %62, i64 %64
  %66 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
