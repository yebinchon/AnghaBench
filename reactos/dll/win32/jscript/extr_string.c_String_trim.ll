; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_trim.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"to_flat_string failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32, i32*, i32*)* @String_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_trim(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @jsval_disp(i32 %25)
  %27 = call i32 @to_flat_string(i32* %21, i32 %26, i32** %17, i32** %14)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %19, align 4
  store i32 %34, i32* %7, align 4
  br label %120

35:                                               ; preds = %6
  %36 = load i32*, i32** %17, align 8
  %37 = call i32 @jsstr_length(i32* %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @debugstr_wn(i32* %38, i32 %39)
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %14, align 8
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %18, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %16, align 8
  br label %47

47:                                               ; preds = %59, %35
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = icmp ult i32* %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @iswspace(i32 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i1 [ false, %47 ], [ %55, %51 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %15, align 8
  br label %47

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = icmp ugt i32* %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32*, i32** %16, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 -1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @iswspace(i32 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %68, %63
  %75 = phi i1 [ false, %63 ], [ %73, %68 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32*, i32** %16, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 -1
  store i32* %78, i32** %16, align 8
  br label %63

79:                                               ; preds = %74
  %80 = load i32*, i32** %13, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %116

82:                                               ; preds = %79
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = icmp eq i32* %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32*, i32** %16, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %18, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = icmp eq i32* %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32*, i32** %17, align 8
  %95 = call i32* @jsstr_addref(i32* %94)
  store i32* %95, i32** %20, align 8
  br label %106

96:                                               ; preds = %86, %82
  %97 = load i32*, i32** %15, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i32* @jsstr_alloc_len(i32* %97, i32 %104)
  store i32* %105, i32** %20, align 8
  br label %106

106:                                              ; preds = %96, %93
  %107 = load i32*, i32** %20, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32*, i32** %20, align 8
  %111 = call i32 @jsval_string(i32* %110)
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115, %79
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @jsstr_release(i32* %117)
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %116, %31
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i32 @jsval_disp(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i64 @iswspace(i32) #1

declare dso_local i32* @jsstr_addref(i32*) #1

declare dso_local i32* @jsstr_alloc_len(i32*, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
