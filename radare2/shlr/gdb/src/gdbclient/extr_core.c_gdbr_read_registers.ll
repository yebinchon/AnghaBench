; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_read_registers.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_read_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@reg_cache = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GDB_REMOTE_TYPE_LLDB = common dso_local global i64 0, align 8
@CMD_READREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbr_read_registers(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 -1, i32* %4, align 4
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = icmp ne %struct.TYPE_14__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  store i32 -1, i32* %2, align 4
  br label %93

13:                                               ; preds = %7
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 3), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 0), align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 1), align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 2), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 1), align 4
  %28 = call i32 @memcpy(i32 %25, i32 %26, i32 %27)
  store i32 0, i32* %2, align 4
  br label %93

29:                                               ; preds = %16, %13
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @r_th_lock_check(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %93

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = call i32 @gdbr_lock_enter(%struct.TYPE_14__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %89

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GDB_REMOTE_TYPE_LLDB, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = call i32 @gdbr_read_registers_lldb(%struct.TYPE_14__* %55)
  store i32 %56, i32* %4, align 4
  br label %89

57:                                               ; preds = %47, %41
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = load i32, i32* @CMD_READREGS, align 4
  %60 = call i32 @send_msg(%struct.TYPE_14__* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %89

63:                                               ; preds = %57
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = call i64 @read_packet(%struct.TYPE_14__* %64, i32 0)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = call i64 @handle_g(%struct.TYPE_14__* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  store i32 -1, i32* %4, align 4
  br label %89

72:                                               ; preds = %67
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 3), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 1), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 2), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 1), align 4
  %81 = call i32 @memset(i32 %79, i32 0, i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 2), align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 1), align 4
  %87 = call i32 @memcpy(i32 %82, i32 %85, i32 %86)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 0), align 8
  br label %88

88:                                               ; preds = %75, %72
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %71, %62, %54, %40
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = call i32 @gdbr_lock_leave(%struct.TYPE_14__* %90)
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %35, %19, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @r_th_lock_check(i32) #1

declare dso_local i32 @gdbr_lock_enter(%struct.TYPE_14__*) #1

declare dso_local i32 @gdbr_read_registers_lldb(%struct.TYPE_14__*) #1

declare dso_local i32 @send_msg(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @read_packet(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @handle_g(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @gdbr_lock_leave(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
