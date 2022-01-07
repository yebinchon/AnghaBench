; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_type1.c_HPDF_Type1FontDef_SetWidths.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_type1.c_HPDF_Type1FontDef_SetWidths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [30 x i8] c" HPDF_Type1FontDef_SetWidths\0A\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Type1FontDef_SetWidths(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i32 @FreeWidth(%struct.TYPE_9__* %17)
  br label %19

19:                                               ; preds = %24, %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 65535
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 1
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 12, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @HPDF_GetMem(i32 %35, i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %8, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = icmp eq %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @HPDF_Error_GetCode(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %106

51:                                               ; preds = %29
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 12, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @HPDF_MemSet(%struct.TYPE_10__* %52, i32 0, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %101, %51
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %90, label %96

90:                                               ; preds = %70
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %70
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 1
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %6, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 1
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %8, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %64

104:                                              ; preds = %64
  %105 = load i32, i32* @HPDF_OK, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %46
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @FreeWidth(%struct.TYPE_9__*) #1

declare dso_local i64 @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @HPDF_Error_GetCode(i32) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
