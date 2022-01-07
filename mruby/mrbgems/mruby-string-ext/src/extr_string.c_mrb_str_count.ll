; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_count.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_pattern = type { i32 }

@STATIC_TR_PATTERN = common dso_local global %struct.tr_pattern zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_count(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tr_pattern, align 4
  %11 = alloca [32 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 (...) @mrb_nil_value()
  store i32 %12, i32* %5, align 4
  store i64 0, i64* %9, align 8
  %13 = bitcast %struct.tr_pattern* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.tr_pattern* @STATIC_TR_PATTERN to i8*), i64 4, i1 false)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %5)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @tr_parse_pattern(i32* %16, %struct.tr_pattern* %10, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %22 = call i32 @tr_compile_pattern(%struct.tr_pattern* %10, i32 %20, i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @tr_free_pattern(i32* %23, %struct.tr_pattern* %10)
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @RSTRING_PTR(i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @RSTRING_LEN(i32 %27)
  store i64 %28, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %45, %2
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @tr_bitmap_detect(i32* %34, i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %29

48:                                               ; preds = %29
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @mrb_fixnum_value(i64 %49)
  ret i32 %50
}

declare dso_local i32 @mrb_nil_value(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @tr_parse_pattern(i32*, %struct.tr_pattern*, i32, i32) #1

declare dso_local i32 @tr_compile_pattern(%struct.tr_pattern*, i32, i32*) #1

declare dso_local i32 @tr_free_pattern(i32*, %struct.tr_pattern*) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i64 @tr_bitmap_detect(i32*, i8 signext) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
