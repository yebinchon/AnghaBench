; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbpGetPermLayersInternal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbpGetPermLayersInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@MAX_LAYER_LENGTH = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@KeyValuePartialInformation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to read value info from Key \22%wZ\22 Status 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SdbpGetPermLayersInternal(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i32, i32* @MAX_LAYER_LENGTH, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %18, 4
  %20 = add i64 %19, 4
  %21 = sub i64 %20, 1
  %22 = udiv i64 %21, 4
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %13, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %28 = call i32 @SdbpOpenKey(%struct.TYPE_7__* %9, i64 %26, i32 %27, i32* %14)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i64 @NT_SUCCESS(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @KeyValuePartialInformation, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = mul nuw i64 4, %22
  %38 = trunc i64 %37 to i32
  %39 = call i32 @NtQueryValueKey(i32 %33, i32 %34, i32 %35, %struct.TYPE_8__* %36, i32 %38, i32* %13)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @NT_SUCCESS(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @StringCbCopyNW(i32 %44, i32 %46, i32 %50, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %62

59:                                               ; preds = %32
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @SHIM_INFO(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %9, i32 %60)
  br label %62

62:                                               ; preds = %59, %43
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @NtClose(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SdbFree(i32 %66)
  br label %68

68:                                               ; preds = %62, %4
  %69 = load i32, i32* %15, align 4
  %70 = call i64 @NT_SUCCESS(i32 %69)
  %71 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i64 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SdbpOpenKey(%struct.TYPE_7__*, i64, i32, i32*) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @NtQueryValueKey(i32, i32, i32, %struct.TYPE_8__*, i32, i32*) #2

declare dso_local i32 @StringCbCopyNW(i32, i32, i32, i32) #2

declare dso_local i32 @SHIM_INFO(i8*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @NtClose(i32) #2

declare dso_local i32 @SdbFree(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
