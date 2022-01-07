; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/xnu/extr_xnu_excthreads.c___xnu_wait.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/xnu/extr_xnu_excthreads.c___xnu_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }

@R_DEBUG_REASON_UNKNOWN = common dso_local global i32 0, align 4
@ex = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@MACH_RCV_MSG = common dso_local global i32 0, align 4
@MACH_RCV_INTERRUPT = common dso_local global i32 0, align 4
@MACH_MSG_TIMEOUT_NONE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@MACH_RCV_INTERRUPTED = common dso_local global i64 0, align 8
@R_DEBUG_REASON_MACH_RCV_INTERRUPTED = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"message didn't succeeded\0A\00", align 1
@R_DEBUG_REASON_DEAD = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@MACH_SEND_MSG = common dso_local global i32 0, align 4
@MACH_SEND_INTERRUPT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to deallocate reply port\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32)* @__xnu_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xnu_wait(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @R_DEBUG_REASON_UNKNOWN, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = icmp ne %struct.TYPE_19__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %139

17:                                               ; preds = %2
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ex, i32 0, i32 0), align 4
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  store i32 24, i32* %22, align 8
  br label %23

23:                                               ; preds = %95, %17
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %25 = load i32, i32* @MACH_RCV_MSG, align 4
  %26 = load i32, i32* @MACH_RCV_INTERRUPT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ex, i32 0, i32 0), align 4
  %29 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %30 = load i32, i32* @MACH_PORT_NULL, align 4
  %31 = call i64 @mach_msg(%struct.TYPE_20__* %24, i32 %27, i32 0, i32 24, i32 %28, i32 %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @MACH_RCV_INTERRUPTED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @R_DEBUG_REASON_MACH_RCV_INTERRUPTED, align 4
  store i32 %36, i32* %8, align 4
  br label %133

37:                                               ; preds = %23
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %133

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = call i32 @validate_mach_message(%struct.TYPE_19__* %45, %struct.TYPE_18__* %11)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = call i32 @handle_dead_notify(%struct.TYPE_19__* %50, %struct.TYPE_18__* %11)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @R_DEBUG_REASON_DEAD, align 4
  store i32 %55, i32* %8, align 4
  br label %133

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %96, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %62 = load i32, i32* @KERN_FAILURE, align 4
  %63 = call i32 @encode_reply(%struct.TYPE_17__* %9, %struct.TYPE_20__* %61, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %65 = load i32, i32* @MACH_SEND_MSG, align 4
  %66 = load i32, i32* @MACH_SEND_INTERRUPT, align 4
  %67 = or i32 %65, %66
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MACH_PORT_NULL, align 4
  %72 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %73 = load i32, i32* @MACH_PORT_NULL, align 4
  %74 = call i64 @mach_msg(%struct.TYPE_20__* %64, i32 %67, i32 %70, i32 0, i32 %71, i32 %72, i32 %73)
  store i64 %74, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %60
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = call i32 (...) @mach_task_self()
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @mach_port_deallocate(i32 %84, i64 %87)
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @KERN_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %83
  br label %95

95:                                               ; preds = %94, %79, %60
  br label %23

96:                                               ; preds = %57
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = call i32 @handle_exception_message(%struct.TYPE_19__* %97, %struct.TYPE_18__* %11, i32* %7)
  store i32 %98, i32* %8, align 4
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @encode_reply(%struct.TYPE_17__* %9, %struct.TYPE_20__* %99, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %103 = load i32, i32* @MACH_SEND_MSG, align 4
  %104 = load i32, i32* @MACH_SEND_INTERRUPT, align 4
  %105 = or i32 %103, %104
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MACH_PORT_NULL, align 4
  %110 = load i32, i32* @MACH_PORT_NULL, align 4
  %111 = call i64 @mach_msg(%struct.TYPE_20__* %102, i32 %105, i32 %108, i32 0, i32 %109, i32 0, i32 %110)
  store i64 %111, i64* %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %96
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = call i32 (...) @mach_task_self()
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @mach_port_deallocate(i32 %121, i64 %124)
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* @KERN_SUCCESS, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %120
  br label %132

132:                                              ; preds = %131, %116, %96
  br label %133

133:                                              ; preds = %132, %54, %41, %35
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = call i32 @r_debug_reg_get(%struct.TYPE_19__* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %15
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @mach_msg(%struct.TYPE_20__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @validate_mach_message(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @handle_dead_notify(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @encode_reply(%struct.TYPE_17__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @mach_port_deallocate(i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @handle_exception_message(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @r_debug_reg_get(%struct.TYPE_19__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
