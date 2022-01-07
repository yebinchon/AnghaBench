; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbpOpenKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbpOpenKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i64, i64 }
%struct.TYPE_12__ = type { i64 }

@APPCOMPAT_LAYER_KEY = common dso_local global i32* null, align 8
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@REGISTRY_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to acquire user registry key, Error: 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to open Key  \22%wZ\22 Status 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SdbpOpenKey(%struct.TYPE_13__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** @APPCOMPAT_LAYER_KEY, align 8
  store i32* %14, i32** %11, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %17 = call i32 @RTL_INIT_OBJECT_ATTRIBUTES(%struct.TYPE_13__* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @REGISTRY_MACHINE, align 4
  %28 = call i32 @RtlInitUnicodeString(%struct.TYPE_12__* %10, i32 %27)
  br label %41

29:                                               ; preds = %4
  %30 = call i32 @RtlFormatCurrentUserKeyPath(%struct.TYPE_12__* %10)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @NT_SUCCESS(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_13__*
  %38 = call i32 (i8*, %struct.TYPE_13__*, ...) @SHIM_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %37)
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  br label %87

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %26
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @SdbpStrsize(i32* %44)
  %46 = add nsw i64 %43, %45
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32* @SdbAlloc(i64 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = call i32 @RtlAppendUnicodeStringToString(%struct.TYPE_13__* %57, %struct.TYPE_12__* %10)
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %41
  %62 = call i32 @RtlFreeUnicodeString(%struct.TYPE_12__* %10)
  br label %63

63:                                               ; preds = %61, %41
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @RtlAppendUnicodeToString(%struct.TYPE_13__* %64, i32* %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (...) @Wow64QueryFlag()
  %70 = or i32 %68, %69
  %71 = call i32 @NtOpenKey(i32 %67, i32 %70, i32* %12)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @NT_SUCCESS(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %63
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 (i8*, %struct.TYPE_13__*, ...) @SHIM_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %76, i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @SdbFree(i32* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %75, %63
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %34
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @RTL_INIT_OBJECT_ATTRIBUTES(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @RtlFormatCurrentUserKeyPath(%struct.TYPE_12__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @SHIM_ERR(i8*, %struct.TYPE_13__*, ...) #1

declare dso_local i64 @SdbpStrsize(i32*) #1

declare dso_local i32* @SdbAlloc(i64) #1

declare dso_local i32 @RtlAppendUnicodeStringToString(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_12__*) #1

declare dso_local i32 @RtlAppendUnicodeToString(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @NtOpenKey(i32, i32, i32*) #1

declare dso_local i32 @Wow64QueryFlag(...) #1

declare dso_local i32 @SdbFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
