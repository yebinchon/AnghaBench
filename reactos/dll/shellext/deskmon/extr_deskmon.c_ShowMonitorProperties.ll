; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/deskmon/extr_deskmon.c_ShowMonitorProperties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/deskmon/extr_deskmon.c_ShowMonitorProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"devmgr.dll\00", align 1
@FUNC_DEVICEPROPERTIES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ShowMonitorProperties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShowMonitorProperties(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32, i32*, i32, i32)*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @GetMonitorDevInstID(i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %11
  %22 = call i32 @TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* @LoadLibrary(i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @FUNC_DEVICEPROPERTIES, align 4
  %29 = call i64 @GetProcAddress(i32* %27, i32 %28)
  %30 = inttoptr i64 %29 to i32 (i32, i32*, i32, i32)*
  store i32 (i32, i32*, i32, i32)* %30, i32 (i32, i32*, i32, i32)** %5, align 8
  %31 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %5, align 8
  %32 = icmp ne i32 (i32, i32*, i32, i32)* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 %34(i32 %37, i32* null, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %33, %26
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @FreeLibrary(i32* %47)
  br label %49

49:                                               ; preds = %46, %21
  %50 = load i32*, i32** %6, align 8
  %51 = ptrtoint i32* %50 to i32
  %52 = call i32 @LocalFree(i32 %51)
  br label %53

53:                                               ; preds = %49, %11
  br label %54

54:                                               ; preds = %53, %1
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32* @GetMonitorDevInstID(i32) #1

declare dso_local i32* @LoadLibrary(i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @GetProcAddress(i32*, i32) #1

declare dso_local i32 @FreeLibrary(i32*) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
