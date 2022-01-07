; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parser_iter.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parser_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }
%struct.lexeme = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.lwan_var_descriptor = type { i32 }

@LEXEME_IDENTIFIER = common dso_local global i64 0, align 8
@FLAGS_NEGATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown variable: %.*s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Couldn't find descriptor for variable `%.*s'\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Could not push symbol table (out of memory)\00", align 1
@ACTION_START_ITER = common dso_local global i32 0, align 4
@FLAGS_NO_FREE = common dso_local global i32 0, align 4
@parser_right_meta = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, %struct.lexeme*)* @parser_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parser_iter(%struct.parser* %0, %struct.lexeme* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.lexeme*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lwan_var_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.lexeme* %1, %struct.lexeme** %5, align 8
  %9 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %10 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LEXEME_IDENTIFIER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %2
  %15 = load %struct.parser*, %struct.parser** %4, align 8
  %16 = getelementptr inbounds %struct.parser, %struct.parser* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FLAGS_NEGATE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.parser*, %struct.parser** %4, align 8
  %21 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %22 = call %struct.lwan_var_descriptor* @symtab_lookup_lexeme(%struct.parser* %20, %struct.lexeme* %21)
  store %struct.lwan_var_descriptor* %22, %struct.lwan_var_descriptor** %7, align 8
  %23 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %7, align 8
  %24 = icmp ne %struct.lwan_var_descriptor* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %14
  %26 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %27 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %28 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %33 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* (%struct.lexeme*, i8*, ...) @error_lexeme(%struct.lexeme* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  store i8* %36, i8** %3, align 8
  br label %86

37:                                               ; preds = %14
  %38 = load %struct.parser*, %struct.parser** %4, align 8
  %39 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %7, align 8
  %40 = getelementptr inbounds %struct.lwan_var_descriptor, %struct.lwan_var_descriptor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @symtab_push(%struct.parser* %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %52 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %53 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %58 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* (%struct.lexeme*, i8*, ...) @error_lexeme(%struct.lexeme* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %60)
  store i8* %61, i8** %3, align 8
  br label %86

62:                                               ; preds = %45
  %63 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %64 = call i8* (%struct.lexeme*, i8*, ...) @error_lexeme(%struct.lexeme* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i8* %64, i8** %3, align 8
  br label %86

65:                                               ; preds = %37
  %66 = load %struct.parser*, %struct.parser** %4, align 8
  %67 = load i32, i32* @ACTION_START_ITER, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @FLAGS_NO_FREE, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %7, align 8
  %72 = call i32 @emit_chunk(%struct.parser* %66, i32 %67, i32 %70, %struct.lwan_var_descriptor* %71)
  %73 = load %struct.parser*, %struct.parser** %4, align 8
  %74 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %75 = call i32 @parser_push_lexeme(%struct.parser* %73, %struct.lexeme* %74)
  %76 = load i32, i32* @FLAGS_NEGATE, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.parser*, %struct.parser** %4, align 8
  %79 = getelementptr inbounds %struct.parser, %struct.parser* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i8*, i8** @parser_right_meta, align 8
  store i8* %82, i8** %3, align 8
  br label %86

83:                                               ; preds = %2
  %84 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %85 = call i8* @unexpected_lexeme(%struct.lexeme* %84)
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %83, %65, %62, %50, %25
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local %struct.lwan_var_descriptor* @symtab_lookup_lexeme(%struct.parser*, %struct.lexeme*) #1

declare dso_local i8* @error_lexeme(%struct.lexeme*, i8*, ...) #1

declare dso_local i32 @symtab_push(%struct.parser*, i32) #1

declare dso_local i32 @emit_chunk(%struct.parser*, i32, i32, %struct.lwan_var_descriptor*) #1

declare dso_local i32 @parser_push_lexeme(%struct.parser*, %struct.lexeme*) #1

declare dso_local i8* @unexpected_lexeme(%struct.lexeme*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
