; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_GetXObjectName.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_GetXObjectName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }

@.str = private unnamed_addr constant [27 x i8] c" HPDF_Page_GetXObjectName\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Resources\00", align 1
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HPDF_Page_GetXObjectName(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %6, align 8
  %20 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = icmp ne %struct.TYPE_16__* %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %28 = call %struct.TYPE_16__* @HPDF_Page_GetInheritableItem(%struct.TYPE_18__* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %8, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = icmp ne %struct.TYPE_16__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %102

32:                                               ; preds = %25
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_16__* @HPDF_Dict_New(i32 %35)
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %9, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %102

40:                                               ; preds = %32
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = call i64 @HPDF_Dict_Add(%struct.TYPE_16__* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_16__* %42)
  %44 = load i64, i64* @HPDF_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %102

47:                                               ; preds = %40
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %50, align 8
  br label %51

51:                                               ; preds = %47, %2
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = call i8* @HPDF_Dict_GetKeyByObj(%struct.TYPE_16__* %54, %struct.TYPE_16__* %55)
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %100, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %61 = add nsw i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %10, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %11, align 8
  %65 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i64 @HPDF_StrCpy(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @HPDF_IToA(i8* %71, i64 %79, i8* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = call i64 @HPDF_Dict_Add(%struct.TYPE_16__* %84, i8* %64, %struct.TYPE_16__* %85)
  %87 = load i64, i64* @HPDF_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %59
  store i8* null, i8** %3, align 8
  store i32 1, i32* %14, align 4
  br label %96

90:                                               ; preds = %59
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = call i8* @HPDF_Dict_GetKeyByObj(%struct.TYPE_16__* %93, %struct.TYPE_16__* %94)
  store i8* %95, i8** %7, align 8
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %90, %89
  %97 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %14, align 4
  switch i32 %98, label %104 [
    i32 0, label %99
    i32 1, label %102
  ]

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %51
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %100, %96, %46, %39, %31
  %103 = load i8*, i8** %3, align 8
  ret i8* %103

104:                                              ; preds = %96
  unreachable
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_16__* @HPDF_Page_GetInheritableItem(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local %struct.TYPE_16__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_16__*, i8*, %struct.TYPE_16__*) #1

declare dso_local i8* @HPDF_Dict_GetKeyByObj(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @HPDF_StrCpy(i8*, i8*, i8*) #1

declare dso_local i32 @HPDF_IToA(i8*, i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
