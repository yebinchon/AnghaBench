; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltNewKeyTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltNewKeyTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"xsltNewKeyTable : malloc failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32*)* @xsltNewKeyTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @xsltNewKeyTable(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i64 @xmlMalloc(i32 4)
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = call i32 @memset(%struct.TYPE_4__* %14, i32 0, i32 4)
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @xmlStrdup(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @xmlStrdup(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = call i32 @xmlHashCreate(i32 0)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %3, align 8
  br label %36

36:                                               ; preds = %31, %11
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xsltTransformError(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @xmlStrdup(i32*) #1

declare dso_local i32 @xmlHashCreate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
