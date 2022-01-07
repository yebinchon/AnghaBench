; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_crl.c_CRLContext_GetProperty.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_crl.c_CRLContext_GetProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %d, %p, %p)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@CALG_SHA1 = common dso_local global i32 0, align 4
@CALG_MD5 = common dso_local global i32 0, align 4
@CRYPT_E_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i8*, i64*)* @CRLContext_GetProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRLContext_GetProperty(%struct.TYPE_11__* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %11, i64 %12, i8* %13, i64* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @ContextPropertyList_FindProperty(i64 %25, i64 %26, %struct.TYPE_12__* %10)
  store i32 %27, i32* %9, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %8, align 8
  store i64 %38, i64* %39, align 8
  br label %64

40:                                               ; preds = %33
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* @ERROR_MORE_DATA, align 4
  %48 = call i32 @SetLastError(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %9, align 4
  br label %63

53:                                               ; preds = %40
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i8* %54, i32 %56, i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %53, %46
  br label %64

64:                                               ; preds = %63, %36
  br label %101

65:                                               ; preds = %30
  %66 = load i64, i64* %6, align 8
  switch i64 %66, label %97 [
    i64 128, label %67
    i64 129, label %82
  ]

67:                                               ; preds = %65
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* @CALG_SHA1, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = call i32 @CRLContext_GetHashProp(%struct.TYPE_11__* %68, i64 %69, i32 %70, i32 %74, i32 %78, i8* %79, i64* %80)
  store i32 %81, i32* %9, align 4
  br label %100

82:                                               ; preds = %65
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i32, i32* @CALG_MD5, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = call i32 @CRLContext_GetHashProp(%struct.TYPE_11__* %83, i64 %84, i32 %85, i32 %89, i32 %93, i8* %94, i64* %95)
  store i32 %96, i32* %9, align 4
  br label %100

97:                                               ; preds = %65
  %98 = load i32, i32* @CRYPT_E_NOT_FOUND, align 4
  %99 = call i32 @SetLastError(i32 %98)
  br label %100

100:                                              ; preds = %97, %82, %67
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to %struct.TYPE_11__*
  %105 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %104)
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i32 @ContextPropertyList_FindProperty(i64, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @CRLContext_GetHashProp(%struct.TYPE_11__*, i64, i32, i32, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
