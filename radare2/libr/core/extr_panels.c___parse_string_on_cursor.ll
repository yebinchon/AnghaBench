; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___parse_string_on_cursor.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___parse_string_on_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@UT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__parse_string_on_cursor(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @UT64_MAX, align 4
  store i32 %19, i32* %4, align 4
  br label %103

20:                                               ; preds = %3
  %21 = call i32* @r_strbuf_new(i32* null)
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %45, %20
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @R_STR_ISNOTEMPTY(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  br label %27

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %96, %48
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @R_STR_ISNOTEMPTY(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i64 @R_STR_ISNOTEMPTY(i8* %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ false, %49 ], [ %57, %53 ]
  br i1 %59, label %60, label %99

60:                                               ; preds = %58
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 48
  br i1 %64, label %65, label %96

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 120
  br i1 %70, label %71, label %96

71:                                               ; preds = %65
  %72 = load i32*, i32** %8, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @r_strbuf_append_n(i32* %72, i8* %73, i32 2)
  br label %75

75:                                               ; preds = %80, %71
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 32
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32*, i32** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @r_strbuf_append_n(i32* %81, i8* %82, i32 1)
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  br label %75

86:                                               ; preds = %75
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @r_strbuf_get(i32* %90)
  %92 = call i32 @r_num_math(i32 %89, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @r_strbuf_free(i32* %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %103

96:                                               ; preds = %65, %60
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  br label %49

99:                                               ; preds = %58
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @r_strbuf_free(i32* %100)
  %102 = load i32, i32* @UT64_MAX, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %86, %18
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32* @r_strbuf_new(i32*) #1

declare dso_local i64 @R_STR_ISNOTEMPTY(i8*) #1

declare dso_local i32 @r_strbuf_append_n(i32*, i8*, i32) #1

declare dso_local i32 @r_num_math(i32, i32) #1

declare dso_local i32 @r_strbuf_get(i32*) #1

declare dso_local i32 @r_strbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
