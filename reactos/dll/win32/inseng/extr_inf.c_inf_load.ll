; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_inf_load.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_inf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i32, i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@E_FAIL = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inf_load(i8* %0, %struct.inf_file** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inf_file**, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.inf_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.inf_file** %1, %struct.inf_file*** %5, align 8
  %11 = load i32, i32* @E_FAIL, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @GENERIC_READ, align 4
  %14 = load i32, i32* @OPEN_EXISTING, align 4
  %15 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %16 = call i64 @CreateFileA(i8* %12, i32 %13, i32 0, i32* null, i32 %14, i32 %15, i32* null)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @E_FAIL, align 4
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %2
  %23 = call i8* @heap_alloc_zero(i32 24)
  %24 = bitcast i8* %23 to %struct.inf_file*
  store %struct.inf_file* %24, %struct.inf_file** %7, align 8
  %25 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %26 = icmp ne %struct.inf_file* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %82

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @GetFileSizeEx(i64 %29, %struct.TYPE_3__* %6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %82

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %37 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %39 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @heap_alloc_zero(i32 %40)
  %42 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %43 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %45 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %33
  br label %82

49:                                               ; preds = %33
  %50 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %51 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %50, i32 0, i32 2
  %52 = call i32 @list_init(i32* %51)
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %55 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %58 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ReadFile(i64 %53, i8* %56, i32 %59, i32* %10, i32* null)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %65 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %49
  br label %82

69:                                               ; preds = %62
  %70 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %71 = call i32 @inf_process_content(%struct.inf_file* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @FAILED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %82

76:                                               ; preds = %69
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @CloseHandle(i64 %77)
  %79 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %80 = load %struct.inf_file**, %struct.inf_file*** %5, align 8
  store %struct.inf_file* %79, %struct.inf_file** %80, align 8
  %81 = load i32, i32* @S_OK, align 4
  store i32 %81, i32* %3, align 4
  br label %92

82:                                               ; preds = %75, %68, %48, %32, %27
  %83 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %84 = icmp ne %struct.inf_file* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.inf_file*, %struct.inf_file** %7, align 8
  %87 = call i32 @inf_free(%struct.inf_file* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @CloseHandle(i64 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %76, %20
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i8* @heap_alloc_zero(i32) #1

declare dso_local i32 @GetFileSizeEx(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @inf_process_content(%struct.inf_file*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @inf_free(%struct.inf_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
