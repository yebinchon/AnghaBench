; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_attach.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@reg_cache = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CMD_ATTACH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbr_attach(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %86

17:                                               ; preds = %11
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = call i32 @gdbr_lock_enter(%struct.TYPE_14__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %76

22:                                               ; preds = %17
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @reg_cache, i32 0, i32 0), align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = call i32 @gdbr_check_extended_mode(%struct.TYPE_14__* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 -2, i32* %6, align 4
  br label %76

41:                                               ; preds = %34
  %42 = load i8*, i8** @CMD_ATTACH, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i8* @calloc(i64 %47, i32 1)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %76

52:                                               ; preds = %41
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i8*, i8** @CMD_ATTACH, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %76

61:                                               ; preds = %52
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @send_msg(%struct.TYPE_14__* %62, i8* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %76

68:                                               ; preds = %61
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = call i64 @read_packet(%struct.TYPE_14__* %69, i32 0)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = call i32 @handle_attach(%struct.TYPE_14__* %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %72, %67, %60, %51, %40, %21
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = call i32 @gdbr_lock_leave(%struct.TYPE_14__* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @gdbr_lock_enter(%struct.TYPE_14__*) #1

declare dso_local i32 @gdbr_check_extended_mode(%struct.TYPE_14__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @send_msg(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @read_packet(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @handle_attach(%struct.TYPE_14__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @gdbr_lock_leave(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
