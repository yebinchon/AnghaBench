; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyDict_FromComposite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyDict_FromComposite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @PLyDict_FromComposite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLyDict_FromComposite(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @DatumGetHeapTupleHeader(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @HeapTupleHeaderGetTypeId(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @HeapTupleHeaderGetTypMod(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @lookup_rowtype_tupdesc(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.TYPE_5__* (...) @PLy_current_execution_context()
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PLy_input_setup_tuple(i32* %20, i32 %21, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @HeapTupleHeaderGetDatumLength(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32* @PLyDict_FromTuple(i32* %31, %struct.TYPE_4__* %10, i32 %32, i32 1)
  store i32* %33, i32** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ReleaseTupleDesc(i32 %34)
  %36 = load i32*, i32** %5, align 8
  ret i32* %36
}

declare dso_local i32 @DatumGetHeapTupleHeader(i32) #1

declare dso_local i32 @HeapTupleHeaderGetTypeId(i32) #1

declare dso_local i32 @HeapTupleHeaderGetTypMod(i32) #1

declare dso_local i32 @lookup_rowtype_tupdesc(i32, i32) #1

declare dso_local i32 @PLy_input_setup_tuple(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @PLy_current_execution_context(...) #1

declare dso_local i32 @HeapTupleHeaderGetDatumLength(i32) #1

declare dso_local i32* @PLyDict_FromTuple(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ReleaseTupleDesc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
