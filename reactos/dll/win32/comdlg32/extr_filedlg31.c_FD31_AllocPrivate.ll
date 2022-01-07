; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_AllocPrivate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_AllocPrivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i8*, %struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i64 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"alloc private buf %p\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@OPEN_DIALOG = common dso_local global i64 0, align 8
@OFN_ENABLEHOOK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@LBSELCHSTRINGA = common dso_local global i32 0, align 4
@FILEOKSTRINGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i64, i64, i64)* @FD31_AllocPrivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @FD31_AllocPrivate(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i8* @heap_alloc_zero(i32 56)
  %10 = bitcast i8* %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %8, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %130

16:                                               ; preds = %3
  %17 = load i8*, i8** @FALSE, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 6
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @OPEN_DIALOG, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %16
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_12__*
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OFN_ENABLEHOOK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %31
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i8*, i8** @TRUE, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %53, %46
  br label %58

58:                                               ; preds = %57, %31
  br label %113

59:                                               ; preds = %16
  %60 = load i64, i64* %5, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_13__*
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @OFN_ENABLEHOOK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %59
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %72
  br label %84

84:                                               ; preds = %83, %59
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @heap_alloc_zero(i32 %89)
  %91 = bitcast i8* %90 to %struct.TYPE_12__*
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @FD31_MapOfnStructA(%struct.TYPE_13__* %105, %struct.TYPE_12__* %108, i32 %111)
  br label %113

113:                                              ; preds = %84, %58
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = call i32 @FD31_GetTemplate(%struct.TYPE_11__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = call i32 @FD31_DestroyPrivate(%struct.TYPE_11__* %118)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %130

120:                                              ; preds = %113
  %121 = load i32, i32* @LBSELCHSTRINGA, align 4
  %122 = call i8* @RegisterWindowMessageA(i32 %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @FILEOKSTRINGA, align 4
  %126 = call i8* @RegisterWindowMessageA(i32 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %4, align 8
  br label %130

130:                                              ; preds = %120, %117, %15
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %131
}

declare dso_local i8* @heap_alloc_zero(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @FD31_MapOfnStructA(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @FD31_GetTemplate(%struct.TYPE_11__*) #1

declare dso_local i32 @FD31_DestroyPrivate(%struct.TYPE_11__*) #1

declare dso_local i8* @RegisterWindowMessageA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
