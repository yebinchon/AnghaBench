; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_parse_section.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_parse_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32, i32, i32 }
%struct.lexeme = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.config_line = type { i32, i32, i32 }

@CONFIG_LINE_TYPE_SECTION = common dso_local global i32 0, align 4
@parse_config = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*)* @parse_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_section(%struct.parser* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.parser*, align 8
  %4 = alloca %struct.lexeme*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.config_line, align 4
  store %struct.parser* %0, %struct.parser** %3, align 8
  %7 = load %struct.parser*, %struct.parser** %3, align 8
  %8 = getelementptr inbounds %struct.parser, %struct.parser* %7, i32 0, i32 2
  %9 = call %struct.lexeme* @lexeme_ring_buffer_get_ptr_or_null(i32* %8)
  store %struct.lexeme* %9, %struct.lexeme** %4, align 8
  %10 = icmp ne %struct.lexeme* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %82

12:                                               ; preds = %1
  %13 = load %struct.parser*, %struct.parser** %3, align 8
  %14 = getelementptr inbounds %struct.parser, %struct.parser* %13, i32 0, i32 1
  %15 = load %struct.lexeme*, %struct.lexeme** %4, align 8
  %16 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.lexeme*, %struct.lexeme** %4, align 8
  %20 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @lwan_strbuf_append_str(i32* %14, i32 %18, i64 %22)
  %24 = load %struct.lexeme*, %struct.lexeme** %4, align 8
  %25 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.parser*, %struct.parser** %3, align 8
  %29 = getelementptr inbounds %struct.parser, %struct.parser* %28, i32 0, i32 1
  %30 = call i32 @lwan_strbuf_append_char(i32* %29, i8 signext 0)
  br label %31

31:                                               ; preds = %56, %12
  %32 = load %struct.parser*, %struct.parser** %3, align 8
  %33 = getelementptr inbounds %struct.parser, %struct.parser* %32, i32 0, i32 2
  %34 = call %struct.lexeme* @lexeme_ring_buffer_get_ptr_or_null(i32* %33)
  store %struct.lexeme* %34, %struct.lexeme** %4, align 8
  %35 = icmp ne %struct.lexeme* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.parser*, %struct.parser** %3, align 8
  %38 = getelementptr inbounds %struct.parser, %struct.parser* %37, i32 0, i32 1
  %39 = load %struct.lexeme*, %struct.lexeme** %4, align 8
  %40 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.lexeme*, %struct.lexeme** %4, align 8
  %44 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @lwan_strbuf_append_str(i32* %38, i32 %42, i64 %46)
  %48 = load %struct.parser*, %struct.parser** %3, align 8
  %49 = getelementptr inbounds %struct.parser, %struct.parser* %48, i32 0, i32 2
  %50 = call i32 @lexeme_ring_buffer_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %36
  %53 = load %struct.parser*, %struct.parser** %3, align 8
  %54 = getelementptr inbounds %struct.parser, %struct.parser* %53, i32 0, i32 1
  %55 = call i32 @lwan_strbuf_append_char(i32* %54, i8 signext 32)
  br label %56

56:                                               ; preds = %52, %36
  br label %31

57:                                               ; preds = %31
  %58 = getelementptr inbounds %struct.config_line, %struct.config_line* %6, i32 0, i32 0
  %59 = load %struct.parser*, %struct.parser** %3, align 8
  %60 = getelementptr inbounds %struct.parser, %struct.parser* %59, i32 0, i32 1
  %61 = call i32 @lwan_strbuf_get_buffer(i32* %60)
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %62, %63
  %65 = add i64 %64, 1
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %58, align 4
  %67 = getelementptr inbounds %struct.config_line, %struct.config_line* %6, i32 0, i32 1
  %68 = load %struct.parser*, %struct.parser** %3, align 8
  %69 = getelementptr inbounds %struct.parser, %struct.parser* %68, i32 0, i32 1
  %70 = call i32 @lwan_strbuf_get_buffer(i32* %69)
  store i32 %70, i32* %67, align 4
  %71 = getelementptr inbounds %struct.config_line, %struct.config_line* %6, i32 0, i32 2
  %72 = load i32, i32* @CONFIG_LINE_TYPE_SECTION, align 4
  store i32 %72, i32* %71, align 4
  %73 = load %struct.parser*, %struct.parser** %3, align 8
  %74 = getelementptr inbounds %struct.parser, %struct.parser* %73, i32 0, i32 0
  %75 = call i64 @config_ring_buffer_try_put(i32* %74, %struct.config_line* %6)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %57
  %78 = load i8*, i8** @parse_config, align 8
  br label %80

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i8* [ %78, %77 ], [ null, %79 ]
  store i8* %81, i8** %2, align 8
  br label %82

82:                                               ; preds = %80, %11
  %83 = load i8*, i8** %2, align 8
  ret i8* %83
}

declare dso_local %struct.lexeme* @lexeme_ring_buffer_get_ptr_or_null(i32*) #1

declare dso_local i32 @lwan_strbuf_append_str(i32*, i32, i64) #1

declare dso_local i32 @lwan_strbuf_append_char(i32*, i8 signext) #1

declare dso_local i32 @lexeme_ring_buffer_empty(i32*) #1

declare dso_local i32 @lwan_strbuf_get_buffer(i32*) #1

declare dso_local i64 @config_ring_buffer_try_put(i32*, %struct.config_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
