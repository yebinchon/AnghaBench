; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_kernel.c_kuhl_m_kernel_sysenv_del.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_kernel.c_kuhl_m_kernel_sysenv_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [22 x i32] [i32 75, i32 101, i32 114, i32 110, i32 101, i32 108, i32 95, i32 76, i32 115, i32 97, i32 95, i32 80, i32 112, i32 108, i32 95, i32 67, i32 111, i32 110, i32 102, i32 105, i32 103, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 103, i32 117, i32 105, i32 100, i32 0], align 4
@.str.3 = private unnamed_addr constant [39 x i32] [i32 123, i32 55, i32 55, i32 102, i32 97, i32 57, i32 97, i32 98, i32 100, i32 45, i32 48, i32 51, i32 53, i32 57, i32 45, i32 52, i32 100, i32 51, i32 50, i32 45, i32 98, i32 100, i32 54, i32 48, i32 45, i32 50, i32 56, i32 102, i32 52, i32 101, i32 55, i32 56, i32 102, i32 55, i32 56, i32 52, i32 98, i32 125, i32 0], align 4
@.str.4 = private unnamed_addr constant [11 x i32] [i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 0], align 4
@.str.5 = private unnamed_addr constant [2 x i32] [i32 49, i32 0], align 4
@.str.6 = private unnamed_addr constant [31 x i32] [i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 119, i32 90, i32 10, i32 86, i32 101, i32 110, i32 100, i32 111, i32 114, i32 32, i32 71, i32 85, i32 73, i32 68, i32 58, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [21 x i32] [i32 10, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 0], align 4
@.str.8 = private unnamed_addr constant [4 x i32] [i32 41, i32 10, i32 10, i32 0], align 4
@MIMIDRV_VARIABLE_NAME_AND_VALUE = common dso_local global i32 0, align 4
@Name = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@IOCTL_MIMIDRV_SYSENVSET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i32] [i32 62, i32 32, i32 79, i32 75, i32 33, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [27 x i32] [i32 82, i32 116, i32 108, i32 71, i32 85, i32 73, i32 68, i32 70, i32 114, i32 111, i32 109, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_kernel_sysenv_del(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32**, i32*** %4, align 8
  %18 = call i32 @kull_m_string_args_byName(i32 %16, i32** %17, i8* bitcast ([5 x i32]* @.str to i8*), i32** %6, i8* bitcast ([22 x i32]* @.str.1 to i8*))
  %19 = load i32, i32* %3, align 4
  %20 = load i32**, i32*** %4, align 8
  %21 = call i32 @kull_m_string_args_byName(i32 %19, i32** %20, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32** %7, i8* bitcast ([39 x i32]* @.str.3 to i8*))
  %22 = load i32, i32* %3, align 4
  %23 = load i32**, i32*** %4, align 8
  %24 = call i32 @kull_m_string_args_byName(i32 %22, i32** %23, i8* bitcast ([11 x i32]* @.str.4 to i8*), i32** %8, i8* bitcast ([2 x i32]* @.str.5 to i8*))
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @RtlInitUnicodeString(i32* %9, i32* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @RtlInitUnicodeString(i32* %10, i32* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @wcstoul(i32* %29, i32* null, i32 0)
  store i32 %30, i32* %12, align 4
  %31 = call i32 @RtlGUIDFromString(i32* %10, i32* %11)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @NT_SUCCESS(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %2
  %36 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.6 to i8*), i32* %9)
  %37 = call i32 @kuhl_m_sysenv_display_vendorGuid(i32* %11)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (i8*, ...) @kprintf(i8* bitcast ([21 x i32]* @.str.7 to i8*), i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @kuhl_m_sysenv_display_attributes(i32 %40)
  %42 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.8 to i8*))
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @wcslen(i32* %43)
  %45 = trunc i64 %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @MIMIDRV_VARIABLE_NAME_AND_VALUE, align 4
  %51 = load i32, i32* @Name, align 4
  %52 = call i32 @FIELD_OFFSET(i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* @LPTR, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @LocalAlloc(i32 %55, i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %15, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %35
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = call i32 @RtlCopyMemory(i32* %65, i32* %11, i32 4)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @RtlCopyMemory(i32* %73, i32* %74, i32 %75)
  %77 = load i32, i32* @IOCTL_MIMIDRV_SYSENVSET, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i64 @kull_m_kernel_mimidrv_simple_output(i32 %77, %struct.TYPE_4__* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %60
  %83 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.9 to i8*))
  br label %84

84:                                               ; preds = %82, %60
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %86 = call i32 @LocalFree(%struct.TYPE_4__* %85)
  br label %87

87:                                               ; preds = %84, %35
  br label %91

88:                                               ; preds = %2
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.10 to i8*), i32 %89)
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %92
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i8*) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32*) #1

declare dso_local i32 @wcstoul(i32*, i32*, i32) #1

declare dso_local i32 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_sysenv_display_vendorGuid(i32*) #1

declare dso_local i32 @kuhl_m_sysenv_display_attributes(i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i64 @kull_m_kernel_mimidrv_simple_output(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_4__*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
