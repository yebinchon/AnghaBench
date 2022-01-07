; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_alloc_instr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_alloc_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instruction = type { i32, i8* }

@.str = private unnamed_addr constant [56 x i8] c"Failed to allocate memory for an instruction structure\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to allocate memory for instruction registers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.instruction* @alloc_instr(i32 %0) #0 {
  %2 = alloca %struct.instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.instruction*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i8* @d3dcompiler_alloc(i32 16)
  %6 = bitcast i8* %5 to %struct.instruction*
  store %struct.instruction* %6, %struct.instruction** %4, align 8
  %7 = load %struct.instruction*, %struct.instruction** %4, align 8
  %8 = icmp ne %struct.instruction* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store %struct.instruction* null, %struct.instruction** %2, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = call i8* @d3dcompiler_alloc(i32 %18)
  %20 = load %struct.instruction*, %struct.instruction** %4, align 8
  %21 = getelementptr inbounds %struct.instruction, %struct.instruction* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.instruction*, %struct.instruction** %4, align 8
  %23 = getelementptr inbounds %struct.instruction, %struct.instruction* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %14
  %27 = call i32 @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.instruction*, %struct.instruction** %4, align 8
  %29 = call i32 @d3dcompiler_free(%struct.instruction* %28)
  store %struct.instruction* null, %struct.instruction** %2, align 8
  br label %36

30:                                               ; preds = %14
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.instruction*, %struct.instruction** %4, align 8
  %33 = getelementptr inbounds %struct.instruction, %struct.instruction* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %11
  %35 = load %struct.instruction*, %struct.instruction** %4, align 8
  store %struct.instruction* %35, %struct.instruction** %2, align 8
  br label %36

36:                                               ; preds = %34, %26, %9
  %37 = load %struct.instruction*, %struct.instruction** %2, align 8
  ret %struct.instruction* %37
}

declare dso_local i8* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @d3dcompiler_free(%struct.instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
