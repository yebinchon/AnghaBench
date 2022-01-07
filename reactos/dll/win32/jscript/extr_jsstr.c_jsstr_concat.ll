; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_concat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@JSSTR_SHORT_STRING_LENGTH = common dso_local global i32 0, align 4
@JSSTR_MAX_ROPE_DEPTH = common dso_local global i32 0, align 4
@JSSTR_MAX_LENGTH = common dso_local global i32 0, align 4
@JSSTR_ROPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @jsstr_concat(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @jsstr_length(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @jsstr_addref(i32* %18)
  store i32* %19, i32** %3, align 8
  br label %120

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @jsstr_length(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @jsstr_addref(i32* %26)
  store i32* %27, i32** %3, align 8
  br label %120

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* @JSSTR_SHORT_STRING_LENGTH, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %101

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @jsstr_is_rope(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = call %struct.TYPE_5__* @jsstr_as_rope(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %42, %38 ], [ 0, %43 ]
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @jsstr_is_rope(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = call %struct.TYPE_5__* @jsstr_as_rope(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %49
  %56 = phi i32 [ %53, %49 ], [ 0, %54 ]
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @JSSTR_MAX_ROPE_DEPTH, align 4
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* @JSSTR_MAX_LENGTH, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32* null, i32** %3, align 8
  br label %120

74:                                               ; preds = %67
  %75 = call %struct.TYPE_4__* @heap_alloc(i32 24)
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %12, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32* null, i32** %3, align 8
  br label %120

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* @JSSTR_ROPE, align 4
  %86 = call i32 @jsstr_init(i32* %81, i32 %84, i32 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32* @jsstr_addref(i32* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32* %88, i32** %90, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32* @jsstr_addref(i32* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32* %99, i32** %3, align 8
  br label %120

100:                                              ; preds = %62
  br label %101

101:                                              ; preds = %100, %28
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %102, %103
  %105 = call i32* @jsstr_alloc_buf(i32 %104, i32** %9)
  store i32* %105, i32** %8, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  store i32* null, i32** %3, align 8
  br label %120

109:                                              ; preds = %101
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @jsstr_flush(i32* %110, i32* %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @jsstr_flush(i32* %113, i32* %117)
  %119 = load i32*, i32** %8, align 8
  store i32* %119, i32** %3, align 8
  br label %120

120:                                              ; preds = %109, %108, %79, %78, %73, %25, %17
  %121 = load i32*, i32** %3, align 8
  ret i32* %121
}

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32* @jsstr_addref(i32*) #1

declare dso_local i64 @jsstr_is_rope(i32*) #1

declare dso_local %struct.TYPE_5__* @jsstr_as_rope(i32*) #1

declare dso_local %struct.TYPE_4__* @heap_alloc(i32) #1

declare dso_local i32 @jsstr_init(i32*, i32, i32) #1

declare dso_local i32* @jsstr_alloc_buf(i32, i32**) #1

declare dso_local i32 @jsstr_flush(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
