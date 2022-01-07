; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBUpdateEdit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBUpdateEdit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@CBUpdateEdit.empty_stringW = internal constant [1 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"\09 %i\0A\00", align 1
@LB_GETTEXTLEN = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_GETTEXT = common dso_local global i32 0, align 4
@CBF_NOEDITNOTIFY = common dso_local global i32 0, align 4
@CBF_NOLBSELECT = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@CBF_FOCUSED = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @CBUpdateEdit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CBUpdateEdit(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* %4, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LB_GETTEXTLEN, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @SendMessageW(i32 %14, i32 %15, i64 %16, i32 0)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @LB_ERR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %11
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 1
  %24 = mul i64 %23, 4
  %25 = call i32* @heap_alloc(i64 %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LB_GETTEXT, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = call i64 @SendMessageW(i32 %30, i32 %31, i64 %32, i32 %34)
  br label %36

36:                                               ; preds = %27, %21
  br label %37

37:                                               ; preds = %36, %11
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = call i64 @CB_HASSTRINGS(%struct.TYPE_4__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i32, i32* @CBF_NOEDITNOTIFY, align 4
  %44 = load i32, i32* @CBF_NOLBSELECT, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @WM_SETTEXT, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i32*, i32** %6, align 8
  %58 = ptrtoint i32* %57 to i32
  br label %60

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ ptrtoint ([1 x i32]* @CBUpdateEdit.empty_stringW to i32), %59 ]
  %62 = call i64 @SendMessageW(i32 %52, i32 %53, i64 0, i32 %61)
  %63 = load i32, i32* @CBF_NOEDITNOTIFY, align 4
  %64 = load i32, i32* @CBF_NOLBSELECT, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %60, %38
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CBF_FOCUSED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @EM_SETSEL, align 4
  %83 = call i64 @SendMessageW(i32 %81, i32 %82, i64 0, i32 -1)
  br label %84

84:                                               ; preds = %78, %71
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @heap_free(i32* %85)
  ret void
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i64, i32) #1

declare dso_local i32* @heap_alloc(i64) #1

declare dso_local i64 @CB_HASSTRINGS(%struct.TYPE_4__*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
