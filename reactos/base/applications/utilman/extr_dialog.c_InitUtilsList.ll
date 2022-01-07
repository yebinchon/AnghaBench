; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/utilman/extr_dialog.c_InitUtilsList.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/utilman/extr_dialog.c_InitUtilsList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@EntriesList = common dso_local global %struct.TYPE_8__* null, align 8
@Globals = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@FALSE = common dso_local global i64 0, align 8
@MAX_BUFFER = common dso_local global i32 0, align 4
@LB_RESETCONTENT = common dso_local global i32 0, align 4
@LB_ADDSTRING = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_SETITEMDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitUtilsList(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %41, %11
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %15 = call i64 @_countof(%struct.TYPE_8__* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Globals, i32 0, i32 3), align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i64 @_countof(%struct.TYPE_8__* %33)
  %35 = call i32 @LoadStringW(i32 %18, i32 %23, %struct.TYPE_8__* %28, i64 %34)
  %36 = load i64, i64* @FALSE, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %17
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %12

44:                                               ; preds = %12
  br label %107

45:                                               ; preds = %1
  %46 = load i32, i32* @MAX_BUFFER, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %7, align 8
  %49 = alloca %struct.TYPE_8__, i64 %47, align 16
  store i64 %47, i64* %8, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Globals, i32 0, i32 0), align 4
  %51 = load i32, i32* @LB_RESETCONTENT, align 4
  %52 = call i64 @SendMessageW(i32 %50, i32 %51, i64 0, i32 0)
  store i64 0, i64* %4, align 8
  br label %53

53:                                               ; preds = %102, %45
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %56 = call i64 @_countof(%struct.TYPE_8__* %55)
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IsProcessRunning(i32 %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i64 %65, i64* %69, align 8
  %70 = call i64 @_countof(%struct.TYPE_8__* %49)
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Globals, i32 0, i32 2), align 4
  br label %77

75:                                               ; preds = %58
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Globals, i32 0, i32 1), align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = call i32 @StringCchPrintfW(%struct.TYPE_8__* %49, i64 %70, i32 %78, %struct.TYPE_8__* %83)
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Globals, i32 0, i32 0), align 4
  %86 = load i32, i32* @LB_ADDSTRING, align 4
  %87 = ptrtoint %struct.TYPE_8__* %49 to i32
  %88 = call i64 @SendMessageW(i32 %85, i32 %86, i64 0, i32 %87)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @LB_ERR, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %77
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Globals, i32 0, i32 0), align 4
  %94 = load i32, i32* @LB_SETITEMDATA, align 4
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @EntriesList, align 8
  %97 = load i64, i64* %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %97
  %99 = ptrtoint %struct.TYPE_8__* %98 to i32
  %100 = call i64 @SendMessageW(i32 %93, i32 %94, i64 %95, i32 %99)
  br label %101

101:                                              ; preds = %92, %77
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %4, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %4, align 8
  br label %53

105:                                              ; preds = %53
  %106 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %107

107:                                              ; preds = %105, %44
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @_countof(%struct.TYPE_8__*) #1

declare dso_local i32 @LoadStringW(i32, i32, %struct.TYPE_8__*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @SendMessageW(i32, i32, i64, i32) #1

declare dso_local i64 @IsProcessRunning(i32) #1

declare dso_local i32 @StringCchPrintfW(%struct.TYPE_8__*, i64, i32, %struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
