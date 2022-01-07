; ModuleID = '/home/carl/AnghaBench/radare2/shlr/windbg/extr_windbg.c_windbg_wait_packet.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/windbg/extr_windbg.c_windbg_wait_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@KD_E_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"We were not waiting for this... %08x\0A\00", align 1
@KD_PACKET_DATA = common dso_local global i64 0, align 8
@KD_PACKET_TYPE_STATE_CHANGE64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"State64\0A\00", align 1
@KD_PACKET_TYPE_FILE_IO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Replying IO\0A\00", align 1
@KD_PACKET_CTRL = common dso_local global i64 0, align 8
@KD_PACKET_TYPE_RESEND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Waoh. You probably sent a malformed packet !\0A\00", align 1
@KD_E_MALFORMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @windbg_wait_packet(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  store i32 10, i32* %10, align 4
  br label %11

11:                                               ; preds = %98, %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = call i32 @R_FREE(%struct.TYPE_10__* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kd_read_packet(i32 %20, %struct.TYPE_10__** %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @KD_E_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %17
  br label %100

29:                                               ; preds = %25
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KD_PACKET_DATA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @KD_PACKET_TYPE_STATE_CHANGE64, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46, %40
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KD_PACKET_DATA, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @KD_PACKET_TYPE_FILE_IO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = call i32 @do_io_reply(%struct.TYPE_11__* %68, %struct.TYPE_10__* %69)
  br label %71

71:                                               ; preds = %66, %60, %54
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @KD_PACKET_CTRL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @KD_PACKET_TYPE_RESEND, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = call i32 (...) @r_sys_backtrace()
  %85 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @KD_E_MALFORMED, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %83, %77, %71
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %10, align 4
  %97 = icmp ne i32 %95, 0
  br label %98

98:                                               ; preds = %94, %88
  %99 = phi i1 [ false, %88 ], [ %97, %94 ]
  br i1 %99, label %11, label %100

100:                                              ; preds = %98, %28
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @KD_E_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = call i32 @free(%struct.TYPE_10__* %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %119

108:                                              ; preds = %100
  %109 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %110 = icmp ne %struct.TYPE_10__** %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %113, align 8
  br label %117

114:                                              ; preds = %108
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %116 = call i32 @free(%struct.TYPE_10__* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* @KD_E_OK, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %104
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @R_FREE(%struct.TYPE_10__*) #1

declare dso_local i32 @kd_read_packet(i32, %struct.TYPE_10__**) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @do_io_reply(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @r_sys_backtrace(...) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
