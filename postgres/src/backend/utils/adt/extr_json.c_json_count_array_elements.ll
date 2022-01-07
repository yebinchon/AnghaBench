; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_json_count_array_elements.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_json_count_array_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }

@JSON_PARSE_ARRAY_START = common dso_local global i32 0, align 4
@JSON_TOKEN_ARRAY_START = common dso_local global i64 0, align 8
@JSON_TOKEN_ARRAY_END = common dso_local global i64 0, align 8
@nullSemAction = common dso_local global i32 0, align 4
@JSON_TOKEN_COMMA = common dso_local global i32 0, align 4
@JSON_PARSE_ARRAY_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_count_array_elements(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @memcpy(%struct.TYPE_9__* %3, %struct.TYPE_9__* %5, i32 16)
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @JSON_PARSE_ARRAY_START, align 4
  %12 = load i64, i64* @JSON_TOKEN_ARRAY_START, align 8
  %13 = call i32 @lex_expect(i32 %11, %struct.TYPE_9__* %3, i64 %12)
  %14 = call i64 @lex_peek(%struct.TYPE_9__* %3)
  %15 = load i64, i64* @JSON_TOKEN_ARRAY_END, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = call i32 @parse_array_element(%struct.TYPE_9__* %3, i32* @nullSemAction)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @JSON_TOKEN_COMMA, align 4
  %24 = call i64 @lex_accept(%struct.TYPE_9__* %3, i32 %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %18, label %26

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* @JSON_PARSE_ARRAY_NEXT, align 4
  %29 = load i64, i64* @JSON_TOKEN_ARRAY_END, align 8
  %30 = call i32 @lex_expect(i32 %28, %struct.TYPE_9__* %3, i64 %29)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @lex_expect(i32, %struct.TYPE_9__*, i64) #1

declare dso_local i64 @lex_peek(%struct.TYPE_9__*) #1

declare dso_local i32 @parse_array_element(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @lex_accept(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
