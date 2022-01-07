; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_set_mouse_pos_artificial.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_set_mouse_pos_artificial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32, i32, i32, i32, i64, %struct.mp_rect, %struct.mp_rect, i64 }
%struct.mp_rect = type { i32, i32, i32, i32 }
%struct.mp_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"mouse move %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"-> %d/%d\0A\00", align 1
@MP_KEY_MOUSE_MOVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"<internal>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_set_mouse_pos_artificial(%struct.input_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_rect*, align 8
  %8 = alloca %struct.mp_rect*, align 8
  %9 = alloca %struct.mp_cmd*, align 8
  %10 = alloca %struct.mp_cmd*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %12 = call i32 @input_lock(%struct.input_ctx* %11)
  %13 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @MP_TRACE(%struct.input_ctx* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %30 = call i32 @input_unlock(%struct.input_ctx* %29)
  br label %196

31:                                               ; preds = %22, %3
  %32 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %129

36:                                               ; preds = %31
  %37 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %37, i32 0, i32 6
  store %struct.mp_rect* %38, %struct.mp_rect** %7, align 8
  %39 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %39, i32 0, i32 5
  store %struct.mp_rect* %40, %struct.mp_rect** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %43 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %46 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MPCLAMP(i32 %41, i32 %44, i32 %47)
  %49 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %50 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %55 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %58 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MPCLAMP(i32 %53, i32 %56, i32 %59)
  %61 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %62 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %124

69:                                               ; preds = %36
  %70 = load i32, i32* %5, align 4
  %71 = sitofp i32 %70 to double
  %72 = fmul double %71, 1.000000e+00
  %73 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %74 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %77 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %72, %80
  %82 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %83 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %86 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = sitofp i32 %88 to double
  %90 = fmul double %81, %89
  %91 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %92 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sitofp i32 %93 to double
  %95 = fadd double %90, %94
  %96 = fptosi double %95 to i32
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sitofp i32 %97 to double
  %99 = fmul double %98, 1.000000e+00
  %100 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %101 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %104 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = sitofp i32 %106 to double
  %108 = fdiv double %99, %107
  %109 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %110 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %113 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  %116 = sitofp i32 %115 to double
  %117 = fmul double %108, %116
  %118 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %119 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sitofp i32 %120 to double
  %122 = fadd double %117, %121
  %123 = fptosi double %122 to i32
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %69, %36
  %125 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @MP_TRACE(%struct.input_ctx* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %31
  %130 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %131 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %136 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %139 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %141 = call i32 @update_mouse_section(%struct.input_ctx* %140)
  %142 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %143 = load i32, i32* @MP_KEY_MOUSE_MOVE, align 4
  %144 = call %struct.mp_cmd* @get_cmd_from_keys(%struct.input_ctx* %142, i32* null, i32 %143)
  store %struct.mp_cmd* %144, %struct.mp_cmd** %9, align 8
  %145 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %146 = icmp ne %struct.mp_cmd* %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %129
  %148 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %149 = call i32 @bstr0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %150 = call %struct.mp_cmd* @mp_input_parse_cmd(%struct.input_ctx* %148, i32 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store %struct.mp_cmd* %150, %struct.mp_cmd** %9, align 8
  br label %151

151:                                              ; preds = %147, %129
  %152 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %153 = icmp ne %struct.mp_cmd* %152, null
  br i1 %153, label %154, label %193

154:                                              ; preds = %151
  %155 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %156 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %155, i32 0, i32 0
  store i32 1, i32* %156, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %159 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %162 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %164 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %165 = call i64 @should_drop_cmd(%struct.input_ctx* %163, %struct.mp_cmd* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %154
  %168 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %169 = call i32 @talloc_free(%struct.mp_cmd* %168)
  br label %192

170:                                              ; preds = %154
  %171 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %172 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %171, i32 0, i32 2
  %173 = call %struct.mp_cmd* @queue_peek_tail(i32* %172)
  store %struct.mp_cmd* %173, %struct.mp_cmd** %10, align 8
  %174 = load %struct.mp_cmd*, %struct.mp_cmd** %10, align 8
  %175 = icmp ne %struct.mp_cmd* %174, null
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load %struct.mp_cmd*, %struct.mp_cmd** %10, align 8
  %178 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %183 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %182, i32 0, i32 2
  %184 = load %struct.mp_cmd*, %struct.mp_cmd** %10, align 8
  %185 = call i32 @queue_remove(i32* %183, %struct.mp_cmd* %184)
  %186 = load %struct.mp_cmd*, %struct.mp_cmd** %10, align 8
  %187 = call i32 @talloc_free(%struct.mp_cmd* %186)
  br label %188

188:                                              ; preds = %181, %176, %170
  %189 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %190 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %191 = call i32 @mp_input_queue_cmd(%struct.input_ctx* %189, %struct.mp_cmd* %190)
  br label %192

192:                                              ; preds = %188, %167
  br label %193

193:                                              ; preds = %192, %151
  %194 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %195 = call i32 @input_unlock(%struct.input_ctx* %194)
  br label %196

196:                                              ; preds = %193, %28
  ret void
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local i32 @MP_TRACE(%struct.input_ctx*, i8*, i32, i32) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

declare dso_local i32 @MPCLAMP(i32, i32, i32) #1

declare dso_local i32 @update_mouse_section(%struct.input_ctx*) #1

declare dso_local %struct.mp_cmd* @get_cmd_from_keys(%struct.input_ctx*, i32*, i32) #1

declare dso_local %struct.mp_cmd* @mp_input_parse_cmd(%struct.input_ctx*, i32, i8*) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @should_drop_cmd(%struct.input_ctx*, %struct.mp_cmd*) #1

declare dso_local i32 @talloc_free(%struct.mp_cmd*) #1

declare dso_local %struct.mp_cmd* @queue_peek_tail(i32*) #1

declare dso_local i32 @queue_remove(i32*, %struct.mp_cmd*) #1

declare dso_local i32 @mp_input_queue_cmd(%struct.input_ctx*, %struct.mp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
