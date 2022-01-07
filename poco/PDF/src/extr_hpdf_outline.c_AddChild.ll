; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_AddChild.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_AddChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"First\00", align 1
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Last\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" AddChild\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Next\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Prev\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, %struct.TYPE_7__*)* @AddChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AddChild(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %11 = call i32 @HPDF_Dict_GetItem(%struct.TYPE_7__* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %16 = call i32 @HPDF_Dict_GetItem(%struct.TYPE_7__* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %7, align 8
  store i64 0, i64* %8, align 8
  %19 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = call i64 @HPDF_Dict_Add(%struct.TYPE_7__* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %24)
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = call i64 @HPDF_Dict_Add(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_7__* %33)
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = call i64 @HPDF_Dict_Add(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_7__* %38)
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %31, %28
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = call i64 @HPDF_Dict_Add(%struct.TYPE_7__* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %44)
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i64 @HPDF_Dict_Add(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* %49)
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @HPDF_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @HPDF_Error_GetCode(i32 %59)
  store i64 %60, i64* %3, align 8
  br label %63

61:                                               ; preds = %42
  %62 = load i64, i64* @HPDF_OK, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32 @HPDF_Dict_GetItem(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_7__*, i8*, %struct.TYPE_7__*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
