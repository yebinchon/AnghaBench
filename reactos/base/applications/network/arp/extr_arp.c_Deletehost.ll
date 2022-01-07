; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/arp/extr_arp.c_Deletehost.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/arp/extr_arp.c_Deletehost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@TRUE = common dso_local global i64 0, align 8
@INADDR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ARP: bad IP address: %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"failed to allocate memory for GetIpNetTable\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@EOF = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Deletehost(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @strncmp(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %10, align 8
  br label %32

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @inet_addr(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @INADDR_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 (i32, ...) @_tprintf(i32 %26, i32* %27)
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %18
  br label %37

33:                                               ; preds = %2
  %34 = call i32 (...) @Usage()
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @exit(i32 %35) #3
  unreachable

37:                                               ; preds = %32
  %38 = call i64 @GetIpNetTable(%struct.TYPE_10__* null, i32* %8, i64 0)
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @HeapAlloc(i32 %39, i32 0, i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %7, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = icmp eq %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %122

46:                                               ; preds = %37
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = call i32 @ZeroMemory(%struct.TYPE_10__* %47, i32 16)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = load i64, i64* @TRUE, align 8
  %51 = call i64 @GetIpNetTable(%struct.TYPE_10__* %49, i32* %8, i64 %50)
  %52 = load i64, i64* @NO_ERROR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = call i32 @_T(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 (i32, ...) @_tprintf(i32 %55)
  %57 = call i32 (...) @DoFormatMessage()
  br label %122

58:                                               ; preds = %46
  %59 = call i32 (...) @GetProcessHeap()
  %60 = call i64 @HeapAlloc(i32 %59, i32 0, i32 16)
  %61 = inttoptr i64 %60 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = icmp eq %struct.TYPE_10__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %122

65:                                               ; preds = %58
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = call i32 @ZeroMemory(%struct.TYPE_10__* %66, i32 16)
  %68 = load i32*, i32** %5, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = call i64 @sscanf(i32* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %73)
  %75 = load i64, i64* @EOF, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %122

78:                                               ; preds = %70
  br label %88

79:                                               ; preds = %65
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %78
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @FALSE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @FlushIpNetTable(i32 %95)
  %97 = load i64, i64* @NO_ERROR, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = call i32 (...) @DoFormatMessage()
  br label %122

101:                                              ; preds = %92
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = call i32 @HeapFree(i32 %102, i32 0, %struct.TYPE_10__* %103)
  %105 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %105, i32* %3, align 4
  br label %138

106:                                              ; preds = %88
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = call i64 @DeleteIpNetEntry(%struct.TYPE_10__* %111)
  %113 = load i64, i64* @NO_ERROR, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (...) @DoFormatMessage()
  br label %122

117:                                              ; preds = %110
  %118 = call i32 (...) @GetProcessHeap()
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = call i32 @HeapFree(i32 %118, i32 0, %struct.TYPE_10__* %119)
  %121 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %121, i32* %3, align 4
  br label %138

122:                                              ; preds = %115, %99, %77, %64, %54, %45
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = icmp ne %struct.TYPE_10__* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = call i32 (...) @GetProcessHeap()
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = call i32 @HeapFree(i32 %126, i32 0, %struct.TYPE_10__* %127)
  br label %129

129:                                              ; preds = %125, %122
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = icmp ne %struct.TYPE_10__* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = call i32 (...) @GetProcessHeap()
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = call i32 @HeapFree(i32 %133, i32 0, %struct.TYPE_10__* %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %117, %101
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @inet_addr(i32*) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @Usage(...) #1

declare dso_local i64 @GetIpNetTable(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DoFormatMessage(...) #1

declare dso_local i64 @sscanf(i32*, i8*, i32*) #1

declare dso_local i64 @FlushIpNetTable(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @DeleteIpNetEntry(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
