; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_to_zval_read_aggregation.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_to_zval_read_aggregation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 (i8*, i32*, %struct.TYPE_9__*)*, i32*, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IS_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"No information on how to convert native field into value for key '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @to_zval_read_aggregation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_zval_read_aggregation(i8* %0, i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @Z_TYPE_P(i32* %12)
  %14 = load i64, i64* @IS_ARRAY, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @Z_ARRVAL_P(i32* %18)
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %9, align 8
  br label %24

24:                                               ; preds = %82, %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi i1 [ false, %24 ], [ %35, %29 ]
  br i1 %37, label %38, label %85

38:                                               ; preds = %36
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32 (i8*, i32*, %struct.TYPE_9__*)*, i32 (i8*, i32*, %struct.TYPE_9__*)** %40, align 8
  %42 = icmp eq i32 (i8*, i32*, %struct.TYPE_9__*)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @do_to_zval_err(%struct.TYPE_9__* %44, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32* %47)
  br label %85

49:                                               ; preds = %38
  %50 = call i32 @ZVAL_NULL(i32* %11)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32* @Z_ARRVAL_P(i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call i32* @zend_symtable_str_update(i32* %52, i32* %55, i64 %59, i32* %11)
  store i32* %60, i32** %10, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = bitcast i32** %64 to i8*
  %66 = call i32 @zend_llist_add_element(i32* %62, i8* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32 (i8*, i32*, %struct.TYPE_9__*)*, i32 (i8*, i32*, %struct.TYPE_9__*)** %68, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i32*, i32** %10, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = call i32 %69(i8* %75, i32* %76, %struct.TYPE_9__* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = call i32 @zend_llist_remove_tail(i32* %80)
  br label %82

82:                                               ; preds = %49
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 1
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %9, align 8
  br label %24

85:                                               ; preds = %43, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @do_to_zval_err(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32* @zend_symtable_str_update(i32*, i32*, i64, i32*) #1

declare dso_local i32 @zend_llist_add_element(i32*, i8*) #1

declare dso_local i32 @zend_llist_remove_tail(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
