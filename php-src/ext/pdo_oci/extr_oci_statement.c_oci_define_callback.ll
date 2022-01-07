; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_define_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_define_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@OCI_ONE_PIECE = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"unhandled datatype in oci_define_callback; this should not happen\00", align 1
@OCI_ERROR = common dso_local global i32 0, align 4
@OCI_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32**, i32**, i32*, i32**, i32**)* @oci_define_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_define_callback(i32* %0, i32* %1, i32 %2, i32** %3, i32** %4, i32* %5, i32** %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32** %3, i32*** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32** %6, i32*** %16, align 8
  store i32** %7, i32*** %17, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %18, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %37 [
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %8, %8
  %25 = load i32, i32* @OCI_ONE_PIECE, align 4
  %26 = load i32*, i32** %15, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32**, i32*** %13, align 8
  store i32* %29, i32** %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32**, i32*** %14, align 8
  store i32* %32, i32** %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %16, align 8
  store i32* %35, i32** %36, align 8
  br label %41

37:                                               ; preds = %8
  %38 = load i32, i32* @E_WARNING, align 4
  %39 = call i32 @php_error_docref(i32* null, i32 %38, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @OCI_ERROR, align 4
  store i32 %40, i32* %9, align 4
  br label %43

41:                                               ; preds = %24
  %42 = load i32, i32* @OCI_CONTINUE, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
