; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_process_vk_key.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_process_vk_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@KEY_IS_UP = common dso_local global i32 0, align 4
@CTRL_C = common dso_local global i16 0, align 2
@CTRL_FLAG = common dso_local global i16 0, align 2
@calc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@WM_COMMAND = common dso_local global i32 0, align 4
@IDM_EDIT_COPY = common dso_local global i32 0, align 4
@CTRL_V = common dso_local global i16 0, align 2
@IDM_EDIT_PASTE = common dso_local global i32 0, align 4
@VK_F1 = common dso_local global i32 0, align 4
@IDM_HELP_HELP = common dso_local global i32 0, align 4
@key2code = common dso_local global %struct.TYPE_7__* null, align 8
@BITMASK_IS_CTRL = common dso_local global i32 0, align 4
@BITMASK_IS_ASCII = common dso_local global i32 0, align 4
@CALC_LAYOUT_SCIENTIFIC = common dso_local global i64 0, align 8
@IDC_RADIO_DEC = common dso_local global i64 0, align 8
@key2code_base10 = common dso_local global %struct.TYPE_7__* null, align 8
@key2code_base16 = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @process_vk_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_vk_key(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @LOWORD(i32 %10)
  %12 = call zeroext i16 @vk2ascii(i32 %11)
  store i16 %12, i16* %8, align 2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @KEY_IS_UP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %2
  %18 = load i16, i16* %8, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @CTRL_C, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @CTRL_FLAG, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %21, %23
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @calc, i32 0, i32 2), align 8
  %28 = load i32, i32* @WM_COMMAND, align 4
  %29 = load i32, i32* @IDM_EDIT_COPY, align 4
  %30 = call i32 @SendMessage(i32 %27, i32 %28, i32 %29, i32 0)
  store i32 1, i32* %3, align 4
  br label %176

31:                                               ; preds = %17
  %32 = load i16, i16* %8, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @CTRL_V, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @CTRL_FLAG, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %35, %37
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @calc, i32 0, i32 2), align 8
  %42 = load i32, i32* @WM_COMMAND, align 4
  %43 = load i32, i32* @IDM_EDIT_PASTE, align 4
  %44 = call i32 @SendMessage(i32 %41, i32 %42, i32 %43, i32 0)
  store i32 1, i32* %3, align 4
  br label %176

45:                                               ; preds = %31
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @LOWORD(i32 %46)
  %48 = load i32, i32* @VK_F1, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @calc, i32 0, i32 2), align 8
  %52 = load i32, i32* @WM_COMMAND, align 4
  %53 = load i32, i32* @IDM_HELP_HELP, align 4
  %54 = call i32 @SendMessage(i32 %51, i32 %52, i32 %53, i32 0)
  store i32 1, i32* %3, align 4
  br label %176

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %2
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %134, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code, align 8
  %60 = call i32 @SIZEOF(%struct.TYPE_7__* %59)
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %137

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BITMASK_IS_CTRL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load i16, i16* @CTRL_FLAG, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78, %62
  %84 = load i32, i32* %9, align 4
  %85 = load i16, i16* %8, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @BITMASK_IS_ASCII, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %88, %83
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @LOWORD(i32 %100)
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %98
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @BITMASK_IS_ASCII, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %103, %88
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @calc, i32 0, i32 2), align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code, align 8
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32* @GetDlgItem(i32 %114, i32 %120)
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %134

124:                                              ; preds = %113
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code, align 8
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @post_key_press(i32 %125, i32 %131)
  store i32 %132, i32* %3, align 4
  br label %176

133:                                              ; preds = %103, %98
  br label %134

134:                                              ; preds = %133, %123
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %57

137:                                              ; preds = %57
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @calc, i32 0, i32 0), align 8
  %139 = load i64, i64* @CALC_LAYOUT_SCIENTIFIC, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %175

141:                                              ; preds = %137
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @calc, i32 0, i32 1), align 8
  %143 = load i64, i64* @IDC_RADIO_DEC, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code_base10, align 8
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %6, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code_base10, align 8
  %148 = call i32 @SIZEOF(%struct.TYPE_7__* %147)
  store i32 %148, i32* %7, align 4
  br label %153

149:                                              ; preds = %141
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code_base16, align 8
  store %struct.TYPE_7__* %150, %struct.TYPE_7__** %6, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key2code_base16, align 8
  %152 = call i32 @SIZEOF(%struct.TYPE_7__* %151)
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %170, %153
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @LOWORD(i32 %158)
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @post_key_press(i32 %162, i32 %165)
  store i32 %166, i32* %3, align 4
  br label %176

167:                                              ; preds = %154
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 1
  store %struct.TYPE_7__* %169, %struct.TYPE_7__** %6, align 8
  br label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %7, align 4
  %172 = add i32 %171, -1
  store i32 %172, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %154, label %174

174:                                              ; preds = %170
  br label %175

175:                                              ; preds = %174, %137
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %161, %124, %50, %40, %26
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local zeroext i16 @vk2ascii(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @SIZEOF(%struct.TYPE_7__*) #1

declare dso_local i32* @GetDlgItem(i32, i32) #1

declare dso_local i32 @post_key_press(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
