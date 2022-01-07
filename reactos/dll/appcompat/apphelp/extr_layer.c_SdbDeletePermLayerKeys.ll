; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbDeletePermLayerKeys.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbDeletePermLayerKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to delete value from Key \22%wZ\22 Status 0x%lx\0A\00", align 1
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SdbDeletePermLayerKeys(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @SdbpResolvePath(%struct.TYPE_8__* %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %3, align 8
  br label %48

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @KEY_SET_VALUE, align 4
  %18 = call i32 @SdbpOpenKey(%struct.TYPE_7__* %6, i64 %16, i32 %17, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @NT_SUCCESS(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %25 = call i32 @NtDeleteValueKey(i32 %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @NT_SUCCESS(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @SHIM_INFO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %6, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @STATUS_OBJECT_NAME_NOT_FOUND, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %29
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @NtClose(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SdbFree(i32 %42)
  br label %44

44:                                               ; preds = %38, %15
  %45 = call i32 @SdbpFreeTempStr(%struct.TYPE_8__* %7)
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @NT_SUCCESS(i32 %46)
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %44, %13
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i32 @SdbpResolvePath(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SdbpOpenKey(%struct.TYPE_7__*, i64, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtDeleteValueKey(i32, i32*) #1

declare dso_local i32 @SHIM_INFO(i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @NtClose(i32) #1

declare dso_local i32 @SdbFree(i32) #1

declare dso_local i32 @SdbpFreeTempStr(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
