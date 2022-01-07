; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_dxbc_add_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_dxbc_add_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dxbc = type { i64, i64, %struct.dxbc_section* }
%struct.dxbc_section = type { i32, i32, i8* }

@.str = private unnamed_addr constant [28 x i8] c"dxbc %p, tag %s, size %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate dxbc section memory\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dxbc_add_section(%struct.dxbc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dxbc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dxbc_section*, align 8
  %11 = alloca i32, align 4
  store %struct.dxbc* %0, %struct.dxbc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %13 = bitcast i32* %7 to i8*
  %14 = call i32 @debugstr_an(i8* %13, i32 4)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.dxbc* %12, i32 %14, i32 %15)
  %17 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %18 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %21 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %4
  %25 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %26 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = shl i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %32 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %31, i32 0, i32 2
  %33 = load %struct.dxbc_section*, %struct.dxbc_section** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 16
  %37 = trunc i64 %36 to i32
  %38 = call %struct.dxbc_section* @HeapReAlloc(i32 %30, i32 0, %struct.dxbc_section* %33, i32 %37)
  store %struct.dxbc_section* %38, %struct.dxbc_section** %10, align 8
  %39 = load %struct.dxbc_section*, %struct.dxbc_section** %10, align 8
  %40 = icmp ne %struct.dxbc_section* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %24
  %42 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %43, i32* %5, align 4
  br label %85

44:                                               ; preds = %24
  %45 = load %struct.dxbc_section*, %struct.dxbc_section** %10, align 8
  %46 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %47 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %46, i32 0, i32 2
  store %struct.dxbc_section* %45, %struct.dxbc_section** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %51 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %44, %4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %55 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %54, i32 0, i32 2
  %56 = load %struct.dxbc_section*, %struct.dxbc_section** %55, align 8
  %57 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %58 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %56, i64 %59
  %61 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %60, i32 0, i32 0
  store i32 %53, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %64 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %63, i32 0, i32 2
  %65 = load %struct.dxbc_section*, %struct.dxbc_section** %64, align 8
  %66 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %67 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %65, i64 %68
  %70 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %69, i32 0, i32 1
  store i32 %62, i32* %70, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %73 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %72, i32 0, i32 2
  %74 = load %struct.dxbc_section*, %struct.dxbc_section** %73, align 8
  %75 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %76 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %74, i64 %77
  %79 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %78, i32 0, i32 2
  store i8* %71, i8** %79, align 8
  %80 = load %struct.dxbc*, %struct.dxbc** %6, align 8
  %81 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load i32, i32* @S_OK, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %52, %41
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @TRACE(i8*, %struct.dxbc*, i32, i32) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

declare dso_local %struct.dxbc_section* @HeapReAlloc(i32, i32, %struct.dxbc_section*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
