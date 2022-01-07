; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_SetSecurityDirOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_SetSecurityDirOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@HDR_NT32 = common dso_local global i32 0, align 4
@IMAGE_FILE_SECURITY_DIRECTORY = common dso_local global i64 0, align 8
@HDR_NT64 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"size = %x addr = %x\0A\00", align 1
@FILE_BEGIN = common dso_local global i32 0, align 4
@INVALID_SET_FILE_POINTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @IMAGEHLP_SetSecurityDirOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IMAGEHLP_SetSecurityDirOffset(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @IMAGEHLP_GetNTHeaders(i32 %17, i32* %13, %struct.TYPE_11__* %8, %struct.TYPE_10__* %9)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @HDR_NT32, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load i64, i64* @IMAGE_FILE_SECURITY_DIRECTORY, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i64 %26
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %10, align 8
  %28 = bitcast %struct.TYPE_11__* %8 to i8*
  store i8* %28, i8** %14, align 8
  store i32 8, i32* %12, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @HDR_NT64, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = load i64, i64* @IMAGE_FILE_SECURITY_DIRECTORY, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 %37
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %10, align 8
  %39 = bitcast %struct.TYPE_10__* %9 to i8*
  store i8* %39, i8** %14, align 8
  store i32 8, i32* %12, align 4
  br label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %83

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @FILE_BEGIN, align 4
  %60 = call i32 @SetFilePointer(i32 %57, i32 %58, i32* null, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @INVALID_SET_FILE_POINTER, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %4, align 4
  br label %83

66:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @WriteFile(i32 %67, i8* %68, i32 %69, i32* %15, i32* null)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %4, align 4
  br label %83

75:                                               ; preds = %66
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %79, %73, %64, %40
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @IMAGEHLP_GetNTHeaders(i32, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i32 @WriteFile(i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
