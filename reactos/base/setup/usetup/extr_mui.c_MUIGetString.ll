; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/usetup/extr_mui.c_MUIGetString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/usetup/extr_mui.c_MUIGetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@.str = private unnamed_addr constant [57 x i8] c"Error: failed find string id %lu for language index %lu\0A\00", align 1
@POPUP_WAIT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"<nostring>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MUIGetString(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca [128 x i32], align 16
  store i64 %0, i64* %3, align 8
  %7 = call %struct.TYPE_3__* (...) @FindMUIStringEntries()
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %33, %10
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %45

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %11

36:                                               ; preds = %11
  br label %37

37:                                               ; preds = %36, %1
  %38 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %39 = load i64, i64* %3, align 8
  %40 = call i32 (...) @FindLanguageIndex()
  %41 = call i32 @sprintf(i32* %38, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %40)
  %42 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %43 = load i32, i32* @POPUP_WAIT_NONE, align 4
  %44 = call i32 @PopupError(i32* %42, i32* null, i32* null, i32 %43)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %45

45:                                               ; preds = %37, %26
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local %struct.TYPE_3__* @FindMUIStringEntries(...) #1

declare dso_local i32 @sprintf(i32*, i8*, i64, i32) #1

declare dso_local i32 @FindLanguageIndex(...) #1

declare dso_local i32 @PopupError(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
