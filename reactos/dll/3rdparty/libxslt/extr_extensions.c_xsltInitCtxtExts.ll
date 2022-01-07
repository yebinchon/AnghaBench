; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltInitCtxtExts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltInitCtxtExts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }

@xsltInitCtxtExt = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltInitCtxtExts(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %45

16:                                               ; preds = %9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %39, %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @xsltInitCtxtExt, align 4
  %33 = call i32 @xmlHashScan(i32* %31, i32 %32, %struct.TYPE_10__* %5)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %45

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = call %struct.TYPE_9__* @xsltNextImport(%struct.TYPE_9__* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %4, align 8
  br label %20

42:                                               ; preds = %20
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %37, %15, %8
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @xmlHashScan(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @xsltNextImport(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
