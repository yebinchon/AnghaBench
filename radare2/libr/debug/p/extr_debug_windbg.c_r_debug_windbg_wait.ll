; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_windbg.c_r_debug_windbg_wait.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_windbg.c_r_debug_windbg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i8*, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@R_DEBUG_REASON_UNKNOWN = common dso_local global i8* null, align 8
@dbreak = common dso_local global i32 0, align 4
@wctx = common dso_local global i32 0, align 4
@KD_PACKET_TYPE_STATE_CHANGE64 = common dso_local global i32 0, align 4
@KD_E_OK = common dso_local global i32 0, align 4
@R_DEBUG_REASON_ERROR = common dso_local global i8* null, align 8
@DbgKdExceptionStateChange = common dso_local global i64 0, align 8
@R_DEBUG_REASON_INT = common dso_local global i8* null, align 8
@DbgKdLoadSymbolsStateChange = common dso_local global i64 0, align 8
@R_DEBUG_REASON_NEW_LIB = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*, i32)* @r_debug_windbg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_debug_windbg_wait(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** @R_DEBUG_REASON_UNKNOWN, align 8
  store i8* %9, i8** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* @dbreak, align 4
  br label %10

10:                                               ; preds = %82, %16, %2
  %11 = load i32, i32* @wctx, align 4
  %12 = load i32, i32* @KD_PACKET_TYPE_STATE_CHANGE64, align 4
  %13 = call i32 @windbg_wait_packet(i32 %11, i32 %12, %struct.TYPE_11__** %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @dbreak, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  store i32 0, i32* @dbreak, align 4
  %17 = load i32, i32* @wctx, align 4
  %18 = call i32 @windbg_break(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = call i32 @R_FREE(%struct.TYPE_11__* %19)
  br label %10

21:                                               ; preds = %10
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @KD_E_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %21
  %29 = load i8*, i8** @R_DEBUG_REASON_ERROR, align 8
  store i8* %29, i8** %5, align 8
  br label %85

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load i32, i32* @wctx, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @windbg_set_cpu(i32 %53, i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DbgKdExceptionStateChange, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %30
  %64 = load i8*, i8** @R_DEBUG_REASON_INT, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** @R_DEBUG_REASON_INT, align 8
  store i8* %68, i8** %5, align 8
  br label %85

69:                                               ; preds = %30
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DbgKdLoadSymbolsStateChange, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i8*, i8** @R_DEBUG_REASON_NEW_LIB, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load i8*, i8** @R_DEBUG_REASON_NEW_LIB, align 8
  store i8* %80, i8** %5, align 8
  br label %85

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = call i32 @R_FREE(%struct.TYPE_11__* %83)
  br label %10

85:                                               ; preds = %75, %63, %28
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = call i32 @free(%struct.TYPE_11__* %86)
  %88 = load i8*, i8** %5, align 8
  ret i8* %88
}

declare dso_local i32 @windbg_wait_packet(i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @windbg_break(i32) #1

declare dso_local i32 @R_FREE(%struct.TYPE_11__*) #1

declare dso_local i32 @windbg_set_cpu(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
