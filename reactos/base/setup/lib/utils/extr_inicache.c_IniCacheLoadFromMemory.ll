; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheLoadFromMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheLoadFromMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ProcessHeap = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RtlAllocateHeap() failed\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"[%.*s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"IniCacheAddSection() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"'%.*s' = '%.*s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IniCacheAddKey() failed\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IniCacheLoadFromMemory(i32** %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @ProcessHeap, align 4
  %20 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %21 = call i64 @RtlAllocateHeap(i32 %19, i32 %20, i32 4)
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32**, i32*** %6, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %29, i32* %5, align 4
  br label %104

30:                                               ; preds = %4
  store i32* null, i32** %11, align 8
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %101, %76, %68, %47, %30
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %102

42:                                               ; preds = %40
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @IniCacheSkipWhitespace(i8* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %32

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 91
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  store i32* null, i32** %11, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i8* @IniCacheGetSectionName(i8* %56, i8** %13, i32* %14)
  store i8* %57, i8** %10, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %59)
  %61 = load i32**, i32*** %6, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32* @IniCacheAddSection(i32* %62, i8* %63, i32 %64)
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i8*, i8** %10, align 8
  %71 = call i8* @IniCacheSkipToNextSection(i8* %70)
  store i8* %71, i8** %10, align 8
  br label %32

72:                                               ; preds = %53
  br label %101

73:                                               ; preds = %48
  %74 = load i32*, i32** %11, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i8*, i8** %10, align 8
  %78 = call i8* @IniCacheSkipToNextSection(i8* %77)
  store i8* %78, i8** %10, align 8
  br label %32

79:                                               ; preds = %73
  %80 = load i8*, i8** %10, align 8
  %81 = call i8* @IniCacheGetKeyName(i8* %80, i8** %15, i32* %16)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i8* @IniCacheGetKeyValue(i8* %82, i8** %17, i32* %18, i32 %83)
  store i8* %84, i8** %10, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load i8*, i8** %15, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i8*, i8** %17, align 8
  %89 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %85, i8* %86, i32 %87, i8* %88)
  %90 = load i32*, i32** %11, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load i8*, i8** %17, align 8
  %94 = load i32, i32* %18, align 4
  %95 = call i32* @IniCacheAddKey(i32* %90, i8* %91, i32 %92, i8* %93, i32 %94)
  store i32* %95, i32** %12, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %79
  %99 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %79
  br label %101

101:                                              ; preds = %100, %72
  br label %32

102:                                              ; preds = %40
  %103 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %27
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i64 @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i8* @IniCacheSkipWhitespace(i8*) #1

declare dso_local i8* @IniCacheGetSectionName(i8*, i8**, i32*) #1

declare dso_local i32* @IniCacheAddSection(i32*, i8*, i32) #1

declare dso_local i8* @IniCacheSkipToNextSection(i8*) #1

declare dso_local i8* @IniCacheGetKeyName(i8*, i8**, i32*) #1

declare dso_local i8* @IniCacheGetKeyValue(i8*, i8**, i32*, i32) #1

declare dso_local i32* @IniCacheAddKey(i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
