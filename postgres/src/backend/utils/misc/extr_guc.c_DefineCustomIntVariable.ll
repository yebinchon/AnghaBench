; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_DefineCustomIntVariable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_DefineCustomIntVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_int = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@PGC_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DefineCustomIntVariable(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.config_int*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* @PGC_INT, align 4
  %32 = call i64 @init_custom_variable(i8* %26, i8* %27, i8* %28, i32 %29, i32 %30, i32 %31, i32 40)
  %33 = inttoptr i64 %32 to %struct.config_int*
  store %struct.config_int* %33, %struct.config_int** %25, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = load %struct.config_int*, %struct.config_int** %25, align 8
  %36 = getelementptr inbounds %struct.config_int, %struct.config_int* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load %struct.config_int*, %struct.config_int** %25, align 8
  %39 = getelementptr inbounds %struct.config_int, %struct.config_int* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %17, align 4
  %41 = load %struct.config_int*, %struct.config_int** %25, align 8
  %42 = getelementptr inbounds %struct.config_int, %struct.config_int* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load %struct.config_int*, %struct.config_int** %25, align 8
  %45 = getelementptr inbounds %struct.config_int, %struct.config_int* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %19, align 4
  %47 = load %struct.config_int*, %struct.config_int** %25, align 8
  %48 = getelementptr inbounds %struct.config_int, %struct.config_int* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %22, align 4
  %50 = load %struct.config_int*, %struct.config_int** %25, align 8
  %51 = getelementptr inbounds %struct.config_int, %struct.config_int* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %23, align 4
  %53 = load %struct.config_int*, %struct.config_int** %25, align 8
  %54 = getelementptr inbounds %struct.config_int, %struct.config_int* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %24, align 4
  %56 = load %struct.config_int*, %struct.config_int** %25, align 8
  %57 = getelementptr inbounds %struct.config_int, %struct.config_int* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.config_int*, %struct.config_int** %25, align 8
  %59 = getelementptr inbounds %struct.config_int, %struct.config_int* %58, i32 0, i32 5
  %60 = call i32 @define_custom_variable(i32* %59)
  ret void
}

declare dso_local i64 @init_custom_variable(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @define_custom_variable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
