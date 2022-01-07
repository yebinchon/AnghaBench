; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_r_debug_lstThreadAdd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_r_debug_lstThreadAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i32, i8*, i8* }

@lstThread = common dso_local global i64 0, align 8
@PTHREAD_MAX = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@lstThreadPtr = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"r_debug_lstThreadAdd: Cannot find slot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i8*, i32)* @r_debug_lstThreadAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_debug_lstThreadAdd(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load i64, i64* @lstThread, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %6
  %18 = load i32, i32* @PTHREAD_MAX, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @MEM_COMMIT, align 4
  %23 = load i32, i32* @PAGE_READWRITE, align 4
  %24 = call i64 @VirtualAlloc(i32 0, i32 %21, i32 %22, i32 %23)
  store i64 %24, i64* @lstThread, align 8
  br label %25

25:                                               ; preds = %17, %6
  %26 = load i64, i64* @lstThread, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** @lstThreadPtr, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %67, %25
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @PTHREAD_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @w32_NtQueryInformationThread(i32 %56, i32 9, i32* %14, i32 4, i32* null)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %37
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %37
  br label %72

64:                                               ; preds = %32
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstThreadPtr, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 1
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** @lstThreadPtr, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %28

70:                                               ; preds = %28
  %71 = call i32 @eprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %63
  ret void
}

declare dso_local i64 @VirtualAlloc(i32, i32, i32, i32) #1

declare dso_local i64 @w32_NtQueryInformationThread(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
