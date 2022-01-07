; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_ReturnError.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_ReturnError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i32] [i32 48, i32 120, i32 102, i32 102, i32 102, i32 102, i32 102, i32 102, i32 102, i32 102, i32 10, i32 70, i32 111, i32 114, i32 109, i32 97, i32 116, i32 77, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 10, i32 67, i32 111, i32 117, i32 108, i32 100, i32 32, i32 110, i32 111, i32 116, i32 32, i32 114, i32 101, i32 116, i32 117, i32 114, i32 110, i32 32, i32 114, i32 101, i32 115, i32 117, i32 108, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR_OPENVPN_STARTUP = common dso_local global i64 0, align 8
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i32] [i32 48, i32 120, i32 37, i32 49, i32 33, i32 48, i32 56, i32 120, i32 33, i32 10, i32 37, i32 50, i32 33, i32 115, i32 33, i32 10, i32 37, i32 51, i32 33, i32 115, i32 33, i32 0], align 4
@MSG_FLAGS_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64, i32)* @ReturnError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReturnError(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [3 x i64], align 16
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* bitcast ([56 x i32]* @.str to i8*), i8** %13, align 8
  %15 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 1
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds i64, i64* %17, i64 1
  store i64 ptrtoint ([1 x i8]* @.str.1 to i64), i64* %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @ERROR_OPENVPN_STARTUP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %26 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %29 = or i32 %27, %28
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %32 = bitcast i64* %31 to i8*
  %33 = call i64 @FormatMessageW(i32 %29, i8* null, i64 %30, i32 0, i8* %32, i32 0, i32* null)
  br label %34

34:                                               ; preds = %24, %5
  %35 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %36 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %39 = or i32 %37, %38
  %40 = bitcast i8** %13 to i8*
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %42 = bitcast i64* %41 to i32*
  %43 = call i64 @FormatMessageW(i32 %39, i8* bitcast ([22 x i32]* @.str.2 to i8*), i64 0, i32 0, i8* %40, i32 0, i32* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @wcslen(i8* %46)
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @WritePipeAsync(i32 %44, i8* %45, i64 %49, i64 %50, i32 %51)
  %53 = load i32, i32* @MSG_FLAGS_ERROR, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 (i32, i8*, ...) @MsgToEventLog(i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @ERROR_OPENVPN_STARTUP, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %34
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %61 = load i64, i64* %60, align 16
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @LocalFree(i8* %62)
  br label %64

64:                                               ; preds = %59, %34
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @LocalFree(i8* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @FormatMessageW(i32, i8*, i64, i32, i8*, i32, i32*) #1

declare dso_local i32 @WritePipeAsync(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @MsgToEventLog(i32, i8*, ...) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
