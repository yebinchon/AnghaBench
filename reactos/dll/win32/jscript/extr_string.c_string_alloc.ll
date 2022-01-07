; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_string_alloc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_string_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@String_info = common dso_local global i32 0, align 4
@StringInst_info = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*, %struct.TYPE_10__**)* @string_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_alloc(%struct.TYPE_9__* %0, i32* %1, i32* %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  %12 = call %struct.TYPE_10__* @heap_alloc_zero(i32 8)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %10, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %5, align 4
  br label %50

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @init_dispex(i32* %22, %struct.TYPE_9__* %23, i32* @String_info, i32* %24)
  store i32 %25, i32* %11, align 4
  br label %34

26:                                               ; preds = %17
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @init_dispex_from_constr(i32* %28, %struct.TYPE_9__* %29, i32* @StringInst_info, i32 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %26, %20
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = call i32 @heap_free(%struct.TYPE_10__* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %50

42:                                               ; preds = %34
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @jsstr_addref(i32* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %48, align 8
  %49 = load i32, i32* @S_OK, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %38, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_10__* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_dispex(i32*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @init_dispex_from_constr(i32*, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_10__*) #1

declare dso_local i32 @jsstr_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
