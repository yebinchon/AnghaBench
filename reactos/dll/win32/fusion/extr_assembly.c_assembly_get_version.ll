; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_assembly_get_version.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_assembly_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, i32 }

@assembly_get_version.format = internal constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@mdtAssembly = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assembly_get_version(%struct.TYPE_9__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32**, i32*** %5, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* @mdtAssembly, align 4
  %13 = call i64 @TableFromToken(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @E_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.TYPE_8__* @assembly_data_offset(%struct.TYPE_9__* %22, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @E_FAIL, align 4
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %21
  %30 = call i32* @heap_alloc(i32 24)
  %31 = load i32**, i32*** %5, align 8
  store i32* %30, i32** %31, align 8
  %32 = icmp ne i32* %30, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %34, i32* %3, align 4
  br label %52

35:                                               ; preds = %29
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @swprintf(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @assembly_get_version.format, i64 0, i64 0), i8* %40, i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* @S_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %35, %33, %27, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @TableFromToken(i32) #1

declare dso_local %struct.TYPE_8__* @assembly_data_offset(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @swprintf(i32*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
