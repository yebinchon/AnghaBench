; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_FindSoundProfile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_FindSoundProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@IDC_SOUND_SCHEME = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @FindSoundProfile(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IDC_SOUND_SCHEME, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @ComboBox_GetCount(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @CB_ERR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %49

20:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @ComboBox_GetItemData(i32 %26, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @CB_ERR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %45

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %9, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @_tcsicmp(i32 %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %3, align 8
  br label %49

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %21

48:                                               ; preds = %21
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %49

49:                                               ; preds = %48, %42, %19
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %50
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @ComboBox_GetCount(i32) #1

declare dso_local i64 @ComboBox_GetItemData(i32, i64) #1

declare dso_local i32 @_tcsicmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
