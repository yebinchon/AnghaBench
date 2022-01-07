; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_Init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hComboBmp = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@OBM_COMBO = common dso_local global i32 0, align 4
@CBitHeight = common dso_local global i32 0, align 4
@CBitWidth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"combo bitmap [%i,%i]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @COMBO_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i64, i64* @hComboBmp, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %1, align 4
  br label %48

11:                                               ; preds = %0
  %12 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %12, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @OBM_COMBO, align 4
  %17 = call i32 @MAKEINTRESOURCEW(i32 %16)
  %18 = call i64 @LoadBitmapW(i32 0, i32 %17)
  store i64 %18, i64* @hComboBmp, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = load i64, i64* @hComboBmp, align 8
  %22 = call i32 @GetObjectW(i64 %21, i32 8, %struct.TYPE_3__* %4)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @CBitHeight, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @CBitWidth, align 4
  %27 = load i32, i32* @CBitWidth, align 4
  %28 = load i32, i32* @CBitHeight, align 4
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load i64, i64* @hComboBmp, align 8
  %32 = call i64 @SelectObject(i32 %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i32, i32* @CBitWidth, align 4
  %34 = load i32, i32* @CBitHeight, align 4
  %35 = call i32 @SetRect(i32* %6, i32 0, i32 0, i32 %33, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @InvertRect(i32 %36, i32* %6)
  %38 = load i32, i32* %2, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @SelectObject(i32 %38, i64 %39)
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %20, %14
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @DeleteDC(i32 %43)
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %1, align 4
  br label %48

46:                                               ; preds = %11
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %46, %42, %9
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i64 @LoadBitmapW(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @InvertRect(i32, i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
