; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_jsdisp_get_idx.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_jsdisp_get_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@jsdisp_get_idx.formatW = internal constant [3 x i8] c"%d\00", align 1
@PROP_DELETED = common dso_local global i64 0, align 8
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsdisp_get_idx(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [12 x i8], align 1
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @swprintf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @jsdisp_get_idx.formatW, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %16 = call i32 @string_hash(i8* %15)
  %17 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %18 = call i32 @find_prop_name_prot(i32* %14, i32 %16, i8* %17, %struct.TYPE_4__** %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PROP_DELETED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %24
  %34 = call i32 (...) @jsval_undefined()
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %27
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @prop_get(i32* %38, %struct.TYPE_4__* %39, i32* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %33, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @swprintf(i8*, i8*, i8*) #1

declare dso_local i32 @find_prop_name_prot(i32*, i32, i8*, %struct.TYPE_4__**) #1

declare dso_local i32 @string_hash(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @prop_get(i32*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
