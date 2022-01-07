; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_parse_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i32 }
%struct.lexer = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@CONFIG_FILENOTFOUND = common dso_local global i32 0, align 4
@CONFIG_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.darray*, i8*, i32)* @config_parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_parse_file(%struct.darray* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.darray*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lexer, align 4
  %10 = alloca i32*, align 8
  store %struct.darray* %0, %struct.darray** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32* @os_fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @os_fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %10, align 8
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @CONFIG_FILENOTFOUND, align 4
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %21
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @os_fread_utf8(i32* %27, i8** %8)
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @CONFIG_SUCCESS, align 4
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %26
  %36 = call i32 @lexer_init(%struct.lexer* %9)
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @lexer_start_move(%struct.lexer* %9, i8* %37)
  %39 = load %struct.darray*, %struct.darray** %5, align 8
  %40 = call i32 @parse_config_data(%struct.darray* %39, %struct.lexer* %9)
  %41 = call i32 @lexer_free(%struct.lexer* %9)
  %42 = load i32, i32* @CONFIG_SUCCESS, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %33, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32* @os_fopen(i8*, i8*) #1

declare dso_local i32 @os_fread_utf8(i32*, i8**) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @lexer_init(%struct.lexer*) #1

declare dso_local i32 @lexer_start_move(%struct.lexer*, i8*) #1

declare dso_local i32 @parse_config_data(%struct.darray*, %struct.lexer*) #1

declare dso_local i32 @lexer_free(%struct.lexer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
