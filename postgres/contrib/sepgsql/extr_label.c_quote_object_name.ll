; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_quote_object_name.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_quote_object_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*)* @quote_object_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quote_object_name(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = call i32 @initStringInfo(%struct.TYPE_5__* %9)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @quote_identifier(i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @appendStringInfoString(%struct.TYPE_5__* %9, i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @pfree(i8* %23)
  br label %25

25:                                               ; preds = %22, %14
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @quote_identifier(i8* %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @appendStringInfo(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @pfree(i8* %38)
  br label %40

40:                                               ; preds = %37, %29
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @quote_identifier(i8* %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @appendStringInfo(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @pfree(i8* %53)
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @quote_identifier(i8* %60)
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @appendStringInfo(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @pfree(i8* %68)
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %56
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  ret i8* %73
}

declare dso_local i32 @initStringInfo(%struct.TYPE_5__*) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_5__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
