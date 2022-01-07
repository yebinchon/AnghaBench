; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___direction_disassembly_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___direction_disassembly_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@PANEL_MODE_ZOOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__direction_disassembly_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %5, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %6, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = call %struct.TYPE_24__* @__get_cur_panel(%struct.TYPE_23__* %15)
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %7, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %196 [
    i32 130, label %27
    i32 129, label %75
    i32 128, label %115
    i32 131, label %154
  ]

27:                                               ; preds = %2
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = call i32 @__cursor_left(%struct.TYPE_25__* %35)
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %38 = call i32 @r_core_block_read(%struct.TYPE_25__* %37)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @__set_panel_addr(%struct.TYPE_25__* %39, %struct.TYPE_24__* %40, i32 %43)
  br label %74

45:                                               ; preds = %27
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PANEL_MODE_ZOOM, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  br label %73

58:                                               ; preds = %45
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %58
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %34
  br label %196

75:                                               ; preds = %2
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = call i32 @__cursor_right(%struct.TYPE_25__* %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = call i32 @r_core_block_read(%struct.TYPE_25__* %85)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @__set_panel_addr(%struct.TYPE_25__* %87, %struct.TYPE_24__* %88, i32 %91)
  br label %114

93:                                               ; preds = %75
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PANEL_MODE_ZOOM, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %113

106:                                              ; preds = %93
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %99
  br label %114

114:                                              ; preds = %113, %82
  br label %196

115:                                              ; preds = %2
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %115
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %131 = call i32 @__cursor_up(%struct.TYPE_25__* %130)
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = call i32 @r_core_block_read(%struct.TYPE_25__* %132)
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @__set_panel_addr(%struct.TYPE_25__* %134, %struct.TYPE_24__* %135, i32 %138)
  br label %153

140:                                              ; preds = %115
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %142 = call i32 @r_core_visual_disasm_up(%struct.TYPE_25__* %141, i32* %8)
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 0, %144
  %146 = call i32 @r_core_seek_delta(%struct.TYPE_25__* %143, i32 %145)
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @__set_panel_addr(%struct.TYPE_25__* %147, %struct.TYPE_24__* %148, i32 %151)
  br label %153

153:                                              ; preds = %140, %129
  br label %196

154:                                              ; preds = %2
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %154
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %170 = call i32 @__cursor_down(%struct.TYPE_25__* %169)
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %172 = call i32 @r_core_block_read(%struct.TYPE_25__* %171)
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @__set_panel_addr(%struct.TYPE_25__* %173, %struct.TYPE_24__* %174, i32 %177)
  br label %195

179:                                              ; preds = %154
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %181 = call i32 @r_core_visual_disasm_down(%struct.TYPE_25__* %180, i32* %9, i32* %8)
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @r_core_seek(%struct.TYPE_25__* %182, i32 %187, i32 1)
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @__set_panel_addr(%struct.TYPE_25__* %189, %struct.TYPE_24__* %190, i32 %193)
  br label %195

195:                                              ; preds = %179, %168
  br label %196

196:                                              ; preds = %74, %114, %153, %195, %2
  ret void
}

declare dso_local %struct.TYPE_24__* @__get_cur_panel(%struct.TYPE_23__*) #1

declare dso_local i32 @__cursor_left(%struct.TYPE_25__*) #1

declare dso_local i32 @r_core_block_read(%struct.TYPE_25__*) #1

declare dso_local i32 @__set_panel_addr(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @__cursor_right(%struct.TYPE_25__*) #1

declare dso_local i32 @__cursor_up(%struct.TYPE_25__*) #1

declare dso_local i32 @r_core_visual_disasm_up(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @r_core_seek_delta(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @__cursor_down(%struct.TYPE_25__*) #1

declare dso_local i32 @r_core_visual_disasm_down(%struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
