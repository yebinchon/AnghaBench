; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_format_msg.c_load_message.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_format_msg.c_load_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"module = %p, id = %08x\0A\00", align 1
@RT_MESSAGETABLE = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@MESSAGE_RESOURCE_UNICODE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i32, i32)* @load_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_message(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i64 @GetModuleHandleW(i32* null)
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @RT_MESSAGETABLE, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @RtlFindMessage(i64 %22, i64 %23, i32 %24, i32 %25, %struct.TYPE_3__** %8)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @STATUS_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @RtlNtStatusToDosError(i32 %30)
  %32 = call i32 @SetLastError(i32 %31)
  store i32* null, i32** %4, align 8
  br label %91

33:                                               ; preds = %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MESSAGE_RESOURCE_UNICODE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @strlenW(i32* %44)
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i32, i32* %11, align 4
  %52 = call i32* @HeapAlloc(i32 %50, i32 0, i32 %51)
  store i32* %52, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  store i32* null, i32** %4, align 8
  br label %91

55:                                               ; preds = %40
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @memcpy(i32* %56, i64 %59, i32 %60)
  br label %86

62:                                               ; preds = %33
  %63 = load i32, i32* @CP_ACP, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @MultiByteToWideChar(i32 %63, i32 0, i8* %67, i32 -1, i32* null, i32 0)
  store i32 %68, i32* %12, align 4
  %69 = call i32 (...) @GetProcessHeap()
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32* @HeapAlloc(i32 %69, i32 0, i32 %73)
  store i32* %74, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %62
  store i32* null, i32** %4, align 8
  br label %91

77:                                               ; preds = %62
  %78 = load i32, i32* @CP_ACP, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @MultiByteToWideChar(i32 %78, i32 0, i8* %82, i32 -1, i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %55
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @wine_dbgstr_w(i32* %87)
  %89 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %9, align 8
  store i32* %90, i32** %4, align 8
  br label %91

91:                                               ; preds = %86, %76, %54, %29
  %92 = load i32*, i32** %4, align 8
  ret i32* %92
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i64 @GetModuleHandleW(i32*) #1

declare dso_local i32 @RtlFindMessage(i64, i64, i32, i32, %struct.TYPE_3__**) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @RtlNtStatusToDosError(i32) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
