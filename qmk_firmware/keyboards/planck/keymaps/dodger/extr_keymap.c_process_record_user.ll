; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/dodger/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/dodger/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_COLEMAK = common dso_local global i32 0, align 4
@isGame = common dso_local global i32 0, align 4
@isMusic = common dso_local global i32 0, align 4
@_MUSIC = common dso_local global i32 0, align 4
@_GAME = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"// ---------------------------------------------------------------\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"// ***************************************************************\00", align 1
@cabbage = common dso_local global i32 0, align 4
@disney = common dso_local global i32 0, align 4
@doom = common dso_local global i32 0, align 4
@mario = common dso_local global i32 0, align 4
@marioe = common dso_local global i32 0, align 4
@numberone = common dso_local global i32 0, align 4
@oldspice = common dso_local global i32 0, align 4
@overwatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %198 [
    i32 142, label %7
    i32 138, label %17
    i32 133, label %41
    i32 136, label %65
    i32 129, label %86
    i32 137, label %107
    i32 141, label %116
    i32 128, label %125
    i32 135, label %134
    i32 134, label %142
    i32 130, label %150
    i32 139, label %158
    i32 140, label %166
    i32 132, label %174
    i32 143, label %182
    i32 131, label %190
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_COLEMAK, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %199

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load i32, i32* @isGame, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* @isMusic, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @_MUSIC, align 4
  %31 = call i32 @setLayer(i32 %30)
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @_COLEMAK, align 4
  %34 = call i32 @setLayer(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  store i32 0, i32* @isGame, align 4
  br label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @_GAME, align 4
  %38 = call i32 @setLayer(i32 %37)
  store i32 1, i32* @isGame, align 4
  br label %39

39:                                               ; preds = %36, %35
  br label %40

40:                                               ; preds = %39, %17
  store i32 0, i32* %3, align 4
  br label %199

41:                                               ; preds = %2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load i32, i32* @isMusic, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* @isGame, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @_GAME, align 4
  %55 = call i32 @setLayer(i32 %54)
  br label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @_COLEMAK, align 4
  %58 = call i32 @setLayer(i32 %57)
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* @isMusic, align 4
  br label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @_MUSIC, align 4
  %62 = call i32 @setLayer(i32 %61)
  store i32 1, i32* @isMusic, align 4
  br label %63

63:                                               ; preds = %60, %59
  br label %64

64:                                               ; preds = %63, %41
  store i32 0, i32* %3, align 4
  br label %199

65:                                               ; preds = %2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* @_LOWER, align 4
  %73 = call i32 @layer_on(i32 %72)
  %74 = load i32, i32* @_LOWER, align 4
  %75 = load i32, i32* @_RAISE, align 4
  %76 = load i32, i32* @_ADJUST, align 4
  %77 = call i32 @update_tri_layer(i32 %74, i32 %75, i32 %76)
  br label %85

78:                                               ; preds = %65
  %79 = load i32, i32* @_LOWER, align 4
  %80 = call i32 @layer_off(i32 %79)
  %81 = load i32, i32* @_LOWER, align 4
  %82 = load i32, i32* @_RAISE, align 4
  %83 = load i32, i32* @_ADJUST, align 4
  %84 = call i32 @update_tri_layer(i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %71
  store i32 0, i32* %3, align 4
  br label %199

86:                                               ; preds = %2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i32, i32* @_RAISE, align 4
  %94 = call i32 @layer_on(i32 %93)
  %95 = load i32, i32* @_LOWER, align 4
  %96 = load i32, i32* @_RAISE, align 4
  %97 = load i32, i32* @_ADJUST, align 4
  %98 = call i32 @update_tri_layer(i32 %95, i32 %96, i32 %97)
  br label %106

99:                                               ; preds = %86
  %100 = load i32, i32* @_RAISE, align 4
  %101 = call i32 @layer_off(i32 %100)
  %102 = load i32, i32* @_LOWER, align 4
  %103 = load i32, i32* @_RAISE, align 4
  %104 = load i32, i32* @_ADJUST, align 4
  %105 = call i32 @update_tri_layer(i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %92
  store i32 0, i32* %3, align 4
  br label %199

107:                                              ; preds = %2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %107
  store i32 0, i32* %3, align 4
  br label %199

116:                                              ; preds = %2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 @SEND_STRING(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %116
  store i32 0, i32* %3, align 4
  br label %199

125:                                              ; preds = %2
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = call i32 @SEND_STRING(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %125
  store i32 0, i32* %3, align 4
  br label %199

134:                                              ; preds = %2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %134
  store i32 0, i32* %3, align 4
  br label %199

142:                                              ; preds = %2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %142
  store i32 0, i32* %3, align 4
  br label %199

150:                                              ; preds = %2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %150
  store i32 0, i32* %3, align 4
  br label %199

158:                                              ; preds = %2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %158
  store i32 0, i32* %3, align 4
  br label %199

166:                                              ; preds = %2
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %166
  store i32 0, i32* %3, align 4
  br label %199

174:                                              ; preds = %2
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %174
  store i32 0, i32* %3, align 4
  br label %199

182:                                              ; preds = %2
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188, %182
  store i32 0, i32* %3, align 4
  br label %199

190:                                              ; preds = %2
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %190
  store i32 0, i32* %3, align 4
  br label %199

198:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %199

199:                                              ; preds = %198, %197, %189, %181, %173, %165, %157, %149, %141, %133, %124, %115, %106, %85, %64, %40, %16
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @setLayer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
