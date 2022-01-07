; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_d3d9_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_d3d9_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BWRITERSPR_TEMP = common dso_local global i64 0, align 8
@D3DSPR_TEMP = common dso_local global i64 0, align 8
@BWRITERSPR_INPUT = common dso_local global i64 0, align 8
@D3DSPR_INPUT = common dso_local global i64 0, align 8
@BWRITERSPR_CONST = common dso_local global i64 0, align 8
@D3DSPR_CONST = common dso_local global i64 0, align 8
@BWRITERSPR_ADDR = common dso_local global i64 0, align 8
@D3DSPR_ADDR = common dso_local global i64 0, align 8
@BWRITERSPR_TEXTURE = common dso_local global i64 0, align 8
@D3DSPR_TEXTURE = common dso_local global i64 0, align 8
@BWRITERSPR_RASTOUT = common dso_local global i64 0, align 8
@D3DSPR_RASTOUT = common dso_local global i64 0, align 8
@BWRITERSPR_ATTROUT = common dso_local global i64 0, align 8
@D3DSPR_ATTROUT = common dso_local global i64 0, align 8
@BWRITERSPR_TEXCRDOUT = common dso_local global i64 0, align 8
@D3DSPR_TEXCRDOUT = common dso_local global i64 0, align 8
@BWRITERSPR_OUTPUT = common dso_local global i64 0, align 8
@D3DSPR_OUTPUT = common dso_local global i64 0, align 8
@BWRITERSPR_CONSTINT = common dso_local global i64 0, align 8
@D3DSPR_CONSTINT = common dso_local global i64 0, align 8
@BWRITERSPR_COLOROUT = common dso_local global i64 0, align 8
@D3DSPR_COLOROUT = common dso_local global i64 0, align 8
@BWRITERSPR_DEPTHOUT = common dso_local global i64 0, align 8
@D3DSPR_DEPTHOUT = common dso_local global i64 0, align 8
@BWRITERSPR_SAMPLER = common dso_local global i64 0, align 8
@D3DSPR_SAMPLER = common dso_local global i64 0, align 8
@BWRITERSPR_CONSTBOOL = common dso_local global i64 0, align 8
@D3DSPR_CONSTBOOL = common dso_local global i64 0, align 8
@BWRITERSPR_LOOP = common dso_local global i64 0, align 8
@D3DSPR_LOOP = common dso_local global i64 0, align 8
@BWRITERSPR_MISCTYPE = common dso_local global i64 0, align 8
@D3DSPR_MISCTYPE = common dso_local global i64 0, align 8
@BWRITERSPR_LABEL = common dso_local global i64 0, align 8
@D3DSPR_LABEL = common dso_local global i64 0, align 8
@BWRITERSPR_PREDICATE = common dso_local global i64 0, align 8
@D3DSPR_PREDICATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unexpected BWRITERSPR %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @d3d9_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3d9_register(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @BWRITERSPR_TEMP, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* @D3DSPR_TEMP, align 8
  store i64 %8, i64* %2, align 8
  br label %114

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @BWRITERSPR_INPUT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @D3DSPR_INPUT, align 8
  store i64 %14, i64* %2, align 8
  br label %114

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @BWRITERSPR_CONST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @D3DSPR_CONST, align 8
  store i64 %20, i64* %2, align 8
  br label %114

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @BWRITERSPR_ADDR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @D3DSPR_ADDR, align 8
  store i64 %26, i64* %2, align 8
  br label %114

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @BWRITERSPR_TEXTURE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @D3DSPR_TEXTURE, align 8
  store i64 %32, i64* %2, align 8
  br label %114

33:                                               ; preds = %27
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @BWRITERSPR_RASTOUT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @D3DSPR_RASTOUT, align 8
  store i64 %38, i64* %2, align 8
  br label %114

39:                                               ; preds = %33
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @BWRITERSPR_ATTROUT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @D3DSPR_ATTROUT, align 8
  store i64 %44, i64* %2, align 8
  br label %114

45:                                               ; preds = %39
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @BWRITERSPR_TEXCRDOUT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @D3DSPR_TEXCRDOUT, align 8
  store i64 %50, i64* %2, align 8
  br label %114

51:                                               ; preds = %45
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @BWRITERSPR_OUTPUT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @D3DSPR_OUTPUT, align 8
  store i64 %56, i64* %2, align 8
  br label %114

57:                                               ; preds = %51
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @BWRITERSPR_CONSTINT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @D3DSPR_CONSTINT, align 8
  store i64 %62, i64* %2, align 8
  br label %114

63:                                               ; preds = %57
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @BWRITERSPR_COLOROUT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i64, i64* @D3DSPR_COLOROUT, align 8
  store i64 %68, i64* %2, align 8
  br label %114

69:                                               ; preds = %63
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @BWRITERSPR_DEPTHOUT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* @D3DSPR_DEPTHOUT, align 8
  store i64 %74, i64* %2, align 8
  br label %114

75:                                               ; preds = %69
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @BWRITERSPR_SAMPLER, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* @D3DSPR_SAMPLER, align 8
  store i64 %80, i64* %2, align 8
  br label %114

81:                                               ; preds = %75
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @BWRITERSPR_CONSTBOOL, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @D3DSPR_CONSTBOOL, align 8
  store i64 %86, i64* %2, align 8
  br label %114

87:                                               ; preds = %81
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* @BWRITERSPR_LOOP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i64, i64* @D3DSPR_LOOP, align 8
  store i64 %92, i64* %2, align 8
  br label %114

93:                                               ; preds = %87
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @BWRITERSPR_MISCTYPE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i64, i64* @D3DSPR_MISCTYPE, align 8
  store i64 %98, i64* %2, align 8
  br label %114

99:                                               ; preds = %93
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @BWRITERSPR_LABEL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* @D3DSPR_LABEL, align 8
  store i64 %104, i64* %2, align 8
  br label %114

105:                                              ; preds = %99
  %106 = load i64, i64* %3, align 8
  %107 = load i64, i64* @BWRITERSPR_PREDICATE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i64, i64* @D3DSPR_PREDICATE, align 8
  store i64 %110, i64* %2, align 8
  br label %114

111:                                              ; preds = %105
  %112 = load i64, i64* %3, align 8
  %113 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %112)
  store i64 4294967295, i64* %2, align 8
  br label %114

114:                                              ; preds = %111, %109, %103, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %115 = load i64, i64* %2, align 8
  ret i64 %115
}

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
