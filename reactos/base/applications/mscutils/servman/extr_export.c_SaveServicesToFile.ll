; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_export.c_SaveServicesToFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_export.c_SaveServicesToFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@__const.SaveServicesToFile.newl = private unnamed_addr constant [2 x i32] [i32 13, i32 10], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @SaveServicesToFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SaveServicesToFile(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [500 x i32], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GENERIC_WRITE, align 4
  %18 = load i32, i32* @CREATE_ALWAYS, align 4
  %19 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %20 = call i64 @CreateFileW(i32 %16, i32 %17, i32 0, i32* null, i32 %18, i32 %19, i32* null)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %2
  %25 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast ([2 x i32]* @__const.SaveServicesToFile.newl to i8*), i64 8, i1 false)
  store i32 9, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ListView_GetItemCount(i32 %28)
  store i64 %29, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %64, %24
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i64, i64* %14, align 8
  %37 = icmp slt i64 %36, 5
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @GetTextFromListView(%struct.TYPE_4__* %39, i32* %40, i64 %41, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @WriteFile(i64 %47, i32* %48, i32 %52, i32* %11, i32* null)
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @WriteFile(i64 %54, i32* %9, i32 4, i32* %11, i32* null)
  br label %56

56:                                               ; preds = %46, %38
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %14, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %14, align 8
  br label %35

60:                                               ; preds = %35
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %63 = call i32 @WriteFile(i64 %61, i32* %62, i32 8, i32* %11, i32* null)
  br label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %30

67:                                               ; preds = %30
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @CloseHandle(i64 %68)
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %2
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ListView_GetItemCount(i32) #1

declare dso_local i32 @GetTextFromListView(%struct.TYPE_4__*, i32*, i64, i64) #1

declare dso_local i32 @WriteFile(i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
