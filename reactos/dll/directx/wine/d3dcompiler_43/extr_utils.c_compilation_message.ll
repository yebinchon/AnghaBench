; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_compilation_message.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_compilation_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compilation_messages = type { i32, i8*, i32 }

@MESSAGEBUFFER_INITIAL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error allocating memory for parser messages\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Error reallocating memory for parser messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compilation_message(%struct.compilation_messages* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.compilation_messages*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.compilation_messages* %0, %struct.compilation_messages** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %11 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i32, i32* @MESSAGEBUFFER_INITIAL_SIZE, align 4
  %16 = call i8* @d3dcompiler_alloc(i32 %15)
  %17 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %18 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %20 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %98

25:                                               ; preds = %14
  %26 = load i32, i32* @MESSAGEBUFFER_INITIAL_SIZE, align 4
  %27 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %28 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %3
  br label %30

30:                                               ; preds = %29, %97
  %31 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %32 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %35 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %40 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %43 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @vsnprintf(i8* %38, i32 %45, i8* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %30
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %54 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %57 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = icmp sge i32 %52, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %51, %30
  %62 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %63 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %9, align 4
  %66 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %67 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @d3dcompiler_realloc(i8* %68, i32 %69)
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = call i32 @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %98

75:                                               ; preds = %61
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %78 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %81 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %97

82:                                               ; preds = %51
  %83 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %84 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %87 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.compilation_messages*, %struct.compilation_messages** %4, align 8
  %94 = getelementptr inbounds %struct.compilation_messages, %struct.compilation_messages* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %98

97:                                               ; preds = %75
  br label %30

98:                                               ; preds = %82, %73, %23
  ret void
}

declare dso_local i8* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @d3dcompiler_realloc(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
