; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_load_typelib.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_load_typelib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@load_typelib.wscript_exeW = internal constant [12 x i8] c"wscript.exe\00", align 1
@FALSE = common dso_local global i64 0, align 8
@IID_IHost = common dso_local global i32 0, align 4
@host_ti = common dso_local global i32 0, align 4
@IID_IArguments2 = common dso_local global i32 0, align 4
@arguments_ti = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @load_typelib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_typelib() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @LoadTypeLib(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @load_typelib.wscript_exeW, i64 0, i64 0), i32** %2)
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @FAILED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %1, align 8
  br label %24

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32* %11, i32* @IID_IHost, i32* @host_ti)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @SUCCEEDED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32* %17, i32* @IID_IArguments2, i32* @arguments_ti)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @ITypeLib_Release(i32* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @SUCCEEDED(i32 %22)
  store i64 %23, i64* %1, align 8
  br label %24

24:                                               ; preds = %19, %8
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

declare dso_local i32 @LoadTypeLib(i8*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
