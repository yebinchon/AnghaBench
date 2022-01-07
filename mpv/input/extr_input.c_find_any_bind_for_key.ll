; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_find_any_bind_for_key.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_find_any_bind_for_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_bind = type { i64, %struct.cmd_bind_section* }
%struct.cmd_bind_section = type { i32, i64 }
%struct.input_ctx = type { i8*, i32, i32, i32, %struct.active_section*, i32 }
%struct.active_section = type { i8*, i32 }

@MP_INPUT_EXCLUSIVE = common dso_local global i32 0, align 4
@MP_INPUT_ON_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_bind* (%struct.input_ctx*, i8*, i32)* @find_any_bind_for_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_bind* @find_any_bind_for_key(%struct.input_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cmd_bind*, align 8
  %5 = alloca %struct.input_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_bind*, align 8
  %10 = alloca %struct.cmd_bind*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.active_section*, align 8
  %13 = alloca %struct.cmd_bind*, align 8
  %14 = alloca %struct.cmd_bind_section*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.cmd_bind* @find_bind_for_key_section(%struct.input_ctx* %18, i8* %19, i32 %20)
  store %struct.cmd_bind* %21, %struct.cmd_bind** %4, align 8
  br label %132

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MP_KEY_DEPENDS_ON_MOUSE_POS(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @MP_KEY_IS_MOUSE_BTN_SINGLE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %35 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.cmd_bind* @find_bind_for_key_section(%struct.input_ctx* %34, i8* %37, i32 %38)
  store %struct.cmd_bind* %39, %struct.cmd_bind** %9, align 8
  %40 = load %struct.cmd_bind*, %struct.cmd_bind** %9, align 8
  %41 = icmp ne %struct.cmd_bind* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load %struct.cmd_bind*, %struct.cmd_bind** %9, align 8
  store %struct.cmd_bind* %43, %struct.cmd_bind** %4, align 8
  br label %132

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %27, %22
  store %struct.cmd_bind* null, %struct.cmd_bind** %10, align 8
  %46 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %127, %45
  %51 = load i32, i32* %11, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %130

53:                                               ; preds = %50
  %54 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %54, i32 0, i32 4
  %56 = load %struct.active_section*, %struct.active_section** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.active_section, %struct.active_section* %56, i64 %58
  store %struct.active_section* %59, %struct.active_section** %12, align 8
  %60 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %61 = load %struct.active_section*, %struct.active_section** %12, align 8
  %62 = getelementptr inbounds %struct.active_section, %struct.active_section* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.cmd_bind* @find_bind_for_key_section(%struct.input_ctx* %60, i8* %63, i32 %64)
  store %struct.cmd_bind* %65, %struct.cmd_bind** %13, align 8
  %66 = load %struct.cmd_bind*, %struct.cmd_bind** %13, align 8
  %67 = icmp ne %struct.cmd_bind* %66, null
  br i1 %67, label %68, label %107

68:                                               ; preds = %53
  %69 = load %struct.cmd_bind*, %struct.cmd_bind** %13, align 8
  %70 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %69, i32 0, i32 1
  %71 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %70, align 8
  store %struct.cmd_bind_section* %71, %struct.cmd_bind_section** %14, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %14, align 8
  %76 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %74
  %80 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %14, align 8
  %81 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %80, i32 0, i32 0
  %82 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @test_rect(i32* %81, i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %79, %68
  %91 = load %struct.cmd_bind*, %struct.cmd_bind** %10, align 8
  %92 = icmp ne %struct.cmd_bind* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.cmd_bind*, %struct.cmd_bind** %10, align 8
  %95 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.cmd_bind*, %struct.cmd_bind** %13, align 8
  %100 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98, %90
  %104 = load %struct.cmd_bind*, %struct.cmd_bind** %13, align 8
  store %struct.cmd_bind* %104, %struct.cmd_bind** %10, align 8
  br label %105

105:                                              ; preds = %103, %98, %93
  br label %106

106:                                              ; preds = %105, %79, %74
  br label %107

107:                                              ; preds = %106, %53
  %108 = load %struct.active_section*, %struct.active_section** %12, align 8
  %109 = getelementptr inbounds %struct.active_section, %struct.active_section* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MP_INPUT_EXCLUSIVE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %130

115:                                              ; preds = %107
  %116 = load %struct.cmd_bind*, %struct.cmd_bind** %10, align 8
  %117 = icmp ne %struct.cmd_bind* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.active_section*, %struct.active_section** %12, align 8
  %120 = getelementptr inbounds %struct.active_section, %struct.active_section* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MP_INPUT_ON_TOP, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %130

126:                                              ; preds = %118, %115
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %11, align 4
  br label %50

130:                                              ; preds = %125, %114, %50
  %131 = load %struct.cmd_bind*, %struct.cmd_bind** %10, align 8
  store %struct.cmd_bind* %131, %struct.cmd_bind** %4, align 8
  br label %132

132:                                              ; preds = %130, %42, %17
  %133 = load %struct.cmd_bind*, %struct.cmd_bind** %4, align 8
  ret %struct.cmd_bind* %133
}

declare dso_local %struct.cmd_bind* @find_bind_for_key_section(%struct.input_ctx*, i8*, i32) #1

declare dso_local i32 @MP_KEY_DEPENDS_ON_MOUSE_POS(i32) #1

declare dso_local i64 @MP_KEY_IS_MOUSE_BTN_SINGLE(i32) #1

declare dso_local i64 @test_rect(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
