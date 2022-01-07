; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_cluster.c_cluster_cmd_get_slot.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_cluster.c_cluster_cmd_get_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IS_STRING = common dso_local global i64 0, align 8
@IS_LONG = common dso_local global i64 0, align 8
@IS_DOUBLE = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown node %s:%ld\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Direted commands musty be passed a key or [host,port] array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.TYPE_4__*, i32*)* @cluster_cmd_get_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @cluster_cmd_get_slot(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @Z_TYPE_P(i32* %13)
  %15 = load i64, i64* @IS_STRING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @Z_TYPE_P(i32* %18)
  %20 = load i64, i64* @IS_LONG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @Z_TYPE_P(i32* %23)
  %25 = load i64, i64* @IS_DOUBLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %22, %17, %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @zval_get_string(i32* %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i8* @ZSTR_VAL(i32* %30)
  store i8* %31, i8** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i64 @ZSTR_LEN(i32* %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @redis_key_prefix(i32 %36, i8** %11, i64* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call signext i16 @cluster_hash_key(i8* %38, i64 %39)
  store i16 %40, i16* %10, align 2
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @zend_string_release(i32* %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @efree(i8* %46)
  br label %48

48:                                               ; preds = %45, %27
  br label %98

49:                                               ; preds = %22
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @Z_TYPE_P(i32* %50)
  %52 = load i64, i64* @IS_ARRAY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @Z_ARRVAL_P(i32* %55)
  %57 = call i32* @zend_hash_index_find(i32 %56, i32 0)
  store i32* %57, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %94

59:                                               ; preds = %54
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @Z_ARRVAL_P(i32* %60)
  %62 = call i32* @zend_hash_index_find(i32 %61, i32 1)
  store i32* %62, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %94

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @Z_TYPE_P(i32* %65)
  %67 = load i64, i64* @IS_STRING, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @Z_TYPE_P(i32* %70)
  %72 = load i64, i64* @IS_LONG, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i64 @Z_STRVAL_P(i32* %76)
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32*, i32** %9, align 8
  %80 = call i64 @Z_LVAL_P(i32* %79)
  %81 = trunc i64 %80 to i16
  %82 = call signext i16 @cluster_find_slot(%struct.TYPE_4__* %75, i8* %78, i16 zeroext %81)
  store i16 %82, i16* %10, align 2
  %83 = load i16, i16* %10, align 2
  %84 = sext i16 %83 to i32
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %74
  %87 = load i32, i32* @E_WARNING, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = call i64 @Z_STRVAL_P(i32* %88)
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @Z_LVAL_P(i32* %90)
  %92 = call i32 (i32, i32, i8*, ...) @php_error_docref(i32 0, i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %91)
  br label %93

93:                                               ; preds = %86, %74
  br label %97

94:                                               ; preds = %69, %64, %59, %54, %49
  %95 = load i32, i32* @E_WARNING, align 4
  %96 = call i32 (i32, i32, i8*, ...) @php_error_docref(i32 0, i32 %95, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i16 -1, i16* %3, align 2
  br label %100

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %48
  %99 = load i16, i16* %10, align 2
  store i16 %99, i16* %3, align 2
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i16, i16* %3, align 2
  ret i16 %101
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zval_get_string(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @redis_key_prefix(i32, i8**, i64*) #1

declare dso_local signext i16 @cluster_hash_key(i8*, i64) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32* @zend_hash_index_find(i32, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local signext i16 @cluster_find_slot(%struct.TYPE_4__*, i8*, i16 zeroext) #1

declare dso_local i64 @Z_STRVAL_P(i32*) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i32 @php_error_docref(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
