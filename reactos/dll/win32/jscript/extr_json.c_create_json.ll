; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_create_json.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_create_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@JSON_info = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_json(%struct.TYPE_4__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = call i32* @heap_alloc_zero(i32 4)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @init_dispex_from_constr(i32* %14, %struct.TYPE_4__* %15, i32* @JSON_info, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @heap_free(i32* %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load i32*, i32** %6, align 8
  %29 = load i32**, i32*** %5, align 8
  store i32* %28, i32** %29, align 8
  %30 = load i32, i32* @S_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %23, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_dispex_from_constr(i32*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
