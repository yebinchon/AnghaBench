; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompileRelativePathPattern.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompileRelativePathPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SKIP_BLANKS = common dso_local global i32 0, align 4
@CUR = common dso_local global i8 0, align 1
@XSLT_OP_ANCESTOR = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@XSLT_OP_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @xsltCompileRelativePathPattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltCompileRelativePathPattern(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @xsltCompileStepPattern(%struct.TYPE_4__* %7, i32* %8, i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %80

16:                                               ; preds = %3
  %17 = load i32, i32* @SKIP_BLANKS, align 4
  br label %18

18:                                               ; preds = %77, %16
  %19 = load i8, i8* @CUR, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8, i8* @CUR, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 124
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %79

28:                                               ; preds = %26
  %29 = load i8, i8* @CUR, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = call signext i8 @NXT(i32 1)
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* @XSLT_OP_ANCESTOR, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @PUSH(i32 %37, i32* null, i32* null, i32 %38)
  %40 = load i32, i32* @NEXT, align 4
  %41 = load i32, i32* @NEXT, align 4
  %42 = load i32, i32* @SKIP_BLANKS, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @xsltCompileStepPattern(%struct.TYPE_4__* %43, i32* null, i32 %44)
  br label %71

46:                                               ; preds = %32, %28
  %47 = load i8, i8* @CUR, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32, i32* @XSLT_OP_PARENT, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @PUSH(i32 %51, i32* null, i32* null, i32 %52)
  %54 = load i32, i32* @NEXT, align 4
  %55 = load i32, i32* @SKIP_BLANKS, align 4
  %56 = load i8, i8* @CUR, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i8, i8* @CUR, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 124
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = load i32, i32* %6, align 4
  call void @xsltCompileRelativePathPattern(%struct.TYPE_4__* %64, i32* null, i32 %65)
  br label %66

66:                                               ; preds = %63, %59, %50
  br label %70

67:                                               ; preds = %46
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %66
  br label %71

71:                                               ; preds = %70, %36
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @SKIP_BLANKS, align 4
  br label %18

79:                                               ; preds = %26
  br label %80

80:                                               ; preds = %79, %76, %15
  ret void
}

declare dso_local i32 @xsltCompileStepPattern(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @PUSH(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
