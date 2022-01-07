; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_page_label.c_HPDF_PageLabel_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_page_label.c_HPDF_PageLabel_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c" HPDF_PageLabel_New\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@HPDF_PAGE_NUM_STYLE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"St\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HPDF_PageLabel_New(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @HPDF_Dict_New(i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %102

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %56 [
    i32 132, label %21
    i32 128, label %28
    i32 130, label %35
    i32 129, label %42
    i32 131, label %49
  ]

21:                                               ; preds = %19
  %22 = load i32*, i32** %10, align 8
  %23 = call i64 @HPDF_Dict_AddName(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i64, i64* @HPDF_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %99

27:                                               ; preds = %21
  br label %62

28:                                               ; preds = %19
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @HPDF_Dict_AddName(i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i64, i64* @HPDF_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %99

34:                                               ; preds = %28
  br label %62

35:                                               ; preds = %19
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @HPDF_Dict_AddName(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i64, i64* @HPDF_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %99

41:                                               ; preds = %35
  br label %62

42:                                               ; preds = %19
  %43 = load i32*, i32** %10, align 8
  %44 = call i64 @HPDF_Dict_AddName(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i64, i64* @HPDF_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %99

48:                                               ; preds = %42
  br label %62

49:                                               ; preds = %19
  %50 = load i32*, i32** %10, align 8
  %51 = call i64 @HPDF_Dict_AddName(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i64, i64* @HPDF_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %99

55:                                               ; preds = %49
  br label %62

56:                                               ; preds = %19
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* @HPDF_PAGE_NUM_STYLE_OUT_OF_RANGE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @HPDF_SetError(i32* %58, i32 %59, i32 %60)
  br label %99

62:                                               ; preds = %55, %48, %41, %34, %27
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @HPDF_String_New(i32 %75, i8* %76, i32 %79)
  %81 = call i64 @HPDF_Dict_Add(i32* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* @HPDF_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %99

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %65, %62
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @HPDF_Dict_AddNumber(i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  %93 = load i64, i64* @HPDF_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %99

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %86
  %98 = load i32*, i32** %10, align 8
  store i32* %98, i32** %5, align 8
  br label %102

99:                                               ; preds = %95, %84, %56, %54, %47, %40, %33, %26
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @HPDF_Dict_Free(i32* %100)
  store i32* null, i32** %5, align 8
  br label %102

102:                                              ; preds = %99, %97, %18
  %103 = load i32*, i32** %5, align 8
  ret i32* %103
}

declare dso_local i32* @HPDF_Dict_New(i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Dict_AddName(i32*, i8*, i8*) #1

declare dso_local i32 @HPDF_SetError(i32*, i32, i32) #1

declare dso_local i64 @HPDF_Dict_Add(i32*, i8*, i32) #1

declare dso_local i32 @HPDF_String_New(i32, i8*, i32) #1

declare dso_local i64 @HPDF_Dict_AddNumber(i32*, i8*, i32) #1

declare dso_local i32 @HPDF_Dict_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
