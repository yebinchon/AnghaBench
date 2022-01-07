; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_addew.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_addew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.cf_token = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dstr = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.cf_token*, i8*, i32, i8*, i8*, i8*)* @cf_addew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_addew(%struct.cf_preprocessor* %0, %struct.cf_token* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.cf_preprocessor*, align 8
  %9 = alloca %struct.cf_token*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dstr, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %8, align 8
  store %struct.cf_token* %1, %struct.cf_token** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %8, align 8
  %19 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %20 = call i32 @cf_gettokenoffset(%struct.cf_preprocessor* %18, %struct.cf_token* %19, i32* %15, i32* %16)
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %7
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %14, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %8, align 8
  %31 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %34 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @error_data_add(i32 %32, i32 %37, i32 %38, i32 %39, i8* %40, i32 %41)
  br label %65

43:                                               ; preds = %26, %23, %7
  %44 = call i32 @dstr_init(%struct.dstr* %17)
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @dstr_safe_printf(%struct.dstr* %17, i8* %45, i8* %46, i8* %47, i8* %48, i32* null)
  %50 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %8, align 8
  %51 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %54 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = getelementptr inbounds %struct.dstr, %struct.dstr* %17, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @error_data_add(i32 %52, i32 %57, i32 %58, i32 %59, i8* %61, i32 %62)
  %64 = call i32 @dstr_free(%struct.dstr* %17)
  br label %65

65:                                               ; preds = %43, %29
  ret void
}

declare dso_local i32 @cf_gettokenoffset(%struct.cf_preprocessor*, %struct.cf_token*, i32*, i32*) #1

declare dso_local i32 @error_data_add(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @dstr_safe_printf(%struct.dstr*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
