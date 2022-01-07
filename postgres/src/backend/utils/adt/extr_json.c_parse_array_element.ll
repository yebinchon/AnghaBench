; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_parse_array_element.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_parse_array_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i32, i32)*, i32 (i32, i32)* }

@JSON_TOKEN_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @parse_array_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_array_element(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32 (i32, i32)*, align 8
  %6 = alloca i32 (i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32 (i32, i32)*, i32 (i32, i32)** %10, align 8
  store i32 (i32, i32)* %11, i32 (i32, i32)** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  store i32 (i32, i32)* %14, i32 (i32, i32)** %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lex_peek(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @JSON_TOKEN_NULL, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %5, align 8
  %22 = icmp ne i32 (i32, i32)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 %24(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %40 [
    i32 128, label %32
    i32 129, label %36
  ]

32:                                               ; preds = %30
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = call i32 @parse_object(i32* %33, %struct.TYPE_6__* %34)
  br label %44

36:                                               ; preds = %30
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = call i32 @parse_array(i32* %37, %struct.TYPE_6__* %38)
  br label %44

40:                                               ; preds = %30
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = call i32 @parse_scalar(i32* %41, %struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %40, %36, %32
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %6, align 8
  %46 = icmp ne i32 (i32, i32)* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 %48(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %44
  ret void
}

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
