; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_get_str_from_var_sci.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_get_str_from_var_sci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32* }

@DEC_DIGITS = common dso_local global i32 0, align 4
@const_ten = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%se%+03d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i32)* @get_str_from_var_sci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_str_from_var_sci(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @DEC_DIGITS, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @DEC_DIGITS, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @log10(i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = sub nsw i32 %27, %34
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = call i32 @init_var(%struct.TYPE_10__* %6)
  %48 = call i32 @init_var(%struct.TYPE_10__* %7)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @power_var_int(i32* @const_ten, i32 %49, %struct.TYPE_10__* %6, i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @div_var(%struct.TYPE_10__* %52, %struct.TYPE_10__* %6, %struct.TYPE_10__* %7, i32 %53, i32 1)
  %55 = call i8* @get_str_from_var(%struct.TYPE_10__* %7)
  store i8* %55, i8** %11, align 8
  %56 = call i32 @free_var(%struct.TYPE_10__* %6)
  %57 = call i32 @free_var(%struct.TYPE_10__* %7)
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %59, 13
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i8* @palloc(i64 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @snprintf(i8* %64, i64 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %66, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @pfree(i8* %69)
  %71 = load i8*, i8** %10, align 8
  ret i8* %71
}

declare dso_local i64 @log10(i32) #1

declare dso_local i32 @init_var(%struct.TYPE_10__*) #1

declare dso_local i32 @power_var_int(i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @div_var(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @get_str_from_var(%struct.TYPE_10__*) #1

declare dso_local i32 @free_var(%struct.TYPE_10__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @palloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
