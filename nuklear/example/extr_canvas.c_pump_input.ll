; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_canvas.c_pump_input.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_canvas.c_pump_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }

@NK_KEY_DEL = common dso_local global i32 0, align 4
@GLFW_KEY_DELETE = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global i64 0, align 8
@NK_KEY_ENTER = common dso_local global i32 0, align 4
@GLFW_KEY_ENTER = common dso_local global i32 0, align 4
@NK_KEY_TAB = common dso_local global i32 0, align 4
@GLFW_KEY_TAB = common dso_local global i32 0, align 4
@NK_KEY_BACKSPACE = common dso_local global i32 0, align 4
@GLFW_KEY_BACKSPACE = common dso_local global i32 0, align 4
@NK_KEY_LEFT = common dso_local global i32 0, align 4
@GLFW_KEY_LEFT = common dso_local global i32 0, align 4
@NK_KEY_RIGHT = common dso_local global i32 0, align 4
@GLFW_KEY_RIGHT = common dso_local global i32 0, align 4
@NK_KEY_UP = common dso_local global i32 0, align 4
@GLFW_KEY_UP = common dso_local global i32 0, align 4
@NK_KEY_DOWN = common dso_local global i32 0, align 4
@GLFW_KEY_DOWN = common dso_local global i32 0, align 4
@GLFW_KEY_LEFT_CONTROL = common dso_local global i32 0, align 4
@GLFW_KEY_RIGHT_CONTROL = common dso_local global i32 0, align 4
@NK_KEY_COPY = common dso_local global i32 0, align 4
@GLFW_KEY_C = common dso_local global i32 0, align 4
@NK_KEY_PASTE = common dso_local global i32 0, align 4
@GLFW_KEY_P = common dso_local global i32 0, align 4
@NK_KEY_CUT = common dso_local global i32 0, align 4
@GLFW_KEY_X = common dso_local global i32 0, align 4
@GLFW_KEY_E = common dso_local global i32 0, align 4
@NK_KEY_SHIFT = common dso_local global i32 0, align 4
@NK_BUTTON_LEFT = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@NK_BUTTON_MIDDLE = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_MIDDLE = common dso_local global i32 0, align 4
@NK_BUTTON_RIGHT = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_context*, i32*)* @pump_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pump_input(%struct.nk_context* %0, i32* %1) #0 {
  %3 = alloca %struct.nk_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.nk_context* %0, %struct.nk_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %8 = call i32 @nk_input_begin(%struct.nk_context* %7)
  %9 = call i32 (...) @glfwPollEvents()
  %10 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %11 = load i32, i32* @NK_KEY_DEL, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @GLFW_KEY_DELETE, align 4
  %14 = call i64 @glfwGetKey(i32* %12, i32 %13)
  %15 = load i64, i64* @GLFW_PRESS, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @nk_input_key(%struct.nk_context* %10, i32 %11, i32 %17)
  %19 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %20 = load i32, i32* @NK_KEY_ENTER, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @GLFW_KEY_ENTER, align 4
  %23 = call i64 @glfwGetKey(i32* %21, i32 %22)
  %24 = load i64, i64* @GLFW_PRESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @nk_input_key(%struct.nk_context* %19, i32 %20, i32 %26)
  %28 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %29 = load i32, i32* @NK_KEY_TAB, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @GLFW_KEY_TAB, align 4
  %32 = call i64 @glfwGetKey(i32* %30, i32 %31)
  %33 = load i64, i64* @GLFW_PRESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @nk_input_key(%struct.nk_context* %28, i32 %29, i32 %35)
  %37 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %38 = load i32, i32* @NK_KEY_BACKSPACE, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @GLFW_KEY_BACKSPACE, align 4
  %41 = call i64 @glfwGetKey(i32* %39, i32 %40)
  %42 = load i64, i64* @GLFW_PRESS, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @nk_input_key(%struct.nk_context* %37, i32 %38, i32 %44)
  %46 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %47 = load i32, i32* @NK_KEY_LEFT, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @GLFW_KEY_LEFT, align 4
  %50 = call i64 @glfwGetKey(i32* %48, i32 %49)
  %51 = load i64, i64* @GLFW_PRESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @nk_input_key(%struct.nk_context* %46, i32 %47, i32 %53)
  %55 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %56 = load i32, i32* @NK_KEY_RIGHT, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @GLFW_KEY_RIGHT, align 4
  %59 = call i64 @glfwGetKey(i32* %57, i32 %58)
  %60 = load i64, i64* @GLFW_PRESS, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @nk_input_key(%struct.nk_context* %55, i32 %56, i32 %62)
  %64 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %65 = load i32, i32* @NK_KEY_UP, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @GLFW_KEY_UP, align 4
  %68 = call i64 @glfwGetKey(i32* %66, i32 %67)
  %69 = load i64, i64* @GLFW_PRESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @nk_input_key(%struct.nk_context* %64, i32 %65, i32 %71)
  %73 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %74 = load i32, i32* @NK_KEY_DOWN, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @GLFW_KEY_DOWN, align 4
  %77 = call i64 @glfwGetKey(i32* %75, i32 %76)
  %78 = load i64, i64* @GLFW_PRESS, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @nk_input_key(%struct.nk_context* %73, i32 %74, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @GLFW_KEY_LEFT_CONTROL, align 4
  %84 = call i64 @glfwGetKey(i32* %82, i32 %83)
  %85 = load i64, i64* @GLFW_PRESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %2
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @GLFW_KEY_RIGHT_CONTROL, align 4
  %90 = call i64 @glfwGetKey(i32* %88, i32 %89)
  %91 = load i64, i64* @GLFW_PRESS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %133

93:                                               ; preds = %87, %2
  %94 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %95 = load i32, i32* @NK_KEY_COPY, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @GLFW_KEY_C, align 4
  %98 = call i64 @glfwGetKey(i32* %96, i32 %97)
  %99 = load i64, i64* @GLFW_PRESS, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @nk_input_key(%struct.nk_context* %94, i32 %95, i32 %101)
  %103 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %104 = load i32, i32* @NK_KEY_PASTE, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @GLFW_KEY_P, align 4
  %107 = call i64 @glfwGetKey(i32* %105, i32 %106)
  %108 = load i64, i64* @GLFW_PRESS, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @nk_input_key(%struct.nk_context* %103, i32 %104, i32 %110)
  %112 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %113 = load i32, i32* @NK_KEY_CUT, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @GLFW_KEY_X, align 4
  %116 = call i64 @glfwGetKey(i32* %114, i32 %115)
  %117 = load i64, i64* @GLFW_PRESS, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @nk_input_key(%struct.nk_context* %112, i32 %113, i32 %119)
  %121 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %122 = load i32, i32* @NK_KEY_CUT, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @GLFW_KEY_E, align 4
  %125 = call i64 @glfwGetKey(i32* %123, i32 %124)
  %126 = load i64, i64* @GLFW_PRESS, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @nk_input_key(%struct.nk_context* %121, i32 %122, i32 %128)
  %130 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %131 = load i32, i32* @NK_KEY_SHIFT, align 4
  %132 = call i32 @nk_input_key(%struct.nk_context* %130, i32 %131, i32 1)
  br label %146

133:                                              ; preds = %87
  %134 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %135 = load i32, i32* @NK_KEY_COPY, align 4
  %136 = call i32 @nk_input_key(%struct.nk_context* %134, i32 %135, i32 0)
  %137 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %138 = load i32, i32* @NK_KEY_PASTE, align 4
  %139 = call i32 @nk_input_key(%struct.nk_context* %137, i32 %138, i32 0)
  %140 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %141 = load i32, i32* @NK_KEY_CUT, align 4
  %142 = call i32 @nk_input_key(%struct.nk_context* %140, i32 %141, i32 0)
  %143 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %144 = load i32, i32* @NK_KEY_SHIFT, align 4
  %145 = call i32 @nk_input_key(%struct.nk_context* %143, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %133, %93
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @glfwGetCursorPos(i32* %147, double* %5, double* %6)
  %149 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %150 = load double, double* %5, align 8
  %151 = fptosi double %150 to i32
  %152 = load double, double* %6, align 8
  %153 = fptosi double %152 to i32
  %154 = call i32 @nk_input_motion(%struct.nk_context* %149, i32 %151, i32 %153)
  %155 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %156 = load i32, i32* @NK_BUTTON_LEFT, align 4
  %157 = load double, double* %5, align 8
  %158 = fptosi double %157 to i32
  %159 = load double, double* %6, align 8
  %160 = fptosi double %159 to i32
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* @GLFW_MOUSE_BUTTON_LEFT, align 4
  %163 = call i64 @glfwGetMouseButton(i32* %161, i32 %162)
  %164 = load i64, i64* @GLFW_PRESS, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @nk_input_button(%struct.nk_context* %155, i32 %156, i32 %158, i32 %160, i32 %166)
  %168 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %169 = load i32, i32* @NK_BUTTON_MIDDLE, align 4
  %170 = load double, double* %5, align 8
  %171 = fptosi double %170 to i32
  %172 = load double, double* %6, align 8
  %173 = fptosi double %172 to i32
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* @GLFW_MOUSE_BUTTON_MIDDLE, align 4
  %176 = call i64 @glfwGetMouseButton(i32* %174, i32 %175)
  %177 = load i64, i64* @GLFW_PRESS, align 8
  %178 = icmp eq i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @nk_input_button(%struct.nk_context* %168, i32 %169, i32 %171, i32 %173, i32 %179)
  %181 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %182 = load i32, i32* @NK_BUTTON_RIGHT, align 4
  %183 = load double, double* %5, align 8
  %184 = fptosi double %183 to i32
  %185 = load double, double* %6, align 8
  %186 = fptosi double %185 to i32
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* @GLFW_MOUSE_BUTTON_RIGHT, align 4
  %189 = call i64 @glfwGetMouseButton(i32* %187, i32 %188)
  %190 = load i64, i64* @GLFW_PRESS, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @nk_input_button(%struct.nk_context* %181, i32 %182, i32 %184, i32 %186, i32 %192)
  %194 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %195 = call i32 @nk_input_end(%struct.nk_context* %194)
  ret void
}

declare dso_local i32 @nk_input_begin(%struct.nk_context*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i32 @nk_input_key(%struct.nk_context*, i32, i32) #1

declare dso_local i64 @glfwGetKey(i32*, i32) #1

declare dso_local i32 @glfwGetCursorPos(i32*, double*, double*) #1

declare dso_local i32 @nk_input_motion(%struct.nk_context*, i32, i32) #1

declare dso_local i32 @nk_input_button(%struct.nk_context*, i32, i32, i32, i32) #1

declare dso_local i64 @glfwGetMouseButton(i32*, i32) #1

declare dso_local i32 @nk_input_end(%struct.nk_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
