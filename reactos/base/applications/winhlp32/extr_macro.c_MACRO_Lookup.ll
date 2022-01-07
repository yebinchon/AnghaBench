; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.c_MACRO_Lookup.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.c_MACRO_Lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i8* }
%struct.lexret = type { i8*, i8* }

@MACRO_Builtins = common dso_local global i64 0, align 8
@EMPTY = common dso_local global i32 0, align 4
@MACRO_Loaded = common dso_local global i64 0, align 8
@MACRO_NumLoaded = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hwndApp\00", align 1
@Globals = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@INTEGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"hwndContext\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"qchPath\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"qError\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"lTopicNo\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hfs\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"coForeground\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"coBackground\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"keyword %s not substituted in macro parsing\0A\00", align 1
@IDENTIFIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MACRO_Lookup(i8* %0, %struct.lexret* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lexret*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.lexret* %1, %struct.lexret** %5, align 8
  %8 = load i64, i64* @MACRO_Builtins, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.lexret*, %struct.lexret** %5, align 8
  %11 = call i32 @MACRO_DoLookUp(i64 %8, i8* %9, %struct.lexret* %10, i32 -1)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @EMPTY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %114

16:                                               ; preds = %2
  %17 = load i64, i64* @MACRO_Loaded, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i64, i64* @MACRO_Loaded, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.lexret*, %struct.lexret** %5, align 8
  %23 = load i32, i32* @MACRO_NumLoaded, align 4
  %24 = call i32 @MACRO_DoLookUp(i64 %20, i8* %21, %struct.lexret* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @EMPTY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %114

29:                                               ; preds = %19, %16
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  %34 = load %struct.lexret*, %struct.lexret** %5, align 8
  %35 = getelementptr inbounds %struct.lexret, %struct.lexret* %34, i32 0, i32 1
  store i8* null, i8** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 1), align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %7, align 8
  br label %37

37:                                               ; preds = %56, %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.lexret*, %struct.lexret** %5, align 8
  %54 = getelementptr inbounds %struct.lexret, %struct.lexret* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %60

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %7, align 8
  br label %37

60:                                               ; preds = %48, %37
  %61 = load i32, i32* @INTEGER, align 4
  store i32 %61, i32* %3, align 4
  br label %114

62:                                               ; preds = %29
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 0), align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 0), align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %69
  %76 = phi i8* [ %73, %69 ], [ null, %74 ]
  %77 = load %struct.lexret*, %struct.lexret** %5, align 8
  %78 = getelementptr inbounds %struct.lexret, %struct.lexret* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @INTEGER, align 4
  store i32 %79, i32* %3, align 4
  br label %114

80:                                               ; preds = %62
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100, %96, %92, %88, %84, %80
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @debugstr_a(i8* %105)
  %107 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EMPTY, align 4
  store i32 %108, i32* %3, align 4
  br label %114

109:                                              ; preds = %100
  %110 = load i8*, i8** %4, align 8
  %111 = load %struct.lexret*, %struct.lexret** %5, align 8
  %112 = getelementptr inbounds %struct.lexret, %struct.lexret* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @IDENTIFIER, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %104, %75, %60, %27, %14
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @MACRO_DoLookUp(i64, i8*, %struct.lexret*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @WINE_FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
