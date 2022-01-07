; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_unused_op.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_unused_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ZEND_VM_OP_NUM = common dso_local global i32 0, align 4
@ZEND_VM_OP_MASK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@ZEND_VM_OP_TRY_CATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" try-catch(%u)\00", align 1
@ZEND_VM_OP_THIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" THIS\00", align 1
@ZEND_VM_OP_NEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" NEXT\00", align 1
@ZEND_VM_OP_CLASS_FETCH = common dso_local global i32 0, align 4
@ZEND_VM_OP_CONSTRUCTOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c" CONSTRUCTOR\00", align 1
@ZEND_VM_OP_CONST_FETCH = common dso_local global i32 0, align 4
@IS_CONSTANT_UNQUALIFIED_IN_NAMESPACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c" (unqualified-in-namespace)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @zend_dump_unused_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_dump_unused_op(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store i32* %0, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @ZEND_VM_OP_NUM, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ZEND_VM_OP_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @stderr, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %93

18:                                               ; preds = %3
  %19 = load i32, i32* @ZEND_VM_OP_TRY_CATCH, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ZEND_VM_OP_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  br label %92

34:                                               ; preds = %18
  %35 = load i32, i32* @ZEND_VM_OP_THIS, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ZEND_VM_OP_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %91

43:                                               ; preds = %34
  %44 = load i32, i32* @ZEND_VM_OP_NEXT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ZEND_VM_OP_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %90

52:                                               ; preds = %43
  %53 = load i32, i32* @ZEND_VM_OP_CLASS_FETCH, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ZEND_VM_OP_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @zend_dump_class_fetch_type(i32 %60)
  br label %89

62:                                               ; preds = %52
  %63 = load i32, i32* @ZEND_VM_OP_CONSTRUCTOR, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ZEND_VM_OP_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %88

71:                                               ; preds = %62
  %72 = load i32, i32* @ZEND_VM_OP_CONST_FETCH, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ZEND_VM_OP_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IS_CONSTANT_UNQUALIFIED_IN_NAMESPACE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87, %68
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %49
  br label %91

91:                                               ; preds = %90, %40
  br label %92

92:                                               ; preds = %91, %33
  br label %93

93:                                               ; preds = %92, %13
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @zend_dump_class_fetch_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
