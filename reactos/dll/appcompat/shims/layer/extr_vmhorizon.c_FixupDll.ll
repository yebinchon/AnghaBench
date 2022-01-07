; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/shims/layer/extr_vmhorizon.c_FixupDll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/shims/layer/extr_vmhorizon.c_FixupDll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@FixupDll.Match1 = internal constant [5 x i32] [i32 12, i32 139, i32 252, i32 243, i32 165], align 16
@FixupDll.Match2 = internal constant [5 x i32] [i32 12, i32 139, i32 252, i32 243, i32 165], align 16
@FixupDll.Match3 = internal constant [5 x i32] [i32 176, i32 139, i32 252, i32 243, i32 165], align 16
@__const.FixupDll.Replacement1 = private unnamed_addr constant [5 x i32] [i32 16, i32 137, i32 52, i32 36, i32 144], align 16
@__const.FixupDll.Replacement2 = private unnamed_addr constant [5 x i32] [i32 16, i32 137, i32 52, i32 36, i32 144], align 16
@__const.FixupDll.Replacement3 = private unnamed_addr constant [5 x i32] [i32 180, i32 137, i32 52, i32 36, i32 144], align 16
@.str = private unnamed_addr constant [45 x i8] c"Module %wZ Loaded at 0x%p, we should patch!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Module %wZ Loaded at 0x%p, OK to patch!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Module %wZ Loaded at 0x%p, patched!\0A\00", align 1
@OFFSET_1 = common dso_local global i64 0, align 8
@OFFSET_2 = common dso_local global i64 0, align 8
@OFFSET_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @FixupDll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FixupDll(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca [5 x i32], align 16
  %5 = alloca [5 x i32], align 16
  %6 = alloca [5 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = bitcast [5 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([5 x i32]* @__const.FixupDll.Replacement1 to i8*), i64 20, i1 false)
  %10 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x i32]* @__const.FixupDll.Replacement2 to i8*), i64 20, i1 false)
  %11 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([5 x i32]* @__const.FixupDll.Replacement3 to i8*), i64 20, i1 false)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @DbgPrint(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %17, i64 %20)
  %22 = call i32 (...) @NtCurrentProcess()
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 137838
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %26 = call i32 @NtReadVirtualMemory(i32 %22, i64 %24, i32* %25, i32 5, i32* %8)
  %27 = call i32 @NT_SUCCESS(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %15
  br label %109

33:                                               ; preds = %29
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %35 = call i64 @memcmp(i32* %34, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @FixupDll.Match1, i64 0, i64 0), i32 20)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %109

38:                                               ; preds = %33
  %39 = call i32 (...) @NtCurrentProcess()
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 137988
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %43 = call i32 @NtReadVirtualMemory(i32 %39, i64 %41, i32* %42, i32 5, i32* %8)
  %44 = call i32 @NT_SUCCESS(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 5
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %38
  br label %109

50:                                               ; preds = %46
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %52 = call i64 @memcmp(i32* %51, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @FixupDll.Match2, i64 0, i64 0), i32 20)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %109

55:                                               ; preds = %50
  %56 = call i32 (...) @NtCurrentProcess()
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, 138300
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %60 = call i32 @NtReadVirtualMemory(i32 %56, i64 %58, i32* %59, i32 5, i32* %8)
  %61 = call i32 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 5
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %55
  br label %109

67:                                               ; preds = %63
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %69 = call i64 @memcmp(i32* %68, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @FixupDll.Match3, i64 0, i64 0), i32 20)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %109

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @DbgPrint(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %74, i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %79, 137838
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %82 = call i32 @Write(i64 %80, i32* %81, i32 20)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  br label %109

85:                                               ; preds = %72
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, 137988
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %89 = call i32 @Write(i64 %87, i32* %88, i32 20)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %109

92:                                               ; preds = %85
  %93 = load i64, i64* %7, align 8
  %94 = add nsw i64 %93, 138300
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %96 = call i32 @Write(i64 %94, i32* %95, i32 20)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %109

99:                                               ; preds = %92
  %100 = call i32 (...) @NtCurrentProcess()
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @NtFlushInstructionCache(i32 %100, i64 %101, i32 139264)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @DbgPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %104, i64 %107)
  br label %109

109:                                              ; preds = %99, %98, %91, %84, %71, %66, %54, %49, %37, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DbgPrint(i8*, i32*, i64) #2

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @NtReadVirtualMemory(i32, i64, i32*, i32, i32*) #2

declare dso_local i32 @NtCurrentProcess(...) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @Write(i64, i32*, i32) #2

declare dso_local i32 @NtFlushInstructionCache(i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
