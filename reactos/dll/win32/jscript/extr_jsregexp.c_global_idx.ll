; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_global_idx.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_global_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32*)* @global_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_idx(%struct.TYPE_5__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @jsstr_substr(i32 %11, i32 %18, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %3
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @jsval_string(i32* %32)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @S_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32* @jsstr_substr(i32, i32, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
