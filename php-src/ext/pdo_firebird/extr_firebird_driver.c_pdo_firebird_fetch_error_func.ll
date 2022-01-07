; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_pdo_firebird_fetch_error_func.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_pdo_firebird_fetch_error_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*)* @pdo_firebird_fetch_error_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_firebird_fetch_error_func(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [400 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @isc_sqlcode(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @add_next_index_long(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %46, %24
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 400, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 %35
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 400, %38
  %40 = sub i64 %39, 2
  %41 = trunc i64 %40 to i32
  %42 = call i32 @fb_interpret(i8* %36, i32 %41, i32** %8)
  store i32 %42, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %33, %28
  %45 = phi i1 [ false, %28 ], [ %43, %33 ]
  br i1 %45, label %46, label %55

46:                                               ; preds = %44
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 %52
  %54 = call i32 @strcpy(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %28

55:                                               ; preds = %44
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %58 = call i32 @add_next_index_string(i32* %56, i8* %57)
  br label %74

59:                                               ; preds = %3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @add_next_index_long(i32* %65, i32 -999)
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @const_cast(i64 %70)
  %72 = call i32 @add_next_index_string(i32* %67, i8* %71)
  br label %73

73:                                               ; preds = %64, %59
  br label %74

74:                                               ; preds = %73, %55
  ret i32 1
}

declare dso_local i32 @isc_sqlcode(i32*) #1

declare dso_local i32 @add_next_index_long(i32*, i32) #1

declare dso_local i32 @fb_interpret(i8*, i32, i32**) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @add_next_index_string(i32*, i8*) #1

declare dso_local i8* @const_cast(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
