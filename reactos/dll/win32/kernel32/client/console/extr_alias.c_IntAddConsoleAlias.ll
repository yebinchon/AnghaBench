; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/console/extr_alias.c_IntAddConsoleAlias.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/console/extr_alias.c_IntAddConsoleAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CsrAllocateCaptureBuffer failed!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@CONSRV_SERVERDLL_INDEX = common dso_local global i32 0, align 4
@ConsolepAddAlias = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*, i64)* @IntAddConsoleAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IntAddConsoleAlias(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %15, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %6
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @wcslen(i32* %27)
  br label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @strlen(i32* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %28, %26 ], [ %31, %29 ]
  br label %35

34:                                               ; preds = %6
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %18, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %18, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39, %35
  %43 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %44 = call i32 @SetLastError(i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %7, align 4
  br label %159

46:                                               ; preds = %39
  %47 = call %struct.TYPE_10__* (...) @NtCurrentPeb()
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i64 4, i64 4
  %63 = mul i64 %58, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 7
  store i64 %67, i64* %71, align 8
  store i32 2, i32* %17, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %46
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %83

80:                                               ; preds = %46
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  %96 = call i32* @CsrAllocateCaptureBuffer(i32 %84, i32 %95)
  store i32* %96, i32** %16, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %83
  %100 = call i32 @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %102 = call i32 @SetLastError(i32 %101)
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %7, align 4
  br label %159

104:                                              ; preds = %83
  %105 = load i32*, i32** %16, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = ptrtoint i32* %106 to i32
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 5
  %113 = call i32 @CsrCaptureMessageBuffer(i32* %105, i32 %107, i32 %110, i32* %112)
  %114 = load i32*, i32** %16, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = ptrtoint i32* %115 to i32
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = call i32 @CsrCaptureMessageBuffer(i32* %114, i32 %116, i32 %119, i32* %121)
  %123 = load i32*, i32** %10, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %104
  %126 = load i32*, i32** %16, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = ptrtoint i32* %127 to i32
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = bitcast i32** %133 to i32*
  %135 = call i32 @CsrCaptureMessageBuffer(i32* %126, i32 %128, i32 %131, i32* %134)
  br label %139

136:                                              ; preds = %104
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %136, %125
  %140 = ptrtoint %struct.TYPE_9__* %14 to i32
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* @CONSRV_SERVERDLL_INDEX, align 4
  %143 = load i32, i32* @ConsolepAddAlias, align 4
  %144 = call i32 @CSR_CREATE_API_NUMBER(i32 %142, i32 %143)
  %145 = call i32 @CsrClientCallServer(i32 %140, i32* %141, i32 %144, i32 56)
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @CsrFreeCaptureBuffer(i32* %146)
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @NT_SUCCESS(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %139
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @BaseSetLastNTError(i32 %154)
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %7, align 4
  br label %159

157:                                              ; preds = %139
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %157, %152, %99, %42
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local %struct.TYPE_10__* @NtCurrentPeb(...) #1

declare dso_local i32* @CsrAllocateCaptureBuffer(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @CsrCaptureMessageBuffer(i32*, i32, i32, i32*) #1

declare dso_local i32 @CsrClientCallServer(i32, i32*, i32, i32) #1

declare dso_local i32 @CSR_CREATE_API_NUMBER(i32, i32) #1

declare dso_local i32 @CsrFreeCaptureBuffer(i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @BaseSetLastNTError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
