; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_define_section.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_define_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }
%struct.cmd_bind_section = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_define_section(%struct.input_ctx* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.input_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cmd_bind_section*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %6
  br label %86

22:                                               ; preds = %16
  %23 = load %struct.input_ctx*, %struct.input_ctx** %7, align 8
  %24 = call i32 @input_lock(%struct.input_ctx* %23)
  %25 = load %struct.input_ctx*, %struct.input_ctx** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @bstr0(i8* %26)
  %28 = call %struct.cmd_bind_section* @get_bind_section(%struct.input_ctx* %25, i32 %27)
  store %struct.cmd_bind_section* %28, %struct.cmd_bind_section** %13, align 8
  %29 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %13, align 8
  %30 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %13, align 8
  %38 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i64 @strcmp(i64 %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %36, %22
  %44 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %13, align 8
  %45 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @strcmp(i64 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %13, align 8
  %51 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @talloc_free(i64 %52)
  %54 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %13, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i64 @talloc_strdup(%struct.cmd_bind_section* %54, i8* %55)
  %57 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %13, align 8
  %58 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %49, %43, %36, %33
  %60 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %13, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @remove_binds(%struct.cmd_bind_section* %60, i32 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.input_ctx*, %struct.input_ctx** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @bstr0(i8* %74)
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @parse_config(%struct.input_ctx* %72, i32 %73, i32 %75, i8* %76, i8* %77)
  br label %83

79:                                               ; preds = %65, %59
  %80 = load %struct.input_ctx*, %struct.input_ctx** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @mp_input_disable_section(%struct.input_ctx* %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %71
  %84 = load %struct.input_ctx*, %struct.input_ctx** %7, align 8
  %85 = call i32 @input_unlock(%struct.input_ctx* %84)
  br label %86

86:                                               ; preds = %83, %21
  ret void
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local %struct.cmd_bind_section* @get_bind_section(%struct.input_ctx*, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @talloc_free(i64) #1

declare dso_local i64 @talloc_strdup(%struct.cmd_bind_section*, i8*) #1

declare dso_local i32 @remove_binds(%struct.cmd_bind_section*, i32) #1

declare dso_local i32 @parse_config(%struct.input_ctx*, i32, i32, i8*, i8*) #1

declare dso_local i32 @mp_input_disable_section(%struct.input_ctx*, i8*) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
