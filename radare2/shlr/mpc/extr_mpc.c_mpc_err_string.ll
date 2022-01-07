; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_err_string.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_err_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"%s: error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s:%i:%i: error: expected \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ERROR: NOTHING EXPECTED\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s or %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mpc_err_string(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 1023, i32* %6, align 4
  %8 = call i8* @calloc(i32 1, i32 1024)
  store i8* %8, i8** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %14, i32* %5, i32* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %2, align 8
  br label %124

23:                                               ; preds = %1
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %24, i32* %5, i32* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %27, i64 %32, i64 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %44, i32* %5, i32* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %23
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %52, i32* %5, i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 2
  br i1 %63, label %64, label %108

64:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 2
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %73, i32* %5, i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %65

85:                                               ; preds = %65
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %86, i32* %5, i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 %106)
  br label %108

108:                                              ; preds = %85, %59
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %109, i32* %5, i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @mpc_err_char_unescape(i32 %114)
  %116 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %111, i32* %5, i32* %6, i8* %115)
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 (i8*, i32*, i32*, i8*, ...) @mpc_err_string_cat(i8* %117, i32* %5, i32* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i64 @strlen(i8* %120)
  %122 = add nsw i64 %121, 1
  %123 = call i8* @realloc(i8* %119, i64 %122)
  store i8* %123, i8** %2, align 8
  br label %124

124:                                              ; preds = %108, %13
  %125 = load i8*, i8** %2, align 8
  ret i8* %125
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @mpc_err_string_cat(i8*, i32*, i32*, i8*, ...) #1

declare dso_local i8* @mpc_err_char_unescape(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
