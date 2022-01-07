; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_isDate.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_isDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@SQLITE_FLOAT = common dso_local global i32 0, align 4
@SQLITE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, %struct.TYPE_7__*)* @isDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isDate(i32* %0, i32 %1, i32** %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %14 = call i32 @memset(%struct.TYPE_7__* %13, i32 0, i32 16)
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = call i32 @setDateTimeToCurrent(i32* %18, %struct.TYPE_7__* %19)
  store i32 %20, i32* %5, align 4
  br label %85

21:                                               ; preds = %4
  %22 = load i32**, i32*** %8, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @sqlite3_value_type(i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @SQLITE_FLOAT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @SQLITE_INTEGER, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28, %21
  %33 = load i32**, i32*** %8, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call double @sqlite3_value_double(i32* %35)
  %37 = fmul double %36, 8.640000e+07
  %38 = fadd double %37, 5.000000e-01
  %39 = fptosi double %38 to i64
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %59

44:                                               ; preds = %28
  %45 = load i32**, i32*** %8, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i8* @sqlite3_value_text(i32* %47)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = call i64 @parseDateOrTime(i32* %52, i8* %53, %struct.TYPE_7__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %44
  store i32 1, i32* %5, align 4
  br label %85

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %32
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32**, i32*** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @sqlite3_value_text(i32* %69)
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %64
  %74 = load i32*, i32** %6, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = call i64 @parseModifier(i32* %74, i8* %75, %struct.TYPE_7__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %64
  store i32 1, i32* %5, align 4
  br label %85

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %60

84:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %79, %57, %17
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @setDateTimeToCurrent(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i64 @parseDateOrTime(i32*, i8*, %struct.TYPE_7__*) #1

declare dso_local i64 @parseModifier(i32*, i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
