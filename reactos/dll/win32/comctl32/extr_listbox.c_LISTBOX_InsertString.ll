; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_InsertString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_InsertString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@LISTBOX_InsertString.empty_stringW = internal constant [1 x i32] zeroinitializer, align 4
@LBN_ERRSPACE = common dso_local global i32 0, align 4
@LB_ERRSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"[%p]: added item %d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*)* @LISTBOX_InsertString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_InsertString(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = call i64 @HAS_STRINGS(%struct.TYPE_6__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @LISTBOX_InsertString.empty_stringW, i64 0, i64 0), i32** %7, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @strlenW(i32* %19)
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32* @HeapAlloc(i32 %18, i32 0, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = load i32, i32* @LBN_ERRSPACE, align 4
  %30 = call i32 @SEND_NOTIFICATION(%struct.TYPE_6__* %28, i32 %29)
  %31 = load i32, i32* @LB_ERRSPACE, align 4
  store i32 %31, i32* %4, align 4
  br label %72

32:                                               ; preds = %17
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @strcpyW(i32* %33, i32* %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = ptrtoint i32* %47 to i32
  %49 = call i32 @LISTBOX_InsertItem(%struct.TYPE_6__* %44, i32 %45, i32* %46, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @HeapFree(i32 %52, i32 0, i32* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %43
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = call i64 @HAS_STRINGS(%struct.TYPE_6__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32*, i32** %8, align 8
  %66 = call i8* @debugstr_w(i32* %65)
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i8* [ %66, %64 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %67 ]
  %70 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i8* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %51, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @HAS_STRINGS(%struct.TYPE_6__*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @SEND_NOTIFICATION(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @strcpyW(i32*, i32*) #1

declare dso_local i32 @LISTBOX_InsertItem(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i8*) #1

declare dso_local i8* @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
