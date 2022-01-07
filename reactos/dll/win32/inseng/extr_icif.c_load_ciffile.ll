; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_load_ciffile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_load_ciffile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.inf_file = type { i32 }
%struct.ciffile = type { i32, %struct.TYPE_4__, i32, i32 }

@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@ciffileVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__**)* @load_ciffile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_ciffile(i8* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca %struct.inf_file*, align 8
  %7 = alloca %struct.ciffile*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  store %struct.inf_file* null, %struct.inf_file** %6, align 8
  %9 = load i32, i32* @E_FAIL, align 4
  store i32 %9, i32* %8, align 4
  %10 = call %struct.ciffile* @heap_alloc_zero(i32 24)
  store %struct.ciffile* %10, %struct.ciffile** %7, align 8
  %11 = load %struct.ciffile*, %struct.ciffile** %7, align 8
  %12 = icmp ne %struct.ciffile* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.ciffile*, %struct.ciffile** %7, align 8
  %17 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* @ciffileVtbl, i32** %18, align 8
  %19 = load %struct.ciffile*, %struct.ciffile** %7, align 8
  %20 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.ciffile*, %struct.ciffile** %7, align 8
  %22 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %21, i32 0, i32 3
  %23 = call i32 @list_init(i32* %22)
  %24 = load %struct.ciffile*, %struct.ciffile** %7, align 8
  %25 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %24, i32 0, i32 2
  %26 = call i32 @list_init(i32* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @inf_load(i8* %27, %struct.inf_file** %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %46

33:                                               ; preds = %15
  %34 = load %struct.ciffile*, %struct.ciffile** %7, align 8
  %35 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %36 = call i32 @process_inf(%struct.ciffile* %34, %struct.inf_file* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %46

41:                                               ; preds = %33
  %42 = load %struct.ciffile*, %struct.ciffile** %7, align 8
  %43 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %44, align 8
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %40, %32
  %47 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %48 = icmp ne %struct.inf_file* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %51 = call i32 @inf_free(%struct.inf_file* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.ciffile*, %struct.ciffile** %7, align 8
  %54 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %53, i32 0, i32 1
  %55 = call i32 @ICifFile_Release(%struct.TYPE_4__* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %41, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.ciffile* @heap_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @inf_load(i8*, %struct.inf_file**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @process_inf(%struct.ciffile*, %struct.inf_file*) #1

declare dso_local i32 @inf_free(%struct.inf_file*) #1

declare dso_local i32 @ICifFile_Release(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
