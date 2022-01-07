; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_handle_test.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_handle_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32, %struct.cmd_bind_section* }
%struct.cmd_bind_section = type { i32, %struct.TYPE_2__*, %struct.cmd_bind_section* }
%struct.TYPE_2__ = type { i32*, i64 }

@MP_KEY_CLOSE_WIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"CLOSE_WIN was received. This pseudo key can be remapped too,\0Abut --input-test will always quit when receiving it.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@__const.handle_test.args = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"Key %s is bound to:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%d. \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"(nothing)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"show-text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.input_ctx*, i32)* @handle_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_test(%struct.input_ctx* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.input_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cmd_bind_section*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8*], align 16
  %14 = alloca i32*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MP_KEY_CLOSE_WIN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %20 = call i32 @MP_WARN(%struct.input_ctx* %19, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0))
  %21 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([2 x i8*]* @__const.handle_test.args to i8*), i64 16, i1 false)
  %22 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %26 = call i32* @mp_input_parse_cmd_strv(i32 %24, i8** %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  store i32* %27, i32** %3, align 8
  br label %121

28:                                               ; preds = %2
  %29 = call i8* @mp_input_get_key_combo_name(i32* %5, i32 1)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @talloc_free(i8* %32)
  store i32 0, i32* %10, align 4
  %34 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %34, i32 0, i32 1
  %36 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %35, align 8
  store %struct.cmd_bind_section* %36, %struct.cmd_bind_section** %11, align 8
  br label %37

37:                                               ; preds = %95, %28
  %38 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %11, align 8
  %39 = icmp ne %struct.cmd_bind_section* %38, null
  br i1 %39, label %40, label %99

40:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %91, %40
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %11, align 8
  %44 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %94

47:                                               ; preds = %41
  %48 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %11, align 8
  %49 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %47
  %58 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %11, align 8
  %59 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %77, i8** %9, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  store i8* %81, i8** %9, align 8
  %82 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %83 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %11, align 8
  %84 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = call i32 @append_bind_info(%struct.input_ctx* %82, i8** %9, %struct.TYPE_2__* %88)
  br label %90

90:                                               ; preds = %78, %57, %47
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %41

94:                                               ; preds = %41
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %11, align 8
  %97 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %96, i32 0, i32 2
  %98 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %97, align 8
  store %struct.cmd_bind_section* %98, %struct.cmd_bind_section** %11, align 8
  br label %37

99:                                               ; preds = %37
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %9, align 8
  %104 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %104, i8** %9, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @MP_INFO(%struct.input_ctx* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %109, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  %111 = load i8*, i8** %9, align 8
  store i8* %111, i8** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* null, i8** %112, align 8
  %113 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %114 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %117 = call i32* @mp_input_parse_cmd_strv(i32 %115, i8** %116)
  store i32* %117, i32** %14, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @talloc_free(i8* %118)
  %120 = load i32*, i32** %14, align 8
  store i32* %120, i32** %3, align 8
  br label %121

121:                                              ; preds = %105, %18
  %122 = load i32*, i32** %3, align 8
  ret i32* %122
}

declare dso_local i32 @MP_WARN(%struct.input_ctx*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @mp_input_parse_cmd_strv(i32, i8**) #1

declare dso_local i8* @mp_input_get_key_combo_name(i32*, i32) #1

declare dso_local i8* @talloc_asprintf(i32*, i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, ...) #1

declare dso_local i32 @append_bind_info(%struct.input_ctx*, i8**, %struct.TYPE_2__*) #1

declare dso_local i32 @MP_INFO(%struct.input_ctx*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
