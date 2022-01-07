; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_json_load_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_json_load_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"<callback>\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong arguments\00", align 1
@callback_get = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @json_load_callback(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = call i32 @memset(%struct.TYPE_4__* %12, i32 0, i32 16)
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32* %14, i32** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @jsonp_error_init(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @error_set(i32* %23, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %38

25:                                               ; preds = %4
  %26 = load i64, i64* @callback_get, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @lex_init(i32* %10, i32 %27, i64 %28, %struct.TYPE_4__* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32* null, i32** %5, align 8
  br label %38

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @parse_json(i32* %10, i64 %33, i32* %34)
  store i32* %35, i32** %11, align 8
  %36 = call i32 @lex_close(i32* %10)
  %37 = load i32*, i32** %11, align 8
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %32, %31, %22
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @jsonp_error_init(i32*, i8*) #1

declare dso_local i32 @error_set(i32*, i32*, i8*) #1

declare dso_local i64 @lex_init(i32*, i32, i64, %struct.TYPE_4__*) #1

declare dso_local i32* @parse_json(i32*, i64, i32*) #1

declare dso_local i32 @lex_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
