; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_json_loads.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_json_loads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong arguments\00", align 1
@string_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @json_loads(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @jsonp_error_init(i32* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @error_set(i32* %16, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %34

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @string_get, align 4
  %23 = load i64, i64* %6, align 8
  %24 = bitcast %struct.TYPE_2__* %10 to i8*
  %25 = call i64 @lex_init(i32* %8, i32 %22, i64 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %34

28:                                               ; preds = %18
  %29 = load i64, i64* %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @parse_json(i32* %8, i64 %29, i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = call i32 @lex_close(i32* %8)
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %28, %27, %15
  %35 = load i32*, i32** %4, align 8
  ret i32* %35
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
