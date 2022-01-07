; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/atl/extr_registrar.c_string_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/atl/extr_registrar.c_string_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p %s %x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"preprocessing failed!\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @string_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_register(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @debugstr_w(i32 %11)
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %10, i32 %12, i64 %13)
  %15 = call i32 @strbuf_init(%struct.TYPE_4__* %8)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @do_preprocess(i32* %16, i32 %17, %struct.TYPE_4__* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @GetProcessHeap()
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @HeapFree(i32 %24, i32 0, i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @do_process_root_key(i32 %31, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @FALSE, align 8
  %44 = call i32 @do_process_root_key(i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %37, %29
  %46 = call i32 (...) @GetProcessHeap()
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @HeapFree(i32 %46, i32 0, i32 %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %22
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @strbuf_init(%struct.TYPE_4__*) #1

declare dso_local i32 @do_preprocess(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @do_process_root_key(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
