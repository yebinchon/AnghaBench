; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_getInterfaceIndexTableInt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_getInterfaceIndexTableInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@FILE_READ_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"InterfaceInfoSet: %08x, %04x:%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"NumInterfaces = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Examining interface %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Interface %d matches (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @getInterfaceIndexTableInt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %10 = load i32, i32* @FILE_READ_DATA, align 4
  %11 = call i32 @openTcpFile(i32* %8, i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @NT_SUCCESS(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %99

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @getInterfaceInfoSet(i32 %16, %struct.TYPE_12__** %6, i32* %3)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @NT_SUCCESS(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %15
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 16, %35
  %37 = trunc i64 %36 to i32
  %38 = call i64 @calloc(i32 1, i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %93

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %86, %42
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = call i32 @isLoopback(i32 %58, %struct.TYPE_13__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %57, %52
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %77, i32* %84, align 4
  br label %85

85:                                               ; preds = %66, %57
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %48

89:                                               ; preds = %48
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %31
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = call i32 @tdiFreeThingSet(%struct.TYPE_12__* %94)
  br label %96

96:                                               ; preds = %93, %15
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @closeTcpFile(i32 %97)
  br label %99

99:                                               ; preds = %96, %1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %100
}

declare dso_local i32 @openTcpFile(i32*, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @getInterfaceInfoSet(i32, %struct.TYPE_12__**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @isLoopback(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @tdiFreeThingSet(%struct.TYPE_12__*) #1

declare dso_local i32 @closeTcpFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
