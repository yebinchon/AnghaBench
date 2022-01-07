; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_parse_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_parse_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i8*, i32)* }

@JSON_PARSE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @parse_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_scalar(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i32, i8*, i32)*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i8* null, i8** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %10, align 8
  store i32 (i32, i8*, i32)* %11, i32 (i32, i8*, i32)** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lex_peek(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %6, align 8
  %15 = icmp eq i32 (i32, i8*, i32)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi i8** [ null, %16 ], [ %5, %17 ]
  store i8** %19, i8*** %7, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %41 [
    i32 128, label %21
    i32 132, label %25
    i32 131, label %29
    i32 130, label %33
    i32 129, label %37
  ]

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = load i8**, i8*** %7, align 8
  %24 = call i32 @lex_accept(i32* %22, i32 128, i8** %23)
  br label %45

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = call i32 @lex_accept(i32* %26, i32 132, i8** %27)
  br label %45

29:                                               ; preds = %18
  %30 = load i32*, i32** %3, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = call i32 @lex_accept(i32* %30, i32 131, i8** %31)
  br label %45

33:                                               ; preds = %18
  %34 = load i32*, i32** %3, align 8
  %35 = load i8**, i8*** %7, align 8
  %36 = call i32 @lex_accept(i32* %34, i32 130, i8** %35)
  br label %45

37:                                               ; preds = %18
  %38 = load i32*, i32** %3, align 8
  %39 = load i8**, i8*** %7, align 8
  %40 = call i32 @lex_accept(i32* %38, i32 129, i8** %39)
  br label %45

41:                                               ; preds = %18
  %42 = load i32, i32* @JSON_PARSE_VALUE, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @report_parse_error(i32 %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21
  %46 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %6, align 8
  %47 = icmp ne i32 (i32, i8*, i32)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %6, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 %49(i32 %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @lex_peek(i32*) #1

declare dso_local i32 @lex_accept(i32*, i32, i8**) #1

declare dso_local i32 @report_parse_error(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
