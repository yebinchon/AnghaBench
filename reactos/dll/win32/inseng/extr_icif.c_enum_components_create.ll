; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_enum_components_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_enum_components_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.ciffenum_components = type { i32, i8*, %struct.TYPE_3__, %struct.list*, %struct.list*, i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@enum_componentsVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.list*, i8*, %struct.TYPE_3__**)* @enum_components_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enum_components_create(i32* %0, %struct.list* %1, i8* %2, %struct.TYPE_3__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__**, align 8
  %10 = alloca %struct.ciffenum_components*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.list* %1, %struct.list** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_3__** %3, %struct.TYPE_3__*** %9, align 8
  %11 = call %struct.ciffenum_components* @heap_alloc_zero(i32 48)
  store %struct.ciffenum_components* %11, %struct.ciffenum_components** %10, align 8
  %12 = load %struct.ciffenum_components*, %struct.ciffenum_components** %10, align 8
  %13 = icmp ne %struct.ciffenum_components* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %5, align 4
  br label %40

16:                                               ; preds = %4
  %17 = load %struct.ciffenum_components*, %struct.ciffenum_components** %10, align 8
  %18 = getelementptr inbounds %struct.ciffenum_components, %struct.ciffenum_components* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* @enum_componentsVtbl, i32** %19, align 8
  %20 = load %struct.ciffenum_components*, %struct.ciffenum_components** %10, align 8
  %21 = getelementptr inbounds %struct.ciffenum_components, %struct.ciffenum_components* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.ciffenum_components*, %struct.ciffenum_components** %10, align 8
  %24 = getelementptr inbounds %struct.ciffenum_components, %struct.ciffenum_components* %23, i32 0, i32 5
  store i32* %22, i32** %24, align 8
  %25 = load %struct.list*, %struct.list** %7, align 8
  %26 = load %struct.ciffenum_components*, %struct.ciffenum_components** %10, align 8
  %27 = getelementptr inbounds %struct.ciffenum_components, %struct.ciffenum_components* %26, i32 0, i32 4
  store %struct.list* %25, %struct.list** %27, align 8
  %28 = load %struct.list*, %struct.list** %7, align 8
  %29 = load %struct.ciffenum_components*, %struct.ciffenum_components** %10, align 8
  %30 = getelementptr inbounds %struct.ciffenum_components, %struct.ciffenum_components* %29, i32 0, i32 3
  store %struct.list* %28, %struct.list** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.ciffenum_components*, %struct.ciffenum_components** %10, align 8
  %33 = getelementptr inbounds %struct.ciffenum_components, %struct.ciffenum_components* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @ICifFile_AddRef(i32* %34)
  %36 = load %struct.ciffenum_components*, %struct.ciffenum_components** %10, align 8
  %37 = getelementptr inbounds %struct.ciffenum_components, %struct.ciffenum_components* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %38, align 8
  %39 = load i32, i32* @S_OK, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %16, %14
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.ciffenum_components* @heap_alloc_zero(i32) #1

declare dso_local i32 @ICifFile_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
