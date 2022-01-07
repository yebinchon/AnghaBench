; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_json_loadb.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_json_loadb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"<buffer>\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong arguments\00", align 1
@buffer_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @json_loadb(i8* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @jsonp_error_init(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @error_set(i32* %18, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %38

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* @buffer_get, align 4
  %27 = load i64, i64* %8, align 8
  %28 = bitcast %struct.TYPE_2__* %12 to i8*
  %29 = call i64 @lex_init(i32* %10, i32 %26, i64 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32* null, i32** %5, align 8
  br label %38

32:                                               ; preds = %20
  %33 = load i64, i64* %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @parse_json(i32* %10, i64 %33, i32* %34)
  store i32* %35, i32** %11, align 8
  %36 = call i32 @lex_close(i32* %10)
  %37 = load i32*, i32** %11, align 8
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %32, %31, %17
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i32 @jsonp_error_init(i32*, i8*) #1

declare dso_local i32 @error_set(i32*, i32*, i8*) #1

declare dso_local i64 @lex_init(i32*, i32, i64, i8*) #1

declare dso_local i32* @parse_json(i32*, i64, i32*) #1

declare dso_local i32 @lex_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
