; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_add_file_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_add_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i64, i64, i32*, i32)*, i64, i64, i32, i32 (i32, i32*, i32)* }
%struct.file = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@FCIERR_OPEN_SRC = common dso_local global i32 0, align 4
@_A_EXEC = common dso_local global i32 0, align 4
@CAB_BLOCKMAX = common dso_local global i64 0, align 8
@FCIERR_READ_SRC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i8*, i64, i32 (i8*, i32*, i32*, i32*, i32*, i32)*, i32)* @add_file_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_file_data(%struct.TYPE_7__* %0, i8* %1, i8* %2, i64 %3, i32 (i8*, i32*, i32*, i32*, i32*, i32)* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i8*, i32*, i32*, i32*, i32*, i32)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.file*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i8*, i32*, i32*, i32*, i32*, i32)* %4, i32 (i8*, i32*, i32*, i32*, i32*, i32)** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call %struct.file* @add_file(%struct.TYPE_7__* %18, i8* %19)
  store %struct.file* %20, %struct.file** %17, align 8
  %21 = icmp ne %struct.file* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %7, align 8
  br label %126

24:                                               ; preds = %6
  %25 = load i32 (i8*, i32*, i32*, i32*, i32*, i32)*, i32 (i8*, i32*, i32*, i32*, i32*, i32)** %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.file*, %struct.file** %17, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 3
  %29 = load %struct.file*, %struct.file** %17, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 2
  %31 = load %struct.file*, %struct.file** %17, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %25(i8* %26, i32* %28, i32* %30, i32* %32, i32* %14, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %24
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = load %struct.file*, %struct.file** %17, align 8
  %42 = call i32 @free_file(%struct.TYPE_7__* %40, %struct.file* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = load i32, i32* @FCIERR_OPEN_SRC, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @set_error(%struct.TYPE_7__* %43, i32 %44, i32 %45)
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %7, align 8
  br label %126

48:                                               ; preds = %24
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @_A_EXEC, align 4
  %53 = load %struct.file*, %struct.file** %17, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %115, %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32 (i32, i64, i64, i32*, i32)*, i32 (i32, i64, i64, i32*, i32)** %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i64, i64* @CAB_BLOCKMAX, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %61(i32 %62, i64 %69, i64 %74, i32* %14, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %58
  br label %116

82:                                               ; preds = %58
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = load i32, i32* @FCIERR_READ_SRC, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @set_error(%struct.TYPE_7__* %86, i32 %87, i32 %88)
  %90 = load i64, i64* @FALSE, align 8
  store i64 %90, i64* %7, align 8
  br label %126

91:                                               ; preds = %82
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.file*, %struct.file** %17, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CAB_BLOCKMAX, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %91
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @add_data_block(%struct.TYPE_7__* %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = load i64, i64* @FALSE, align 8
  store i64 %114, i64* %7, align 8
  br label %126

115:                                              ; preds = %108, %91
  br label %58

116:                                              ; preds = %81
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %119(i32 %120, i32* %14, i32 %123)
  %125 = load i64, i64* @TRUE, align 8
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %116, %113, %85, %39, %22
  %127 = load i64, i64* %7, align 8
  ret i64 %127
}

declare dso_local %struct.file* @add_file(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @free_file(%struct.TYPE_7__*, %struct.file*) #1

declare dso_local i32 @set_error(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @add_data_block(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
