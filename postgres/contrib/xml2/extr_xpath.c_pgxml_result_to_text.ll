; ModuleID = '/home/carl/AnghaBench/postgres/contrib/xml2/extr_xpath.c_pgxml_result_to_text.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/xml2/extr_xpath.c_pgxml_result_to_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported XQuery result: %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<unsupported/>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i32*, i32*)* @pgxml_result_to_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pgxml_result_to_text(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %46

15:                                               ; preds = %4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %32 [
    i32 129, label %19
    i32 128, label %27
  ]

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @pgxmlNodeSetToText(i32 %22, i32* %23, i32* %24, i32* %25)
  store i32* %26, i32** %10, align 8
  br label %39

27:                                               ; preds = %15
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32* @xmlStrdup(i32* %30)
  store i32* %31, i32** %10, align 8
  br label %39

32:                                               ; preds = %15
  %33 = load i32, i32* @NOTICE, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32* @xmlStrdup(i32* bitcast ([15 x i8]* @.str.1 to i32*))
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %32, %27, %19
  %40 = load i32*, i32** %10, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = call i32* @cstring_to_text(i8* %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @xmlFree(i32* %43)
  %45 = load i32*, i32** %11, align 8
  store i32* %45, i32** %5, align 8
  br label %46

46:                                               ; preds = %39, %14
  %47 = load i32*, i32** %5, align 8
  ret i32* %47
}

declare dso_local i32* @pgxmlNodeSetToText(i32, i32*, i32*, i32*) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @cstring_to_text(i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
