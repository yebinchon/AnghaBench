; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_input_list.c_InputList_Add.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_input_list.c_InputList_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }

@MAX_STR_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@_InputList = common dso_local global %struct.TYPE_7__* null, align 8
@INPUT_LIST_NODE_FLAG_ADDED = common dso_local global i32 0, align 4
@LOCALE_SABBREVLANGNAME = common dso_local global i32 0, align 4
@LOCALE_NOUSEROVERRIDE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InputList_Add(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @MAX_STR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %83

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_InputList, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  br label %24

24:                                               ; preds = %42, %22
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = icmp eq %struct.TYPE_6__* %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp eq i32* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %83

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %8, align 8
  br label %24

46:                                               ; preds = %24
  %47 = call %struct.TYPE_7__* (...) @InputList_AppendNode()
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %8, align 8
  %48 = load i32, i32* @INPUT_LIST_NODE_FLAG_ADDED, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %53, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @LOWORD(i32 %61)
  %63 = load i32, i32* @LOCALE_SABBREVLANGNAME, align 4
  %64 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @ARRAYSIZE(i64* %14)
  %67 = call i64 @GetLocaleInfoW(i32 %62, i32 %65, i64* %14, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %46
  %70 = call i64 @wcslen(i64* %14)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds i64, i64* %14, i64 %75
  store i64 0, i64* %76, align 8
  %77 = call i32 @_wcsdup(i64* %14)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %73, %69
  br label %81

81:                                               ; preds = %80, %46
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %39, %20
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @InputList_AppendNode(...) #2

declare dso_local i64 @GetLocaleInfoW(i32, i32, i64*, i32) #2

declare dso_local i32 @LOWORD(i32) #2

declare dso_local i32 @ARRAYSIZE(i64*) #2

declare dso_local i64 @wcslen(i64*) #2

declare dso_local i32 @_wcsdup(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
