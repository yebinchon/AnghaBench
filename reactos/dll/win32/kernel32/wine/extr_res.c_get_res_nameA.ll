; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_get_res_nameA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_get_res_nameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_6__*)* @get_res_nameA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_res_nameA(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @IS_INTRESOURCE(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @LOWORD(i8* %11)
  %13 = call i8* @ULongToPtr(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %16, i64* %3, align 8
  br label %50

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 35
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i64 @RtlCharToInteger(i8* %25, i32 10, i32* %6)
  %27 = load i64, i64* @STATUS_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @HIWORD(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %23
  %34 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %34, i64* %3, align 8
  br label %50

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @ULongToPtr(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %40, i64* %3, align 8
  br label %50

41:                                               ; preds = %17
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @RtlCreateUnicodeStringFromAsciiz(%struct.TYPE_6__* %42, i8* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @RtlUpcaseUnicodeString(%struct.TYPE_6__* %45, %struct.TYPE_6__* %46, i32 %47)
  %49 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %41, %35, %33, %10
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i64 @IS_INTRESOURCE(i8*) #1

declare dso_local i8* @ULongToPtr(i32) #1

declare dso_local i32 @LOWORD(i8*) #1

declare dso_local i64 @RtlCharToInteger(i8*, i32, i32*) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @RtlCreateUnicodeStringFromAsciiz(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @RtlUpcaseUnicodeString(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
