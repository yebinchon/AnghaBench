; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_HPDF_TTFontDef_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_HPDF_TTFontDef_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, %struct.TYPE_10__*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c" HPDF_TTFontDef_New\0A\00", align 1
@HPDF_FONTDEF_SIG_BYTES = common dso_local global i32 0, align 4
@HPDF_FONTDEF_TYPE_TRUETYPE = common dso_local global i32 0, align 4
@CleanFunc = common dso_local global i32 0, align 4
@FreeFunc = common dso_local global i32 0, align 4
@HPDF_FONT_STD_CHARSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @HPDF_TTFontDef_New(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %61

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i8* @HPDF_GetMem(%struct.TYPE_10__* %11, i32 4)
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %61

17:                                               ; preds = %10
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = call i32 @HPDF_MemSet(%struct.TYPE_11__* %18, i32 0, i32 4)
  %20 = load i32, i32* @HPDF_FONTDEF_SIG_BYTES, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @HPDF_FONTDEF_TYPE_TRUETYPE, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @CleanFunc, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @FreeFunc, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = call i8* @HPDF_GetMem(%struct.TYPE_10__* %40, i32 4)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %17
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i32 @HPDF_FreeMem(%struct.TYPE_10__* %47, %struct.TYPE_11__* %48)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %61

50:                                               ; preds = %17
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_11__*
  %56 = call i32 @HPDF_MemSet(%struct.TYPE_11__* %55, i32 0, i32 4)
  %57 = load i32, i32* @HPDF_FONT_STD_CHARSET, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %2, align 8
  br label %61

61:                                               ; preds = %50, %44, %16, %9
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %62
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i8* @HPDF_GetMem(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @HPDF_FreeMem(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
