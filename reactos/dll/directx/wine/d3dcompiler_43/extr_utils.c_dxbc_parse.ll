; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_dxbc_parse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_dxbc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dxbc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"No data supplied.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tag: %s.\0A\00", align 1
@TAG_DXBC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Wrong tag.\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"total size: %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Wrong size supplied.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"chunk count: %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to init dxbc\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"chunk %u at offset %#x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to add section to dxbc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dxbc_parse(i8* %0, i64 %1, %struct.dxbc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dxbc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dxbc* %2, %struct.dxbc** %7, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @E_FAIL, align 4
  store i32 %23, i32* %4, align 4
  br label %95

24:                                               ; preds = %3
  %25 = call i32 @read_dword(i8** %8, i64* %11)
  %26 = bitcast i64* %11 to i8*
  %27 = call i32 @debugstr_an(i8* %26, i32 4)
  %28 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @TAG_DXBC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call i32 @WARN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @E_FAIL, align 4
  store i32 %34, i32* %4, align 4
  br label %95

35:                                               ; preds = %24
  %36 = call i32 @skip_dword_unknown(i8** %8, i32 4)
  %37 = call i32 @skip_dword_unknown(i8** %8, i32 1)
  %38 = call i32 @read_dword(i8** %8, i64* %12)
  %39 = load i64, i64* %12, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %47, i32* %4, align 4
  br label %95

48:                                               ; preds = %35
  %49 = call i32 @read_dword(i8** %8, i64* %13)
  %50 = load i64, i64* %13, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.dxbc*, %struct.dxbc** %7, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @dxbc_init(%struct.dxbc* %53, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %95

62:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %90, %62
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %13, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = call i32 @read_dword(i8** %8, i64* %17)
  %70 = load i32, i32* %10, align 4
  %71 = load i64, i64* %17, align 8
  %72 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %70, i64 %71)
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %17, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %16, align 8
  %76 = call i32 @read_dword(i8** %16, i64* %14)
  %77 = call i32 @read_dword(i8** %16, i64* %15)
  %78 = load %struct.dxbc*, %struct.dxbc** %7, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @dxbc_add_section(%struct.dxbc* %78, i64 %79, i8* %80, i64 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @FAILED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %68
  %87 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %95

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %63

93:                                               ; preds = %63
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %86, %59, %45, %32, %21
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @read_dword(i8**, i64*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

declare dso_local i32 @skip_dword_unknown(i8**, i32) #1

declare dso_local i32 @dxbc_init(%struct.dxbc*, i64) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @dxbc_add_section(%struct.dxbc*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
