; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c___r_debug_lstLibAdd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c___r_debug_lstLibAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@lstLib = common dso_local global i64 0, align 8
@PLIB_MAX = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@lstLibPtr = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to allocate memory\00", align 1
@MAX_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"__r_debug_lstLibAdd: Cannot find slot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i8*)* @__r_debug_lstLibAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__r_debug_lstLibAdd(i32 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i64, i64* @lstLib, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load i32, i32* @PLIB_MAX, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @MEM_COMMIT, align 4
  %20 = load i32, i32* @PAGE_READWRITE, align 4
  %21 = call i64 @VirtualAlloc(i32 0, i32 %18, i32 %19, i32 %20)
  store i64 %21, i64* @lstLib, align 8
  br label %22

22:                                               ; preds = %14, %4
  %23 = load i64, i64* @lstLib, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** @lstLibPtr, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @R_LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %105

29:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %100, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PLIB_MAX, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %103

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %105

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %97, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* @MAX_PATH, align 8
  %61 = sub i64 %60, 1
  %62 = call i32 @strncpy(i32 %58, i8* %59, i64 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %79, %46
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 92
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = icmp sge i32 %75, 0
  br label %77

77:                                               ; preds = %74, %66
  %78 = phi i1 [ false, %66 ], [ %76, %74 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %10, align 4
  br label %66

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %92, %94
  %96 = call i32 @strncpy(i32 %85, i8* %90, i64 %95)
  br label %105

97:                                               ; preds = %41
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 1
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** @lstLibPtr, align 8
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %30

103:                                              ; preds = %30
  %104 = call i32 @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %82, %40, %27
  ret void
}

declare dso_local i64 @VirtualAlloc(i32, i32, i32, i32) #1

declare dso_local i32 @R_LOG_ERROR(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
