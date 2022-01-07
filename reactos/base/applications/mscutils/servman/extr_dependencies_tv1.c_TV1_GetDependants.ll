; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_dependencies_tv1.c_TV1_GetDependants.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_dependencies_tv1.c_TV1_GetDependants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@ProcessHeap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @TV1_GetDependants(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @QueryServiceConfigW(i32 %7, %struct.TYPE_4__* null, i32 0, i32* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %1
  %11 = call i64 (...) @GetLastError()
  %12 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %84

14:                                               ; preds = %10
  %15 = load i32, i32* @ProcessHeap, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @HeapAlloc(i32 %15, i32 0, i32 %16)
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %83

21:                                               ; preds = %14
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @QueryServiceConfigW(i32 %22, %struct.TYPE_4__* %23, i32 %24, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %79

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %78

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %57, %39
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %60

57:                                               ; preds = %49, %43
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %4, align 8
  br label %43

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @ProcessHeap, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i8* @HeapAlloc(i32 %65, i32 0, i32 %66)
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @CopyMemory(i8* %71, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %60
  br label %78

78:                                               ; preds = %77, %32, %27
  br label %79

79:                                               ; preds = %78, %21
  %80 = call i32 (...) @GetProcessHeap()
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = call i32 @HeapFree(i32 %80, i32 0, %struct.TYPE_4__* %81)
  br label %83

83:                                               ; preds = %79, %14
  br label %84

84:                                               ; preds = %83, %10, %1
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

declare dso_local i64 @QueryServiceConfigW(i32, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @CopyMemory(i8*, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
