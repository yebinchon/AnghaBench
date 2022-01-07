; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_xref.c_HPDF_Xref_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_xref.c_HPDF_Xref_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c" HPDF_Xref_New\0A\00", align 1
@HPDF_DEFALUT_XREF_ENTRY_NUM = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_FREE_ENTRY = common dso_local global i32 0, align 4
@HPDF_MAX_GENERATION_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c" HPDF_Xref_New failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @HPDF_Xref_New(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = call i64 @HPDF_GetMem(%struct.TYPE_16__* %9, i32 4)
  %11 = inttoptr i64 %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = call i32 @HPDF_MemSet(%struct.TYPE_15__* %16, i32 0, i32 4)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %20, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = load i32, i32* @HPDF_DEFALUT_XREF_ENTRY_NUM, align 4
  %31 = call i32 @HPDF_List_New(%struct.TYPE_16__* %29, i32 %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %15
  br label %88

39:                                               ; preds = %15
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %39
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = call i64 @HPDF_GetMem(%struct.TYPE_16__* %47, i32 4)
  %49 = inttoptr i64 %48 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %7, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %88

53:                                               ; preds = %46
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = call i64 @HPDF_List_Add(i32 %56, %struct.TYPE_14__* %57)
  %59 = load i64, i64* @HPDF_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = call i32 @HPDF_FreeMem(%struct.TYPE_16__* %62, %struct.TYPE_14__* %63)
  br label %88

65:                                               ; preds = %53
  %66 = load i32, i32* @HPDF_FREE_ENTRY, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @HPDF_MAX_GENERATION_NUM, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %65, %39
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = call i32 @HPDF_Dict_New(%struct.TYPE_16__* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  br label %88

86:                                               ; preds = %76
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %3, align 8
  br label %92

88:                                               ; preds = %85, %61, %52, %38
  %89 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = call i32 @HPDF_Xref_Free(%struct.TYPE_15__* %90)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %92

92:                                               ; preds = %88, %86, %14
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %93
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_GetMem(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @HPDF_List_New(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @HPDF_List_Add(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @HPDF_FreeMem(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @HPDF_Dict_New(%struct.TYPE_16__*) #1

declare dso_local i32 @HPDF_Xref_Free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
