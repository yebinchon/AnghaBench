; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_power_saving.h_set_power_save_state.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_power_saving.h_set_power_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)* }

@POWER_SAVE_STATUS_ENABLED = common dso_local global i32 0, align 4
@POWER_SAVE_STATUS_DISABLED = common dso_local global i32 0, align 4
@power_save_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"enable power savings\0A\00", align 1
@__const.set_power_save_state.UBLOX_SLEEP_MSG = private unnamed_addr constant [13 x i8] c"\B5b\06\04\04\00\01\00\08\00\17x\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"disable power savings\0A\00", align 1
@__const.set_power_save_state.UBLOX_WAKE_MSG = private unnamed_addr constant [13 x i8] c"\B5b\06\04\04\00\01\00\09\00\18z\00", align 1
@current_board = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_GPS_ENABLED = common dso_local global i32 0, align 4
@ESP_GPS_DISABLED = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_power_save_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [13 x i8], align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [13 x i8], align 1
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @POWER_SAVE_STATUS_ENABLED, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @POWER_SAVE_STATUS_DISABLED, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i1 [ true, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %141

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @power_save_status, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %141

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @POWER_SAVE_STATUS_ENABLED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = call i64 (...) @board_has_gps()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = bitcast [13 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.set_power_save_state.UBLOX_SLEEP_MSG, i32 0, i32 0), i64 13, i1 false)
  %37 = call i32* @get_ring_by_number(i32 1)
  store i32* %37, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %54, %35
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %40, 12
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %52, %42
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @putc(i32* %44, i8 signext %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %43

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %38

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %31
  br label %87

59:                                               ; preds = %27
  %60 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i64 (...) @board_has_gps()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = bitcast [13 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %64, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.set_power_save_state.UBLOX_WAKE_MSG, i32 0, i32 0), i64 13, i1 false)
  %65 = call i32* @get_ring_by_number(i32 1)
  store i32* %65, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %82, %63
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %68, 12
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %80, %70
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @putc(i32* %72, i8 signext %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %71

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %66

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %59
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %58
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32 (i32)*, i32 (i32)** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 %90(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32 (i32)*, i32 (i32)** %97, align 8
  %99 = load i32, i32* @ESP_GPS_ENABLED, align 4
  %100 = call i32 %98(i32 %99)
  br label %107

101:                                              ; preds = %87
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32 (i32)*, i32 (i32)** %103, align 8
  %105 = load i32, i32* @ESP_GPS_DISABLED, align 4
  %106 = call i32 %104(i32 %105)
  br label %107

107:                                              ; preds = %101, %95
  %108 = call i64 (...) @board_has_gmlan()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* @GPIOB, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @set_gpio_output(i32 %111, i32 14, i32 %112)
  %114 = load i32, i32* @GPIOB, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @set_gpio_output(i32 %114, i32 15, i32 %115)
  br label %117

117:                                              ; preds = %110, %107
  %118 = call i64 (...) @board_has_lin()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32, i32* @GPIOB, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @set_gpio_output(i32 %121, i32 7, i32 %122)
  %124 = load i32, i32* @GPIOA, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @set_gpio_output(i32 %124, i32 14, i32 %125)
  br label %127

127:                                              ; preds = %120, %117
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32 (i32)*, i32 (i32)** %132, align 8
  %134 = call i32 %133(i32 0)
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32 (i32)*, i32 (i32)** %136, align 8
  %138 = call i32 %137(i32 0)
  br label %139

139:                                              ; preds = %130, %127
  %140 = load i32, i32* %2, align 4
  store i32 %140, i32* @power_save_status, align 4
  br label %141

141:                                              ; preds = %139, %23, %18
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @board_has_gps(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @get_ring_by_number(i32) #1

declare dso_local i32 @putc(i32*, i8 signext) #1

declare dso_local i64 @board_has_gmlan(...) #1

declare dso_local i32 @set_gpio_output(i32, i32, i32) #1

declare dso_local i64 @board_has_lin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
