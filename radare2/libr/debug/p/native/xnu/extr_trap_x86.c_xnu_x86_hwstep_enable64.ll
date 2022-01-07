; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/xnu/extr_trap_x86.c_xnu_x86_hwstep_enable64.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/xnu/extr_trap_x86.c_xnu_x86_hwstep_enable64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"error to get gpr registers in trace bit intel\0A\00", align 1
@x86_THREAD_STATE32 = common dso_local global i64 0, align 8
@x86_THREAD_STATE64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid bit size\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"error xnu_thread_set_gpr in modify_trace_bit intel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32)* @xnu_x86_hwstep_enable64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xnu_x86_hwstep_enable64(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_19__* @get_xnu_thread(%struct.TYPE_21__* %9, i32 %12)
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %8, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %16 = call i32 @xnu_thread_get_gpr(%struct.TYPE_21__* %14, %struct.TYPE_19__* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @eprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

21:                                               ; preds = %2
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %6, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @x86_THREAD_STATE32, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %21
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, -257
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i64 256, i64 0
  %43 = or i64 %38, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  br label %77

49:                                               ; preds = %21
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @x86_THREAD_STATE64, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = and i64 %62, -257
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i64 256, i64 0
  %68 = or i64 %63, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  br label %76

74:                                               ; preds = %49
  %75 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %31
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = call i32 @xnu_thread_set_gpr(%struct.TYPE_21__* %78, %struct.TYPE_19__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = call i32 @eprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

84:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %82, %74, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_19__* @get_xnu_thread(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @xnu_thread_get_gpr(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @xnu_thread_set_gpr(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
