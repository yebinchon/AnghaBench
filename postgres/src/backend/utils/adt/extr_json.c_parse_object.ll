; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_parse_object.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_parse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 (i32)*, i32 (i32)* }

@JSON_PARSE_OBJECT_START = common dso_local global i32 0, align 4
@JSON_TOKEN_OBJECT_START = common dso_local global i32 0, align 4
@JSON_TOKEN_COMMA = common dso_local global i32 0, align 4
@JSON_PARSE_OBJECT_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*)* @parse_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_object(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32 (i32)*, align 8
  %6 = alloca i32 (i32)*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  store i32 (i32)* %10, i32 (i32)** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  store i32 (i32)* %13, i32 (i32)** %6, align 8
  %14 = call i32 (...) @check_stack_depth()
  %15 = load i32 (i32)*, i32 (i32)** %5, align 8
  %16 = icmp ne i32 (i32)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32 (i32)*, i32 (i32)** %5, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @JSON_PARSE_OBJECT_START, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = load i32, i32* @JSON_TOKEN_OBJECT_START, align 4
  %31 = call i32 @lex_expect(i32 %28, %struct.TYPE_12__* %29, i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = call i32 @lex_peek(%struct.TYPE_12__* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %50 [
    i32 128, label %35
    i32 129, label %49
  ]

35:                                               ; preds = %23
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = call i32 @parse_object_field(%struct.TYPE_12__* %36, %struct.TYPE_11__* %37)
  br label %39

39:                                               ; preds = %44, %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = load i32, i32* @JSON_TOKEN_COMMA, align 4
  %42 = call i32 @lex_accept(%struct.TYPE_12__* %40, i32 %41, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = call i32 @parse_object_field(%struct.TYPE_12__* %45, %struct.TYPE_11__* %46)
  br label %39

48:                                               ; preds = %39
  br label %54

49:                                               ; preds = %23
  br label %54

50:                                               ; preds = %23
  %51 = load i32, i32* @JSON_PARSE_OBJECT_START, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call i32 @report_parse_error(i32 %51, %struct.TYPE_12__* %52)
  br label %54

54:                                               ; preds = %50, %49, %48
  %55 = load i32, i32* @JSON_PARSE_OBJECT_NEXT, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = call i32 @lex_expect(i32 %55, %struct.TYPE_12__* %56, i32 129)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load i32 (i32)*, i32 (i32)** %6, align 8
  %63 = icmp ne i32 (i32)* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i32 (i32)*, i32 (i32)** %6, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %65(i32 %68)
  br label %70

70:                                               ; preds = %64, %54
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @lex_expect(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lex_peek(%struct.TYPE_12__*) #1

declare dso_local i32 @parse_object_field(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @lex_accept(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @report_parse_error(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
