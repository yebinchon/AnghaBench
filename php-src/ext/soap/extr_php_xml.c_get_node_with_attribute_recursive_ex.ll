; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_xml.c_get_node_with_attribute_recursive_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_xml.c_get_node_with_attribute_recursive_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @get_node_with_attribute_recursive_ex(%struct.TYPE_9__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  br label %16

16:                                               ; preds = %67, %6
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @node_is_equal_ex(%struct.TYPE_9__* %20, i8* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call %struct.TYPE_10__* @get_attribute_ex(i32 %28, i8* %29, i8* %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %14, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @strcmp(i8* %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %7, align 8
  br label %72

46:                                               ; preds = %34, %25
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call %struct.TYPE_9__* @get_node_with_attribute_recursive_ex(%struct.TYPE_9__* %55, i8* %56, i8* %57, i8* %58, i8* %59, i8* %60)
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %15, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %7, align 8
  br label %72

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %8, align 8
  br label %16

71:                                               ; preds = %16
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %72

72:                                               ; preds = %71, %64, %44
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %73
}

declare dso_local i64 @node_is_equal_ex(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @get_attribute_ex(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
