; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_del.c_RemoveFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_del.c_RemoveFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BREAK_INPUT = common dso_local global i32 0, align 4
@DEL_ATTRIBUTES = common dso_local global i32 0, align 4
@DEL_FORCE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@DEL_WIPE = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_WRITE_THROUGH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%I64d%% %s\0D\00", align 1
@szDeleteWipe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"100%% %s\0A\00", align 1
@BufferSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_6__*)* @RemoveFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RemoveFile(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [65536 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %13 = load i32, i32* @BREAK_INPUT, align 4
  %14 = call i64 @CheckCtrlBreak(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %115

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DEL_ATTRIBUTES, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DEL_FORCE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22, %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %37 = call i32 @SetFileAttributes(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DEL_WIPE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %112

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %64, %44
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 65536
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = call i32 (...) @rand()
  %60 = srem i32 %59, 256
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [65536 x i32], [65536 x i32]* %10, i64 0, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @GENERIC_WRITE, align 4
  %70 = load i32, i32* @OPEN_EXISTING, align 4
  %71 = load i32, i32* @FILE_FLAG_WRITE_THROUGH, align 4
  %72 = call i64 @CreateFile(i32 %68, i32 %69, i32 0, i32* null, i32 %70, i32 %71, i32* null)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %95, %76
  %78 = load i32, i32* %11, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 65536
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds [65536 x i32], [65536 x i32]* %10, i64 0, i64 0
  %86 = call i32 @WriteFile(i64 %84, i32* %85, i32 65536, i32* %9, i32* null)
  %87 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 %88, 100
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %89, %91
  %93 = load i32, i32* @szDeleteWipe, align 4
  %94 = call i32 (i32, i32, ...) @ConOutPrintf(i32 %87, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 65536
  store i32 %97, i32* %11, align 4
  br label %77

98:                                               ; preds = %77
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds [65536 x i32], [65536 x i32]* %10, i64 0, i64 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @WriteFile(i64 %99, i32* %100, i32 %104, i32* %9, i32* null)
  %106 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @szDeleteWipe, align 4
  %108 = call i32 (i32, i32, ...) @ConOutPrintf(i32 %106, i32 %107)
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @CloseHandle(i64 %109)
  br label %111

111:                                              ; preds = %98, %67
  br label %112

112:                                              ; preds = %111, %39
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @DeleteFile(i32 %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %112, %16
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @CheckCtrlBreak(i32) #1

declare dso_local i32 @SetFileAttributes(i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @WriteFile(i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ConOutPrintf(i32, i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @DeleteFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
