; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c__pdo_pgsql_error.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c__pdo_pgsql_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"HY000\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SQLSTATE[%s] [%d] %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pdo_pgsql_error(%struct.TYPE_10__* %0, %struct.TYPE_7__* %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %15, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  br label %31

28:                                               ; preds = %7
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32* [ %27, %25 ], [ %30, %28 ]
  store i32* %32, i32** %16, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %17, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @PQerrorMessage(i32 %37)
  store i8* %38, i8** %18, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %31
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pefree(i32* %55, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %52, %31
  %63 = load i8*, i8** %11, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = sext i32 %67 to i64
  %69 = icmp uge i64 %68, 4
  br i1 %69, label %70, label %74

70:                                               ; preds = %65, %62
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strcpy(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %79

74:                                               ; preds = %65
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @strcpy(i32 %76, i8* %77)
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = call i32* @estrdup(i8* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32* %84, i32** %86, align 8
  br label %99

87:                                               ; preds = %79
  %88 = load i8*, i8** %18, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i8*, i8** %18, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32* @_pdo_pgsql_trim_message(i8* %91, i32 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  store i32* %95, i32** %97, align 8
  br label %98

98:                                               ; preds = %90, %87
  br label %99

99:                                               ; preds = %98, %82
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %99
  %105 = call i32 (...) @php_pdo_get_exception()
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @zend_throw_exception_ex(i32 %105, i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %113, i32* %116)
  br label %118

118:                                              ; preds = %104, %99
  %119 = load i32, i32* %10, align 4
  ret i32 %119
}

declare dso_local i8* @PQerrorMessage(i32) #1

declare dso_local i32 @pefree(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32* @estrdup(i8*) #1

declare dso_local i32* @_pdo_pgsql_trim_message(i8*, i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @php_pdo_get_exception(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
