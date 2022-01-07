; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompileLocationPathPattern.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompileLocationPathPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double }

@SKIP_BLANKS = common dso_local global i32 0, align 4
@CUR = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4
@XSLT_OP_ROOT = common dso_local global i32 0, align 4
@XSLT_OP_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"xsltCompileLocationPathPattern : Name expected\0A\00", align 1
@XSLT_OP_ANCESTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @xsltCompileLocationPathPattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltCompileLocationPathPattern(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SKIP_BLANKS, align 4
  %7 = load i8, i8* @CUR, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 47
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = call signext i8 @NXT(i32 1)
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* @NEXT, align 4
  %16 = load i32, i32* @NEXT, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store double 5.000000e-01, double* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @xsltCompileRelativePathPattern(%struct.TYPE_8__* %21, i32* null, i32 %22)
  br label %130

24:                                               ; preds = %10, %2
  %25 = load i8, i8* @CUR, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32, i32* @NEXT, align 4
  %30 = load i32, i32* @SKIP_BLANKS, align 4
  %31 = load i32, i32* @XSLT_OP_ROOT, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @PUSH(i32 %31, i32* null, i32* null, i32 %32)
  %34 = load i8, i8* @CUR, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load i8, i8* @CUR, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 124
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* @XSLT_OP_PARENT, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @PUSH(i32 %42, i32* null, i32* null, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @xsltCompileRelativePathPattern(%struct.TYPE_8__* %45, i32* null, i32 %46)
  br label %48

48:                                               ; preds = %41, %37, %28
  br label %129

49:                                               ; preds = %24
  %50 = load i8, i8* @CUR, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 42
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @xsltCompileRelativePathPattern(%struct.TYPE_8__* %54, i32* null, i32 %55)
  br label %128

57:                                               ; preds = %49
  %58 = load i8, i8* @CUR, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 64
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @xsltCompileRelativePathPattern(%struct.TYPE_8__* %62, i32* null, i32 %63)
  br label %127

65:                                               ; preds = %57
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = call i32* @xsltScanNCName(%struct.TYPE_8__* %66)
  store i32* %67, i32** %5, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %132

74:                                               ; preds = %65
  %75 = load i32, i32* @SKIP_BLANKS, align 4
  %76 = load i8, i8* @CUR, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 40
  br i1 %78, label %79, label %122

79:                                               ; preds = %74
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @xmlXPathIsNodeType(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %122, label %83

83:                                               ; preds = %79
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @xsltCompileIdKeyPattern(%struct.TYPE_8__* %84, i32* %85, i32 1, i32 %86, i32 0)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @xmlFree(i32* %88)
  store i32* null, i32** %5, align 8
  %90 = load i8, i8* @CUR, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 47
  br i1 %92, label %93, label %107

93:                                               ; preds = %83
  %94 = call signext i8 @NXT(i32 1)
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 47
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* @XSLT_OP_ANCESTOR, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @PUSH(i32 %98, i32* null, i32* null, i32 %99)
  %101 = load i32, i32* @NEXT, align 4
  %102 = load i32, i32* @NEXT, align 4
  %103 = load i32, i32* @SKIP_BLANKS, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @xsltCompileRelativePathPattern(%struct.TYPE_8__* %104, i32* null, i32 %105)
  br label %121

107:                                              ; preds = %93, %83
  %108 = load i8, i8* @CUR, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i32, i32* @XSLT_OP_PARENT, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @PUSH(i32 %112, i32* null, i32* null, i32 %113)
  %115 = load i32, i32* @NEXT, align 4
  %116 = load i32, i32* @SKIP_BLANKS, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @xsltCompileRelativePathPattern(%struct.TYPE_8__* %117, i32* null, i32 %118)
  br label %120

120:                                              ; preds = %111, %107
  br label %121

121:                                              ; preds = %120, %97
  br label %132

122:                                              ; preds = %79, %74
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @xsltCompileRelativePathPattern(%struct.TYPE_8__* %123, i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %61
  br label %128

128:                                              ; preds = %127, %53
  br label %129

129:                                              ; preds = %128, %48
  br label %130

130:                                              ; preds = %129, %14
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %121, %70
  ret void
}

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @xsltCompileRelativePathPattern(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @PUSH(i32, i32*, i32*, i32) #1

declare dso_local i32* @xsltScanNCName(%struct.TYPE_8__*) #1

declare dso_local i32 @xsltTransformError(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @xmlXPathIsNodeType(i32*) #1

declare dso_local i32 @xsltCompileIdKeyPattern(%struct.TYPE_8__*, i32*, i32, i32, i32) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
