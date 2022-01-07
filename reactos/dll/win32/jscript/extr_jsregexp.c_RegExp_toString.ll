; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_RegExp_toString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_RegExp_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JSCLASS_REGEXP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Not a RegExp\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@REG_FOLD = common dso_local global i32 0, align 4
@REG_GLOB = common dso_local global i32 0, align 4
@REG_MULTILINE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @RegExp_toString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegExp_toString(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @JSCLASS_REGEXP, align 4
  %22 = call i32 @is_vclass(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = call i32 @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %26, i32* %7, align 4
  br label %116

27:                                               ; preds = %6
  %28 = load i32*, i32** %9, align 8
  %29 = call %struct.TYPE_5__* @regexp_from_vdisp(i32* %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %14, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @S_OK, align 4
  store i32 %33, i32* %7, align 4
  br label %116

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @jsstr_length(i32 %37)
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %15, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @REG_FOLD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* %15, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %49, %34
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @REG_GLOB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %15, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @REG_MULTILINE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %15, align 4
  %70 = call i32* @jsstr_alloc_buf(i32 %69, i32** %18)
  store i32* %70, i32** %17, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %74, i32* %7, align 4
  br label %116

75:                                               ; preds = %68
  %76 = load i32*, i32** %18, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %18, align 8
  store i32 47, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = call i32 @jsstr_flush(i32 %80, i32* %81)
  %83 = load i32*, i32** %18, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %18, align 8
  %86 = load i32*, i32** %18, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %18, align 8
  store i32 47, i32* %86, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @REG_FOLD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %75
  %93 = load i32*, i32** %18, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %18, align 8
  store i32 105, i32* %93, align 4
  br label %95

95:                                               ; preds = %92, %75
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @REG_GLOB, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32*, i32** %18, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %18, align 8
  store i32 103, i32* %101, align 4
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @REG_MULTILINE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32*, i32** %18, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %18, align 8
  store i32 109, i32* %109, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32*, i32** %17, align 8
  %113 = call i32 @jsval_string(i32* %112)
  %114 = load i32*, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @S_OK, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %111, %73, %32, %24
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @is_vclass(i32*, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local %struct.TYPE_5__* @regexp_from_vdisp(i32*) #1

declare dso_local i32 @jsstr_length(i32) #1

declare dso_local i32* @jsstr_alloc_buf(i32, i32**) #1

declare dso_local i32 @jsstr_flush(i32, i32*) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
