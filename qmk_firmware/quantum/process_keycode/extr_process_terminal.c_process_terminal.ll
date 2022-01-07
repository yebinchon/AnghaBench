; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_terminal.c_process_terminal.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_terminal.c_process_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TERM_ON = common dso_local global i32 0, align 4
@terminal_enabled = common dso_local global i64 0, align 8
@TERM_OFF = common dso_local global i32 0, align 4
@QK_MOD_TAP = common dso_local global i32 0, align 4
@QK_MOD_TAP_MAX = common dso_local global i32 0, align 4
@QK_LAYER_TAP = common dso_local global i32 0, align 4
@QK_LAYER_TAP_MAX = common dso_local global i32 0, align 4
@current_cmd_buffer_pos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@buffer = common dso_local global i32* null, align 8
@CMD_BUFF_SIZE = common dso_local global i32 0, align 4
@X_BSPACE = common dso_local global i32 0, align 4
@cmd_buffer = common dso_local global i32* null, align 8
@KC_LSHIFT = common dso_local global i32 0, align 4
@KC_RSHIFT = common dso_local global i32 0, align 4
@shifted_keycode_to_ascii_lut = common dso_local global i8* null, align 8
@keycode_to_ascii_lut = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_terminal(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TERM_ON, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (...) @enable_terminal()
  store i32 0, i32* %3, align 4
  br label %190

21:                                               ; preds = %13, %2
  %22 = load i64, i64* @terminal_enabled, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %189

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %189

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TERM_OFF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (...) @disable_terminal()
  store i32 0, i32* %3, align 4
  br label %190

42:                                               ; preds = %34, %30
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @QK_MOD_TAP, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @QK_MOD_TAP_MAX, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @QK_LAYER_TAP, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @QK_LAYER_TAP_MAX, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %46
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 255
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %54, %50
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 256
  br i1 %63, label %64, label %188

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  switch i32 %65, label %150 [
    i32 133, label %66
    i32 131, label %66
    i32 132, label %69
    i32 135, label %72
    i32 130, label %85
    i32 129, label %86
    i32 128, label %87
    i32 134, label %120
  ]

66:                                               ; preds = %64, %64
  %67 = call i32 (...) @push_to_cmd_buffer()
  store i64 0, i64* @current_cmd_buffer_pos, align 8
  %68 = call i32 (...) @process_terminal_command()
  store i32 0, i32* %3, align 4
  br label %190

69:                                               ; preds = %64
  %70 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 (...) @enable_terminal()
  store i32 0, i32* %3, align 4
  br label %190

72:                                               ; preds = %64
  %73 = load i32*, i32** @buffer, align 8
  %74 = call i32 @strlen(i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** @buffer, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 0, i32* %82, align 4
  store i32 1, i32* %3, align 4
  br label %190

83:                                               ; preds = %72
  %84 = call i32 (...) @TERMINAL_BELL()
  store i32 0, i32* %3, align 4
  br label %190

85:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %190

86:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %190

87:                                               ; preds = %64
  %88 = call i32 (...) @check_pos()
  %89 = load i64, i64* @current_cmd_buffer_pos, align 8
  %90 = load i32, i32* @CMD_BUFF_SIZE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = icmp ule i64 %89, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %87
  %95 = load i32*, i32** @buffer, align 8
  %96 = call i32 @strlen(i32* %95)
  store i32 %96, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %105, %94
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, i32* @X_BSPACE, align 4
  %103 = call i32* @SS_TAP(i32 %102)
  %104 = call i32 @send_string(i32* %103)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %97

108:                                              ; preds = %97
  %109 = load i32*, i32** @buffer, align 8
  %110 = load i32*, i32** @cmd_buffer, align 8
  %111 = load i64, i64* @current_cmd_buffer_pos, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strncpy(i32* %109, i32 %113, i32 80)
  %115 = load i32*, i32** @buffer, align 8
  %116 = call i32 @send_string(i32* %115)
  %117 = load i64, i64* @current_cmd_buffer_pos, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* @current_cmd_buffer_pos, align 8
  br label %119

119:                                              ; preds = %108, %87
  store i32 0, i32* %3, align 4
  br label %190

120:                                              ; preds = %64
  %121 = call i32 (...) @check_pos()
  %122 = load i64, i64* @current_cmd_buffer_pos, align 8
  %123 = icmp uge i64 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %120
  %125 = load i32*, i32** @buffer, align 8
  %126 = call i32 @strlen(i32* %125)
  store i32 %126, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %135, %124
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32, i32* @X_BSPACE, align 4
  %133 = call i32* @SS_TAP(i32 %132)
  %134 = call i32 @send_string(i32* %133)
  br label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %127

138:                                              ; preds = %127
  %139 = load i32*, i32** @buffer, align 8
  %140 = load i32*, i32** @cmd_buffer, align 8
  %141 = load i64, i64* @current_cmd_buffer_pos, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @strncpy(i32* %139, i32 %143, i32 79)
  %145 = load i32*, i32** @buffer, align 8
  %146 = call i32 @send_string(i32* %145)
  %147 = load i64, i64* @current_cmd_buffer_pos, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* @current_cmd_buffer_pos, align 8
  br label %149

149:                                              ; preds = %138, %120
  store i32 0, i32* %3, align 4
  br label %190

150:                                              ; preds = %64
  %151 = load i32, i32* %4, align 4
  %152 = icmp sle i32 %151, 58
  br i1 %152, label %153, label %186

153:                                              ; preds = %150
  store i8 0, i8* %7, align 1
  %154 = call i32 (...) @get_mods()
  %155 = load i32, i32* @KC_LSHIFT, align 4
  %156 = call i32 @MOD_BIT(i32 %155)
  %157 = load i32, i32* @KC_RSHIFT, align 4
  %158 = call i32 @MOD_BIT(i32 %157)
  %159 = or i32 %156, %158
  %160 = and i32 %154, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load i8*, i8** @shifted_keycode_to_ascii_lut, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  store i8 %167, i8* %7, align 1
  br label %178

168:                                              ; preds = %153
  %169 = call i32 (...) @get_mods()
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i8*, i8** @keycode_to_ascii_lut, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  store i8 %176, i8* %7, align 1
  br label %177

177:                                              ; preds = %171, %168
  br label %178

178:                                              ; preds = %177, %162
  %179 = load i8, i8* %7, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i32*, i32** @buffer, align 8
  %184 = call i32 @strncat(i32* %183, i8* %7, i32 1)
  br label %185

185:                                              ; preds = %182, %178
  br label %186

186:                                              ; preds = %185, %150
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187, %61
  br label %189

189:                                              ; preds = %188, %24, %21
  store i32 1, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %149, %119, %86, %85, %83, %77, %69, %66, %40, %19
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @enable_terminal(...) #1

declare dso_local i32 @disable_terminal(...) #1

declare dso_local i32 @push_to_cmd_buffer(...) #1

declare dso_local i32 @process_terminal_command(...) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @TERMINAL_BELL(...) #1

declare dso_local i32 @check_pos(...) #1

declare dso_local i32 @send_string(i32*) #1

declare dso_local i32* @SS_TAP(i32) #1

declare dso_local i32 @strncpy(i32*, i32, i32) #1

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @strncat(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
