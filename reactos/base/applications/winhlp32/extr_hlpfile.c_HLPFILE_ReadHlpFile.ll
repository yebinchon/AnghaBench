; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_ReadHlpFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_ReadHlpFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@first_hlpfile = common dso_local global %struct.TYPE_7__* null, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @HLPFILE_ReadHlpFile(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @first_hlpfile, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i32 %10, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %2, align 8
  br label %77

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %4, align 8
  br label %6

27:                                               ; preds = %6
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @strlen(i32 %30)
  %32 = add i64 32, %31
  %33 = add i64 %32, 1
  %34 = call %struct.TYPE_7__* @HeapAlloc(i32 %28, i32 %29, i64 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %4, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %77

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = bitcast %struct.TYPE_7__* %39 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i32 -1, i32* %45, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @first_hlpfile, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @strcpy(i8* %53, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** @first_hlpfile, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %38
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %66, align 8
  br label %67

67:                                               ; preds = %61, %38
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @HLPFILE_DoReadHlpFile(%struct.TYPE_7__* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = call i32 @HLPFILE_FreeHlpFile(%struct.TYPE_7__* %73)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %2, align 8
  br label %77

77:                                               ; preds = %75, %37, %16
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %78
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @HLPFILE_DoReadHlpFile(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @HLPFILE_FreeHlpFile(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
