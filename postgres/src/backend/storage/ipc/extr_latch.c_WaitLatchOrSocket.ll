; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_latch.c_WaitLatchOrSocket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_latch.c_WaitLatchOrSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@WL_SOCKET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaitLatchOrSocket(i32* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @CurrentMemoryContext, align 4
  %17 = call i32* @CreateWaitEventSet(i32 %16, i32 3)
  store i32* %17, i32** %14, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @WL_TIMEOUT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  br label %28

27:                                               ; preds = %5
  store i64 -1, i64* %9, align 8
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @WL_LATCH_SET, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* @WL_LATCH_SET, align 4
  %36 = load i32, i32* @PGINVALID_SOCKET, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @AddWaitEventToSet(i32* %34, i32 %35, i32 %36, i32* %37, i32* null)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i64, i64* @IsUnderPostmaster, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %42, %39
  %53 = phi i1 [ true, %42 ], [ true, %39 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load i64, i64* @IsUnderPostmaster, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %66 = load i32, i32* @PGINVALID_SOCKET, align 4
  %67 = call i32 @AddWaitEventToSet(i32* %64, i32 %65, i32 %66, i32* null, i32* null)
  br label %68

68:                                               ; preds = %63, %60, %52
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i64, i64* @IsUnderPostmaster, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %79 = load i32, i32* @PGINVALID_SOCKET, align 4
  %80 = call i32 @AddWaitEventToSet(i32* %77, i32 %78, i32 %79, i32* null, i32* null)
  br label %81

81:                                               ; preds = %76, %73, %68
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @WL_SOCKET_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @WL_SOCKET_MASK, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %15, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @AddWaitEventToSet(i32* %90, i32 %91, i32 %92, i32* null, i32* null)
  br label %94

94:                                               ; preds = %86, %81
  %95 = load i32*, i32** %14, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @WaitEventSetWait(i32* %95, i64 %96, %struct.TYPE_3__* %13, i32 1, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @WL_TIMEOUT, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %116

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @WL_LATCH_SET, align 4
  %109 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @WL_SOCKET_MASK, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %107, %112
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %105, %101
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @FreeWaitEventSet(i32* %117)
  %119 = load i32, i32* %11, align 4
  ret i32 %119
}

declare dso_local i32* @CreateWaitEventSet(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @AddWaitEventToSet(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @WaitEventSetWait(i32*, i64, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @FreeWaitEventSet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
