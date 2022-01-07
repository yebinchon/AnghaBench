; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/njs/extr_njs_process_script_fuzzer.c_njs_ext_console_time_end.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/njs/extr_njs_process_script_fuzzer.c_njs_ext_console_time_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"labels not implemented\00", align 1
@NJS_ERROR = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"default: %uL.%06uLms\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Timer \22default\22 doesn\E2\80\99t exist.\0A\00", align 1
@njs_value_undefined = common dso_local global i32 0, align 4
@NJS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32)* @njs_ext_console_time_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @njs_ext_console_time_end(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i32 (...) @njs_time()
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @njs_arg(i32* %14, i32 %15, i32 1)
  %17 = call i32 @njs_value_is_undefined(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = call i32 @njs_vm_error(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @NJS_ERROR, align 4
  store i32 %22, i32* %5, align 4
  br label %70

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @njs_arg(i32* %25, i32 %26, i32 0)
  %28 = call %struct.TYPE_8__* @njs_vm_external(%struct.TYPE_7__* %24, i32 %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %12, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = icmp eq %struct.TYPE_8__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @njs_slow_path(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @NJS_ERROR, align 4
  store i32 %35, i32* %5, align 4
  br label %70

36:                                               ; preds = %23
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UINT64_MAX, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @njs_fast_path(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %53, 1000000
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = srem i32 %55, 1000000
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i8*, ...) @njs_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i64, i64* @UINT64_MAX, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %65

63:                                               ; preds = %36
  %64 = call i32 (i8*, ...) @njs_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %45
  %66 = load i32, i32* @njs_value_undefined, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @NJS_OK, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %34, %19
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @njs_time(...) #1

declare dso_local i32 @njs_value_is_undefined(i32) #1

declare dso_local i32 @njs_arg(i32*, i32, i32) #1

declare dso_local i32 @njs_vm_error(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.TYPE_8__* @njs_vm_external(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @njs_slow_path(i32) #1

declare dso_local i64 @njs_fast_path(i32) #1

declare dso_local i32 @njs_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
