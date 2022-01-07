; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_UpdateWindowCaption.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_UpdateWindowCaption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32, i32, i32 }

@MAX_STRING_LEN = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STRING_NOTEPAD = common dso_local global i32 0, align 4
@STRING_UNTITLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@EM_GETMODIFY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%s - %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateWindowCaption(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @MAX_STRING_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_STRING_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = load i32, i32* @MAX_STRING_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 3), align 8
  %19 = load i32, i32* @STRING_NOTEPAD, align 4
  %20 = call i32 @ARRAY_SIZE(i32* %14)
  %21 = call i32 @LoadString(i32 %18, i32 %19, i32* %14, i32 %20)
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = call i32 @ARRAY_SIZE(i32* %17)
  %28 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 8
  %29 = call i32 @StringCchCopy(i32* %17, i32 %27, i64* %28)
  br label %35

30:                                               ; preds = %1
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 3), align 8
  %32 = load i32, i32* @STRING_UNTITLED, align 4
  %33 = call i32 @ARRAY_SIZE(i32* %17)
  %34 = call i32 @LoadString(i32 %31, i32 %32, i32* %17, i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i64, i64* %2, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call i32 @ARRAY_SIZE(i32* %11)
  %40 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = ptrtoint i32* %17 to i32
  %42 = call i32 (i32*, i32, i32, i32, i32*, ...) @StringCbPrintf(i32* %11, i32 %39, i32 %40, i32 %41, i32* %14)
  br label %65

43:                                               ; preds = %35
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 2), align 4
  %45 = load i32, i32* @EM_GETMODIFY, align 4
  %46 = call i64 @SendMessage(i32 %44, i32 %45, i32 0, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @TRUE, align 8
  br label %52

50:                                               ; preds = %43
  %51 = load i64, i64* @FALSE, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  store i64 %53, i64* %7, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %11)
  %55 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %62

60:                                               ; preds = %52
  %61 = call i32 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 (i32*, i32, i32, i32, i32*, ...) @StringCbPrintf(i32* %11, i32 %54, i32 %55, i32 %63, i32* %17, i32* %14)
  br label %65

65:                                               ; preds = %62, %38
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 8
  %67 = call i32 @SetWindowText(i32 %66, i32* %11)
  %68 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @StringCchCopy(i32*, i32, i64*) #2

declare dso_local i32 @StringCbPrintf(i32*, i32, i32, i32, i32*, ...) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i64 @SendMessage(i32, i32, i32, i32) #2

declare dso_local i32 @SetWindowText(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
