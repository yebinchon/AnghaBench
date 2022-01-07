; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_check_extended_mode.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_check_extended_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@reg_cache = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbr_check_extended_mode(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = call i32 @gdbr_lock_enter(%struct.TYPE_13__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %45

8:                                                ; preds = %1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @reg_cache, i32 0, i32 0), align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = call i32 @send_msg(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %45

20:                                               ; preds = %8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = call i32 @read_packet(%struct.TYPE_13__* %21, i32 0)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = call i32 @send_ack(%struct.TYPE_13__* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %45

31:                                               ; preds = %20
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strncmp(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  store i32 -1, i32* %3, align 4
  br label %45

41:                                               ; preds = %31
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %37, %27, %16, %7
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = call i32 @gdbr_lock_leave(%struct.TYPE_13__* %46)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @gdbr_lock_enter(%struct.TYPE_13__*) #1

declare dso_local i32 @send_msg(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @read_packet(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @send_ack(%struct.TYPE_13__*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @gdbr_lock_leave(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
