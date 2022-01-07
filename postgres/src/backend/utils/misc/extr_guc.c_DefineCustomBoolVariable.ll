; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_DefineCustomBoolVariable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_DefineCustomBoolVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_bool = type { i32*, i32, i32, i32, i32, i32, i32 }

@PGC_BOOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DefineCustomBoolVariable(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.config_bool*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @PGC_BOOL, align 4
  %28 = call i64 @init_custom_variable(i8* %22, i8* %23, i8* %24, i32 %25, i32 %26, i32 %27, i32 32)
  %29 = inttoptr i64 %28 to %struct.config_bool*
  store %struct.config_bool* %29, %struct.config_bool** %21, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load %struct.config_bool*, %struct.config_bool** %21, align 8
  %32 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.config_bool*, %struct.config_bool** %21, align 8
  %35 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.config_bool*, %struct.config_bool** %21, align 8
  %38 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load %struct.config_bool*, %struct.config_bool** %21, align 8
  %41 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load %struct.config_bool*, %struct.config_bool** %21, align 8
  %44 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %20, align 4
  %46 = load %struct.config_bool*, %struct.config_bool** %21, align 8
  %47 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.config_bool*, %struct.config_bool** %21, align 8
  %49 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %48, i32 0, i32 3
  %50 = call i32 @define_custom_variable(i32* %49)
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
