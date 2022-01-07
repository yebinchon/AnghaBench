; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_parse_object_field.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_parse_object_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)* }

@JSON_TOKEN_STRING = common dso_local global i32 0, align 4
@JSON_PARSE_STRING = common dso_local global i32 0, align 4
@JSON_PARSE_OBJECT_LABEL = common dso_local global i32 0, align 4
@JSON_TOKEN_COLON = common dso_local global i32 0, align 4
@JSON_TOKEN_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @parse_object_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_object_field(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i32, i8*, i32)*, align 8
  %7 = alloca i32 (i32, i8*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i8* null, i8** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %12, align 8
  store i32 (i32, i8*, i32)* %13, i32 (i32, i8*, i32)** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %15, align 8
  store i32 (i32, i8*, i32)* %16, i32 (i32, i8*, i32)** %7, align 8
  store i8** null, i8*** %9, align 8
  %17 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %6, align 8
  %18 = icmp ne i32 (i32, i8*, i32)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %7, align 8
  %21 = icmp ne i32 (i32, i8*, i32)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store i8** %5, i8*** %9, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @JSON_TOKEN_STRING, align 4
  %26 = load i8**, i8*** %9, align 8
  %27 = call i32 @lex_accept(i32* %24, i32 %25, i8** %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @JSON_PARSE_STRING, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @report_parse_error(i32 %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* @JSON_PARSE_OBJECT_LABEL, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @JSON_TOKEN_COLON, align 4
  %37 = call i32 @lex_expect(i32 %34, i32* %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lex_peek(i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @JSON_TOKEN_NULL, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %6, align 8
  %45 = icmp ne i32 (i32, i8*, i32)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %6, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 %47(i32 %50, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %33
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %64 [
    i32 128, label %56
    i32 129, label %60
  ]

56:                                               ; preds = %54
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = call i32 @parse_object(i32* %57, %struct.TYPE_6__* %58)
  br label %68

60:                                               ; preds = %54
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = call i32 @parse_array(i32* %61, %struct.TYPE_6__* %62)
  br label %68

64:                                               ; preds = %54
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = call i32 @parse_scalar(i32* %65, %struct.TYPE_6__* %66)
  br label %68

68:                                               ; preds = %64, %60, %56
  %69 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %7, align 8
  %70 = icmp ne i32 (i32, i8*, i32)* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %7, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 %72(i32 %75, i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @lex_accept(i32*, i32, i8**) #1

declare dso_local i32 @report_parse_error(i32, i32*) #1

declare dso_local i32 @lex_expect(i32, i32*, i32) #1

declare dso_local i32 @lex_peek(i32*) #1

declare dso_local i32 @parse_object(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @parse_array(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @parse_scalar(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
