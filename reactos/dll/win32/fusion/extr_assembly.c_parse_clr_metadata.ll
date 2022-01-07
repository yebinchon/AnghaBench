; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_parse_clr_metadata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_parse_clr_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"#~\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"#Strings\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Strings\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"#Blob\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Blob\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @parse_clr_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_clr_metadata(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = call i32 @parse_metadata_header(%struct.TYPE_14__* %12, i64* %10)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %2, align 4
  br label %122

19:                                               ; preds = %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32* @ImageRvaToVa(i32 %28, i32 %31, i64 %34, i32* null)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %19
  %39 = load i32, i32* @E_FAIL, align 4
  store i32 %39, i32* %2, align 4
  br label %122

40:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %117, %40
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %42, %47
  br i1 %48, label %49, label %120

49:                                               ; preds = %41
  %50 = load i32*, i32** %11, align 8
  %51 = bitcast i32* %50 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %4, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i64 @rva_to_offset(i32 %54, i64 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = ptrtoint i32* %63 to i64
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @lstrcmpA(i64 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %49
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @parse_clr_tables(%struct.TYPE_14__* %69, i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @FAILED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %122

77:                                               ; preds = %68
  br label %108

78:                                               ; preds = %49
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @lstrcmpA(i64 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @lstrcmpA(i64 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i8* @assembly_data_offset(%struct.TYPE_14__* %87, i64 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  br label %107

92:                                               ; preds = %82
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @lstrcmpA(i64 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @lstrcmpA(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i8* @assembly_data_offset(%struct.TYPE_14__* %101, i64 %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %100, %96
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @lstrlenA(i64 %109)
  %111 = add nsw i32 %110, 1
  %112 = add nsw i32 %111, 3
  %113 = and i32 %112, -4
  %114 = load i32*, i32** %11, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %11, align 8
  br label %117

117:                                              ; preds = %108
  %118 = load i64, i64* %6, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %6, align 8
  br label %41

120:                                              ; preds = %41
  %121 = load i32, i32* @S_OK, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %75, %38, %17
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @parse_metadata_header(%struct.TYPE_14__*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @ImageRvaToVa(i32, i32, i64, i32*) #1

declare dso_local i64 @rva_to_offset(i32, i64) #1

declare dso_local i32 @lstrcmpA(i64, i8*) #1

declare dso_local i32 @parse_clr_tables(%struct.TYPE_14__*, i64) #1

declare dso_local i8* @assembly_data_offset(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @lstrlenA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
