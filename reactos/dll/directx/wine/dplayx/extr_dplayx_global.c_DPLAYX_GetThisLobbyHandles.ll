; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_GetThisLobbyHandles.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_GetThisLobbyHandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i64*, i64)* @DPLAYX_GetThisLobbyHandles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DPLAYX_GetThisLobbyHandles(i64* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call i32 (...) @DPLAYX_AcquireSemaphore()
  %12 = call i32 @DPLAYX_IsAppIdLobbied(i32 0, %struct.TYPE_3__** %10)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %5, align 8
  br label %98

17:                                               ; preds = %4
  %18 = load i64*, i64** %6, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %5, align 8
  br label %98

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @CloseHandle(i64 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %28
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i64*, i64** %7, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %5, align 8
  br label %98

54:                                               ; preds = %46
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @CloseHandle(i64 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i64*, i64** %8, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %79 = load i64, i64* @FALSE, align 8
  store i64 %79, i64* %5, align 8
  br label %98

80:                                               ; preds = %72
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %8, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @CloseHandle(i64 %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %87, %80
  br label %95

95:                                               ; preds = %94, %69
  %96 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %97 = load i64, i64* @TRUE, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %95, %77, %51, %25, %14
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i32 @DPLAYX_AcquireSemaphore(...) #1

declare dso_local i32 @DPLAYX_IsAppIdLobbied(i32, %struct.TYPE_3__**) #1

declare dso_local i32 @DPLAYX_ReleaseSemaphore(...) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
