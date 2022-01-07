; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_get_res_nameW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_get_res_nameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_8__*)* @get_res_nameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_res_nameW(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @IS_INTRESOURCE(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @LOWORD(i8* %11)
  %13 = call i8* @ULongToPtr(i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %16, i64* %3, align 8
  br label %53

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 35
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %24, i8* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = call i64 @RtlUnicodeStringToInteger(%struct.TYPE_8__* %28, i32 10, i32* %6)
  %30 = load i64, i64* @STATUS_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @HIWORD(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %23
  %37 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %37, i64* %3, align 8
  br label %53

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @ULongToPtr(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %43, i64* %3, align 8
  br label %53

44:                                               ; preds = %17
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @RtlCreateUnicodeString(%struct.TYPE_8__* %45, i8* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @RtlUpcaseUnicodeString(%struct.TYPE_8__* %48, %struct.TYPE_8__* %49, i32 %50)
  %52 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %44, %38, %36, %10
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i64 @IS_INTRESOURCE(i8*) #1

declare dso_local i8* @ULongToPtr(i32) #1

declare dso_local i32 @LOWORD(i8*) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @RtlUnicodeStringToInteger(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @RtlCreateUnicodeString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @RtlUpcaseUnicodeString(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
