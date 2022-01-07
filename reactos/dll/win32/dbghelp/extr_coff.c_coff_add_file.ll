; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_coff.c_coff_add_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_coff.c_coff_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CoffFileSet = type { i32, i32, %struct.CoffFile* }
%struct.CoffFile = type { i32, i32, i64, i64, i32*, i64, i32, i64 }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CoffFileSet*, %struct.module*, i8*)* @coff_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_add_file(%struct.CoffFileSet* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca %struct.CoffFileSet*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.CoffFile*, align 8
  store %struct.CoffFileSet* %0, %struct.CoffFileSet** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %9 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %13 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %3
  %17 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %18 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %17, i32 0, i32 2
  %19 = load %struct.CoffFile*, %struct.CoffFile** %18, align 8
  %20 = icmp ne %struct.CoffFile* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %23 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %23, align 4
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %28 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %27, i32 0, i32 2
  %29 = load %struct.CoffFile*, %struct.CoffFile** %28, align 8
  %30 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %31 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 56
  %35 = trunc i64 %34 to i32
  %36 = call %struct.CoffFile* @HeapReAlloc(i32 %26, i32 0, %struct.CoffFile* %29, i32 %35)
  %37 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %38 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %37, i32 0, i32 2
  store %struct.CoffFile* %36, %struct.CoffFile** %38, align 8
  br label %52

39:                                               ; preds = %16
  %40 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %41 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %40, i32 0, i32 1
  store i32 16, i32* %41, align 4
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %44 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 56
  %48 = trunc i64 %47 to i32
  %49 = call %struct.CoffFile* @HeapAlloc(i32 %42, i32 0, i32 %48)
  %50 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %51 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %50, i32 0, i32 2
  store %struct.CoffFile* %49, %struct.CoffFile** %51, align 8
  br label %52

52:                                               ; preds = %39, %21
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %55 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %54, i32 0, i32 2
  %56 = load %struct.CoffFile*, %struct.CoffFile** %55, align 8
  %57 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %58 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %56, i64 %60
  store %struct.CoffFile* %61, %struct.CoffFile** %7, align 8
  %62 = load %struct.CoffFile*, %struct.CoffFile** %7, align 8
  %63 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.CoffFile*, %struct.CoffFile** %7, align 8
  %65 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %64, i32 0, i32 7
  store i64 0, i64* %65, align 8
  %66 = load %struct.module*, %struct.module** %5, align 8
  %67 = load %struct.module*, %struct.module** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @source_new(%struct.module* %67, i32* null, i8* %68)
  %70 = call i32 @symt_new_compiland(%struct.module* %66, i32 0, i32 %69)
  %71 = load %struct.CoffFile*, %struct.CoffFile** %7, align 8
  %72 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.CoffFile*, %struct.CoffFile** %7, align 8
  %74 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %73, i32 0, i32 1
  store i32 -1, i32* %74, align 4
  %75 = load %struct.CoffFile*, %struct.CoffFile** %7, align 8
  %76 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.CoffFile*, %struct.CoffFile** %7, align 8
  %78 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %77, i32 0, i32 4
  store i32* null, i32** %78, align 8
  %79 = load %struct.CoffFile*, %struct.CoffFile** %7, align 8
  %80 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.CoffFile*, %struct.CoffFile** %7, align 8
  %82 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.CoffFileSet*, %struct.CoffFileSet** %4, align 8
  %84 = getelementptr inbounds %struct.CoffFileSet, %struct.CoffFileSet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  ret i32 %85
}

declare dso_local %struct.CoffFile* @HeapReAlloc(i32, i32, %struct.CoffFile*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.CoffFile* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @symt_new_compiland(%struct.module*, i32, i32) #1

declare dso_local i32 @source_new(%struct.module*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
