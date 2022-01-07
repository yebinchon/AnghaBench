; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_if.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__** }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }

@ZEND_JMPZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_if(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call %struct.TYPE_8__* @zend_ast_get_list(%struct.TYPE_9__* %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  store i64* null, i64** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = call i64* @safe_emalloc(i32 8, i32 %21, i32 0)
  store i64* %22, i64** %5, align 8
  br label %23

23:                                               ; preds = %17, %1
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %85, %23
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %88

31:                                               ; preds = %24
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %34, i64 %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %6, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %40, i64 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %7, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i64 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %8, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %31
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = call i32 @zend_compile_expr(i32* %9, %struct.TYPE_9__* %51)
  %53 = load i32, i32* @ZEND_JMPZ, align 4
  %54 = call i64 @zend_emit_cond_jump(i32 %53, i32* %9, i32 0)
  store i64 %54, i64* %10, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = call i32 @zend_compile_stmt(%struct.TYPE_9__* %55)
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %57, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = call i64 @zend_emit_jump(i32 0)
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %65, i64* %68, align 8
  br label %69

69:                                               ; preds = %64, %50
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @zend_update_jump_target_to_next(i64 %70)
  br label %84

72:                                               ; preds = %31
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %73, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ZEND_ASSERT(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = call i32 @zend_compile_stmt(%struct.TYPE_9__* %82)
  br label %84

84:                                               ; preds = %72, %69
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %4, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %4, align 8
  br label %24

88:                                               ; preds = %24
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  store i64 0, i64* %4, align 8
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i64, i64* %4, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %95, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = load i64*, i64** %5, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @zend_update_jump_target_to_next(i64 %106)
  br label %108

108:                                              ; preds = %102
  %109 = load i64, i64* %4, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %4, align 8
  br label %94

111:                                              ; preds = %94
  %112 = load i64*, i64** %5, align 8
  %113 = call i32 @efree(i64* %112)
  br label %114

114:                                              ; preds = %111, %88
  ret void
}

declare dso_local %struct.TYPE_8__* @zend_ast_get_list(%struct.TYPE_9__*) #1

declare dso_local i64* @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @zend_compile_expr(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @zend_emit_cond_jump(i32, i32*, i32) #1

declare dso_local i32 @zend_compile_stmt(%struct.TYPE_9__*) #1

declare dso_local i64 @zend_emit_jump(i32) #1

declare dso_local i32 @zend_update_jump_target_to_next(i64) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @efree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
