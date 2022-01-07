; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_kernel.c_kuhl_m_kernel_processProtect.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_kernel.c_kuhl_m_kernel_processProtect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@MIMIKATZ_NT_BUILD_NUMBER = common dso_local global i64 0, align 8
@KULL_M_WIN_MIN_BUILD_VISTA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i32] [i32 114, i32 101, i32 109, i32 111, i32 118, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [14 x i32] [i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [35 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 95, i32 103, i32 101, i32 116, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 73, i32 100, i32 70, i32 111, i32 114, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i32] [i32 112, i32 105, i32 100, i32 0], align 4
@.str.5 = private unnamed_addr constant [56 x i32] [i32 65, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 47, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 58, i32 112, i32 114, i32 111, i32 103, i32 114, i32 97, i32 109, i32 46, i32 101, i32 120, i32 101, i32 32, i32 111, i32 114, i32 32, i32 47, i32 112, i32 105, i32 100, i32 58, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 105, i32 100, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 10, i32 0], align 4
@KULL_M_WIN_MIN_BUILD_8 = common dso_local global i64 0, align 8
@KULL_M_WIN_MIN_BUILD_BLUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i32] [i32 80, i32 73, i32 68, i32 32, i32 37, i32 117, i32 32, i32 45, i32 62, i32 32, i32 37, i32 48, i32 50, i32 120, i32 47, i32 37, i32 48, i32 50, i32 120, i32 32, i32 91, i32 37, i32 49, i32 120, i32 45, i32 37, i32 49, i32 120, i32 45, i32 37, i32 49, i32 120, i32 93, i32 10, i32 0], align 4
@IOCTL_MIMIDRV_PROCESS_PROTECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i32] [i32 78, i32 111, i32 32, i32 80, i32 73, i32 68, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [54 x i32] [i32 80, i32 114, i32 111, i32 116, i32 101, i32 99, i32 116, i32 101, i32 100, i32 32, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 97, i32 118, i32 97, i32 105, i32 108, i32 97, i32 98, i32 108, i32 101, i32 32, i32 98, i32 101, i32 102, i32 111, i32 114, i32 101, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 86, i32 105, i32 115, i32 116, i32 97, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_kernel_processProtect(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %9 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 56, i1 false)
  %10 = load i64, i64* @MIMIKATZ_NT_BUILD_NUMBER, align 8
  %11 = load i64, i64* @KULL_M_WIN_MIN_BUILD_VISTA, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %110

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32**, i32*** %4, align 8
  %16 = call i64 @kull_m_string_args_byName(i32 %14, i32** %15, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32* null)
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32**, i32*** %4, align 8
  %19 = call i64 @kull_m_string_args_byName(i32 %17, i32** %18, i8* bitcast ([8 x i32]* @.str.1 to i8*), i32* %6, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.2 to i8*), i64 %23)
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %27 = call i32 @kull_m_process_getProcessIdForName(i32 %25, i64* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([35 x i32]* @.str.3 to i8*))
  br label %31

31:                                               ; preds = %29, %21
  br label %44

32:                                               ; preds = %13
  %33 = load i32, i32* %3, align 4
  %34 = load i32**, i32*** %4, align 8
  %35 = call i64 @kull_m_string_args_byName(i32 %33, i32** %34, i8* bitcast ([4 x i32]* @.str.4 to i8*), i32* %7, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @wcstoul(i32 %38, i32* null, i32 0)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  br label %43

41:                                               ; preds = %32
  %42 = call i32 @PRINT_ERROR(i8* bitcast ([56 x i32]* @.str.5 to i8*))
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %107

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* @MIMIKATZ_NT_BUILD_NUMBER, align 8
  %53 = load i64, i64* @KULL_M_WIN_MIN_BUILD_8, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %82

58:                                               ; preds = %51
  %59 = load i64, i64* @MIMIKATZ_NT_BUILD_NUMBER, align 8
  %60 = load i64, i64* @KULL_M_WIN_MIN_BUILD_BLUE, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 15, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 15, i32* %66, align 4
  br label %81

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 63, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 63, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 2, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 6, i32* %80, align 4
  br label %81

81:                                               ; preds = %67, %62
  br label %82

82:                                               ; preds = %81, %55
  br label %83

83:                                               ; preds = %82, %48
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([35 x i32]* @.str.6 to i8*), i64 %85, i32 %88, i32 %91, i32 %95, i64 %99, i32 %103)
  %105 = load i32, i32* @IOCTL_MIMIDRV_PROCESS_PROTECT, align 4
  %106 = call i32 @kull_m_kernel_mimidrv_simple_output(i32 %105, %struct.TYPE_11__* %5, i32 56)
  br label %109

107:                                              ; preds = %44
  %108 = call i32 @PRINT_ERROR(i8* bitcast ([8 x i32]* @.str.7 to i8*))
  br label %109

109:                                              ; preds = %107, %83
  br label %112

110:                                              ; preds = %2
  %111 = call i32 @PRINT_ERROR(i8* bitcast ([54 x i32]* @.str.8 to i8*))
  br label %112

112:                                              ; preds = %110, %109
  %113 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #2

declare dso_local i32 @kprintf(i8*, i64, ...) #2

declare dso_local i32 @kull_m_process_getProcessIdForName(i32, i64*) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i64 @wcstoul(i32, i32*, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

declare dso_local i32 @kull_m_kernel_mimidrv_simple_output(i32, %struct.TYPE_11__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
