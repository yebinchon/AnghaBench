; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/njs/extr_njs_process_script_fuzzer.c_njs_ext_console_time.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/njs/extr_njs_process_script_fuzzer.c_njs_ext_console_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"labels not implemented\00", align 1
@NJS_ERROR = common dso_local global i32 0, align 4
@njs_value_undefined = common dso_local global i32 0, align 4
@NJS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32)* @njs_ext_console_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @njs_ext_console_time(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @njs_arg(i32* %11, i32 %12, i32 1)
  %14 = call i32 @njs_value_is_undefined(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = call i32 @njs_vm_error(%struct.TYPE_7__* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @NJS_ERROR, align 4
  store i32 %19, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @njs_arg(i32* %22, i32 %23, i32 0)
  %25 = call %struct.TYPE_8__* @njs_vm_external(%struct.TYPE_7__* %21, i32 %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %10, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @njs_slow_path(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @NJS_ERROR, align 4
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %20
  %34 = call i32 (...) @njs_time()
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @njs_value_undefined, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @NJS_OK, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %33, %31, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @njs_value_is_undefined(i32) #1

declare dso_local i32 @njs_arg(i32*, i32, i32) #1

declare dso_local i32 @njs_vm_error(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.TYPE_8__* @njs_vm_external(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @njs_slow_path(i32) #1

declare dso_local i32 @njs_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
