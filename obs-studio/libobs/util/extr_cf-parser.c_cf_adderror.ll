; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.c_cf_adderror.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.c_cf_adderror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dstr = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_adderror(%struct.cf_parser* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.cf_parser*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dstr, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load %struct.cf_parser*, %struct.cf_parser** %7, align 8
  %17 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.cf_parser*, %struct.cf_parser** %7, align 8
  %23 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @lexer_getstroffset(i32* %21, i32 %27, i32* %13, i32* %14)
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %6
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = load %struct.cf_parser*, %struct.cf_parser** %7, align 8
  %39 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %38, i32 0, i32 1
  %40 = load %struct.cf_parser*, %struct.cf_parser** %7, align 8
  %41 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @error_data_add(i32* %39, i32 %46, i32 %47, i32 %48, i8* %49, i32 %50)
  br label %75

52:                                               ; preds = %34, %31, %6
  %53 = call i32 @dstr_init(%struct.dstr* %15)
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @dstr_safe_printf(%struct.dstr* %15, i8* %54, i8* %55, i8* %56, i8* %57, i32* null)
  %59 = load %struct.cf_parser*, %struct.cf_parser** %7, align 8
  %60 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %59, i32 0, i32 1
  %61 = load %struct.cf_parser*, %struct.cf_parser** %7, align 8
  %62 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = getelementptr inbounds %struct.dstr, %struct.dstr* %15, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @error_data_add(i32* %60, i32 %67, i32 %68, i32 %69, i8* %71, i32 %72)
  %74 = call i32 @dstr_free(%struct.dstr* %15)
  br label %75

75:                                               ; preds = %52, %37
  ret void
}

declare dso_local i32 @lexer_getstroffset(i32*, i32, i32*, i32*) #1

declare dso_local i32 @error_data_add(i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @dstr_safe_printf(%struct.dstr*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
