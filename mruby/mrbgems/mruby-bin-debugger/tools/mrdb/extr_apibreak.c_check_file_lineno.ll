; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_check_file_lineno.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_check_file_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_irep = type { i64, %struct.mrb_irep**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@MRB_DEBUG_BP_FILE_OK = common dso_local global i64 0, align 8
@MRB_DEBUG_BP_LINENO_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.mrb_irep*, i8*, i64)* @check_file_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_file_lineno(i32* %0, %struct.mrb_irep* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mrb_irep*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.mrb_irep* %1, %struct.mrb_irep** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %16

16:                                               ; preds = %86, %4
  %17 = load i64, i64* %12, align 8
  %18 = load %struct.mrb_irep*, %struct.mrb_irep** %7, align 8
  %19 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %16
  %25 = load %struct.mrb_irep*, %struct.mrb_irep** %7, align 8
  %26 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %10, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @mrb_sym_name_len(i32* %33, i32 %36, i32* null)
  store i8* %37, i8** %15, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strcmp(i8* %38, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %24
  %43 = load i64, i64* @MRB_DEBUG_BP_FILE_OK, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @check_lineno(%struct.TYPE_5__* %44, i64 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @MRB_DEBUG_BP_LINENO_OK, align 8
  %52 = or i64 %50, %51
  store i64 %52, i64* %5, align 8
  br label %91

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %24
  store i64 0, i64* %14, align 8
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i64, i64* %14, align 8
  %57 = load %struct.mrb_irep*, %struct.mrb_irep** %7, align 8
  %58 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.mrb_irep*, %struct.mrb_irep** %7, align 8
  %64 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %63, i32 0, i32 1
  %65 = load %struct.mrb_irep**, %struct.mrb_irep*** %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds %struct.mrb_irep*, %struct.mrb_irep** %65, i64 %66
  %68 = load %struct.mrb_irep*, %struct.mrb_irep** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @check_file_lineno(i32* %62, %struct.mrb_irep* %68, i8* %69, i64 %70)
  %72 = load i64, i64* %11, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @MRB_DEBUG_BP_FILE_OK, align 8
  %76 = load i64, i64* @MRB_DEBUG_BP_LINENO_OK, align 8
  %77 = or i64 %75, %76
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = load i64, i64* %11, align 8
  store i64 %80, i64* %5, align 8
  br label %91

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %14, align 8
  br label %55

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %16

89:                                               ; preds = %16
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %89, %79, %49
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i8* @mrb_sym_name_len(i32*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @check_lineno(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
