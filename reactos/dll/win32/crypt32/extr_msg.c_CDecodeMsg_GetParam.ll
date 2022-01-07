; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_GetParam.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_GetParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@CRYPT_E_INVALID_MSG_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i8*, i32*)* @CDecodeMsg_GetParam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CDecodeMsg_GetParam(%struct.TYPE_9__* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %11, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %40 [
    i32 130, label %19
    i32 131, label %26
    i32 129, label %33
  ]

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @CDecodeHashMsg_GetParam(%struct.TYPE_9__* %20, i32 %21, i32 %22, i8* %23, i32* %24)
  store i32 %25, i32* %12, align 4
  br label %69

26:                                               ; preds = %5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @CDecodeEnvelopedMsg_GetParam(%struct.TYPE_9__* %27, i32 %28, i32 %29, i8* %30, i32* %31)
  store i32 %32, i32* %12, align 4
  br label %69

33:                                               ; preds = %5
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @CDecodeSignedMsg_GetParam(%struct.TYPE_9__* %34, i32 %35, i32 %36, i8* %37, i32* %38)
  store i32 %39, i32* %12, align 4
  br label %69

40:                                               ; preds = %5
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %48 [
    i32 128, label %42
  ]

42:                                               ; preds = %40
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @CRYPT_CopyParam(i8* %43, i32* %44, i32* %46, i32 4)
  store i32 %47, i32* %12, align 4
  br label %68

48:                                               ; preds = %40
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ContextPropertyList_FindProperty(i32 %51, i32 %52, %struct.TYPE_10__* %13)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i8*, i8** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @CRYPT_CopyParam(i8* %57, i32* %58, i32* %60, i32 %62)
  store i32 %63, i32* %12, align 4
  br label %67

64:                                               ; preds = %48
  %65 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %66 = call i32 @SetLastError(i32 %65)
  br label %67

67:                                               ; preds = %64, %56
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68, %33, %26, %19
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local i32 @CDecodeHashMsg_GetParam(%struct.TYPE_9__*, i32, i32, i8*, i32*) #1

declare dso_local i32 @CDecodeEnvelopedMsg_GetParam(%struct.TYPE_9__*, i32, i32, i8*, i32*) #1

declare dso_local i32 @CDecodeSignedMsg_GetParam(%struct.TYPE_9__*, i32, i32, i8*, i32*) #1

declare dso_local i32 @CRYPT_CopyParam(i8*, i32*, i32*, i32) #1

declare dso_local i32 @ContextPropertyList_FindProperty(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
