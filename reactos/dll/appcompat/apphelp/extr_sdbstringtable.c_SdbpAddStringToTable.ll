; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_sdbstringtable.c_SdbpAddStringToTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_sdbstringtable.c_SdbpAddStringToTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SdbStringHashTable = type { i32 }
%struct.SdbHashEntry = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Error creating hash table\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SdbpAddStringToTable(%struct.SdbStringHashTable** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SdbStringHashTable**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.SdbHashEntry**, align 8
  store %struct.SdbStringHashTable** %0, %struct.SdbStringHashTable*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.SdbStringHashTable**, %struct.SdbStringHashTable*** %5, align 8
  %10 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %9, align 8
  %11 = icmp ne %struct.SdbStringHashTable* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = call %struct.SdbStringHashTable* (...) @HashCreate()
  %14 = load %struct.SdbStringHashTable**, %struct.SdbStringHashTable*** %5, align 8
  store %struct.SdbStringHashTable* %13, %struct.SdbStringHashTable** %14, align 8
  %15 = load %struct.SdbStringHashTable**, %struct.SdbStringHashTable*** %5, align 8
  %16 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %15, align 8
  %17 = icmp ne %struct.SdbStringHashTable* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = call i32 @SHIM_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %3
  %23 = load %struct.SdbStringHashTable**, %struct.SdbStringHashTable*** %5, align 8
  %24 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.SdbHashEntry** @TableFindPtr(%struct.SdbStringHashTable* %24, i32* %25)
  store %struct.SdbHashEntry** %26, %struct.SdbHashEntry*** %8, align 8
  %27 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %8, align 8
  %28 = load %struct.SdbHashEntry*, %struct.SdbHashEntry** %27, align 8
  %29 = icmp ne %struct.SdbHashEntry* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %8, align 8
  %32 = load %struct.SdbHashEntry*, %struct.SdbHashEntry** %31, align 8
  %33 = getelementptr inbounds %struct.SdbHashEntry, %struct.SdbHashEntry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %4, align 4
  br label %45

37:                                               ; preds = %22
  %38 = load %struct.SdbStringHashTable**, %struct.SdbStringHashTable*** %5, align 8
  %39 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %38, align 8
  %40 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %8, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @HashAddString(%struct.SdbStringHashTable* %39, %struct.SdbHashEntry** %40, i32* %41, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %30, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.SdbStringHashTable* @HashCreate(...) #1

declare dso_local i32 @SHIM_ERR(i8*) #1

declare dso_local %struct.SdbHashEntry** @TableFindPtr(%struct.SdbStringHashTable*, i32*) #1

declare dso_local i32 @HashAddString(%struct.SdbStringHashTable*, %struct.SdbHashEntry**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
