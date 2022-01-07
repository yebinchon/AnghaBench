; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parser.c_base_yylex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parser.c_base_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@NOT_LA = common dso_local global i32 0, align 4
@NULLS_LA = common dso_local global i32 0, align 4
@WITH_LA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base_yylex(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_7__* @pg_yyget_extra(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i8, i8* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  store i8 %34, i8* %37, align 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %46

40:                                               ; preds = %3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @core_yylex(i32* %42, i32* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %40, %19
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %51 [
    i32 133, label %48
    i32 132, label %49
    i32 128, label %50
  ]

48:                                               ; preds = %46
  store i32 3, i32* %11, align 4
  br label %53

49:                                               ; preds = %46
  store i32 5, i32* %11, align 4
  br label %53

50:                                               ; preds = %46
  store i32 4, i32* %11, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %120

53:                                               ; preds = %50, %49, %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @core_yylex(i32* %78, i32* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  store i8 %94, i8* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  store i8 0, i8* %99, align 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load i32, i32* %9, align 4
  switch i32 %102, label %118 [
    i32 133, label %103
    i32 132, label %108
    i32 128, label %113
  ]

103:                                              ; preds = %53
  %104 = load i32, i32* %10, align 4
  switch i32 %104, label %107 [
    i32 139, label %105
    i32 136, label %105
    i32 134, label %105
    i32 137, label %105
    i32 130, label %105
  ]

105:                                              ; preds = %103, %103, %103, %103, %103
  %106 = load i32, i32* @NOT_LA, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %103, %105
  br label %118

108:                                              ; preds = %53
  %109 = load i32, i32* %10, align 4
  switch i32 %109, label %112 [
    i32 138, label %110
    i32 135, label %110
  ]

110:                                              ; preds = %108, %108
  %111 = load i32, i32* @NULLS_LA, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %108, %110
  br label %118

113:                                              ; preds = %53
  %114 = load i32, i32* %10, align 4
  switch i32 %114, label %117 [
    i32 129, label %115
    i32 131, label %115
  ]

115:                                              ; preds = %113, %113
  %116 = load i32, i32* @WITH_LA, align 4
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %113, %115
  br label %118

118:                                              ; preds = %53, %117, %112, %107
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %51
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_7__* @pg_yyget_extra(i32) #1

declare dso_local i32 @core_yylex(i32*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
