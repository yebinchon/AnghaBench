; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_security.c_xsltSetSecurityPrefs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_security.c_xsltSetSecurityPrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltSetSecurityPrefs(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = call i32 (...) @xsltInitGlobals()
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %34 [
    i32 131, label %14
    i32 129, label %18
    i32 132, label %22
    i32 130, label %26
    i32 128, label %30
  ]

14:                                               ; preds = %12
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  store i32 0, i32* %4, align 4
  br label %35

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  store i32 0, i32* %4, align 4
  br label %35

22:                                               ; preds = %12
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  store i32 0, i32* %4, align 4
  br label %35

26:                                               ; preds = %12
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  store i32 0, i32* %4, align 4
  br label %35

30:                                               ; preds = %12
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  store i32 0, i32* %4, align 4
  br label %35

34:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %30, %26, %22, %18, %14, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @xsltInitGlobals(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
