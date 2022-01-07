; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_warning.c_php_get_warnings.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_warning.c_php_get_warnings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [14 x i8] c"SHOW WARNINGS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @php_get_warnings(i32* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @mysql_real_query(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %46

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @mysql_store_result(i32* %14)
  store i32* %15, i32** %7, align 8
  br label %16

16:                                               ; preds = %40, %13
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @mysql_fetch_row(i32* %17)
  store i32* %18, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @atoi(i32 %26)
  %28 = call %struct.TYPE_4__* @php_new_warning(i32 %23, i32 %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %5, align 8
  br label %33

33:                                               ; preds = %31, %20
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %6, align 8
  br label %16

42:                                               ; preds = %16
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @mysql_free_result(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %2, align 8
  br label %46

46:                                               ; preds = %42, %12
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %47
}

declare dso_local i64 @mysql_real_query(i32*, i8*, i32) #1

declare dso_local i32* @mysql_store_result(i32*) #1

declare dso_local i32* @mysql_fetch_row(i32*) #1

declare dso_local %struct.TYPE_4__* @php_new_warning(i32, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @mysql_free_result(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
