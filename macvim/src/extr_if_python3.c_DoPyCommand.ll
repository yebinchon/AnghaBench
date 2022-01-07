; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_python3.c_DoPyCommand.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_python3.c_DoPyCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENC_OPT = common dso_local global i64 0, align 8
@CODEC_ERROR_HANDLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@LC_NUMERIC = common dso_local global i32 0, align 4
@PyMac_Initialize = common dso_local global i64 0, align 8
@kUnresolvedCFragSymbolAddress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i8*)*, i32 (i32, i8*, i32*)*, i8*)* @DoPyCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoPyCommand(i8* %0, i32 (i8*)* %1, i32 (i32, i8*, i32*)* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i32 (i32, i8*, i32*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 (i8*)* %1, i32 (i8*)** %6, align 8
  store i32 (i32, i8*, i32*)* %2, i32 (i32, i8*, i32*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = call i64 (...) @Python3_Init()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %44

15:                                               ; preds = %4
  %16 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 %16(i8* %17)
  %19 = call i32 (...) @Python_Release_Vim()
  %20 = call i32 (...) @PyGILState_Ensure()
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = load i64, i64* @ENC_OPT, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* @CODEC_ERROR_HANDLER, align 4
  %27 = call i32* @PyUnicode_Decode(i8* %21, i32 %23, i8* %25, i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @CODEC_ERROR_HANDLER, align 4
  %30 = call i32* @PyUnicode_AsEncodedString(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @Py_XDECREF(i32* %31)
  %33 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %7, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @PyBytes_AsString(i32* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 %33(i32 %35, i8* %36, i32* %11)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @Py_XDECREF(i32* %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @PyGILState_Release(i32 %40)
  %42 = call i32 (...) @Python_Lock_Vim()
  %43 = call i32 (...) @PythonIO_Flush()
  br label %44

44:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @Python3_Init(...) #1

declare dso_local i32 @Python_Release_Vim(...) #1

declare dso_local i32 @PyGILState_Ensure(...) #1

declare dso_local i32* @PyUnicode_Decode(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @PyUnicode_AsEncodedString(i32*, i8*, i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @PyBytes_AsString(i32*) #1

declare dso_local i32 @PyGILState_Release(i32) #1

declare dso_local i32 @Python_Lock_Vim(...) #1

declare dso_local i32 @PythonIO_Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
