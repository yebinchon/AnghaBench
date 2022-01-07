; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_MakeSpnWithGUID.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_MakeSpnWithGUID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_S_OK = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i32] [i32 85, i32 117, i32 105, i32 100, i32 84, i32 111, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 40, i32 105, i32 41, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 85, i32 117, i32 105, i32 100, i32 84, i32 111, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 40, i32 115, i32 41, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kull_m_rpc_drsr_MakeSpnWithGUID(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @UuidToString(i32 %14, i32** %9)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @RPC_S_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %100

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @UuidToString(i32 %20, i32** %10)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @RPC_S_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %95

25:                                               ; preds = %19
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @lstrlen(i32* %26)
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @lstrlen(i32* %31)
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @lstrlen(i32* %36)
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @LPTR, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 4
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = add i64 %47, 4
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = trunc i64 %51 to i32
  %53 = call i64 @LocalAlloc(i32 %41, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %7, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %93

56:                                               ; preds = %25
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @RtlCopyMemory(i32* %57, i32* %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @RtlCopyMemory(i32* %65, i32* %66, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 47, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @RtlCopyMemory(i32* %81, i32* %82, i32 %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 4
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %88, %90
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  store i32 47, i32* %92, align 4
  br label %93

93:                                               ; preds = %56, %25
  %94 = call i32 @RpcStringFree(i32** %10)
  br label %98

95:                                               ; preds = %19
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @PRINT_ERROR(i8* bitcast ([23 x i32]* @.str to i8*), i64 %96)
  br label %98

98:                                               ; preds = %95, %93
  %99 = call i32 @RpcStringFree(i32** %9)
  br label %103

100:                                              ; preds = %3
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @PRINT_ERROR(i8* bitcast ([23 x i32]* @.str.1 to i8*), i64 %101)
  br label %103

103:                                              ; preds = %100, %98
  %104 = load i32*, i32** %7, align 8
  ret i32* %104
}

declare dso_local i64 @UuidToString(i32, i32**) #1

declare dso_local i32 @lstrlen(i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @RpcStringFree(i32**) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
