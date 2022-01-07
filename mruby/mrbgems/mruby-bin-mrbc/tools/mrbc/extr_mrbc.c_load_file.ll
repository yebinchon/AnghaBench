; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-mrbc/tools/mrbc/extr_mrbc.c_load_file.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-mrbc/tools/mrbc/extr_mrbc.c_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrbc_args = type { i8**, i64, i8*, i64, i64 }
%struct.TYPE_7__ = type { i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: cannot open program file. (%s)\0A\00", align 1
@partial_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.mrbc_args*)* @load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_file(i32* %0, %struct.mrbc_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mrbc_args*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.mrbc_args* %1, %struct.mrbc_args** %5, align 8
  %11 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %12 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %15 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call %struct.TYPE_7__* @mrbc_context_new(i32* %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %6, align 8
  %22 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %23 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i8*, i8** @TRUE, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32*, i32** @stdin, align 8
  store i32* %46, i32** %9, align 8
  br label %61

47:                                               ; preds = %39, %30
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %50, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* @stderr, align 4
  %54 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %55 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %57)
  %59 = call i32 (...) @mrb_nil_value()
  store i32 %59, i32* %3, align 4
  br label %106

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @mrbc_filename(i32* %62, %struct.TYPE_7__* %63, i8* %64)
  %66 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %67 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %71 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %74 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %61
  %78 = load i8*, i8** @FALSE, align 8
  store i8* %78, i8** %10, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = load i32, i32* @partial_hook, align 4
  %82 = load %struct.mrbc_args*, %struct.mrbc_args** %5, align 8
  %83 = bitcast %struct.mrbc_args* %82 to i8*
  %84 = call i32 @mrbc_partial_hook(i32* %79, %struct.TYPE_7__* %80, i32 %81, i8* %83)
  br label %85

85:                                               ; preds = %77, %61
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = call i32 @mrb_load_file_cxt(i32* %86, i32* %87, %struct.TYPE_7__* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @fclose(i32* %93)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = call i32 @mrbc_context_free(i32* %96, %struct.TYPE_7__* %97)
  %99 = load i32, i32* %7, align 4
  %100 = call i64 @mrb_undef_p(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 (...) @mrb_nil_value()
  store i32 %103, i32* %3, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %102, %52
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_7__* @mrbc_context_new(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrbc_filename(i32*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mrbc_partial_hook(i32*, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @mrb_load_file_cxt(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @mrbc_context_free(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @mrb_undef_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
