; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_ext_gstate.c_HPDF_ExtGState_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_ext_gstate.c_HPDF_ExtGState_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c" HPDF_ExtGState_New\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ExtGState\00", align 1
@HPDF_OSUBCLASS_EXT_GSTATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @HPDF_ExtGState_New(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_8__* @HPDF_Dict_New(i32 %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %34

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = call i64 @HPDF_Xref_Add(i32 %14, %struct.TYPE_8__* %15)
  %17 = load i64, i64* @HPDF_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %34

20:                                               ; preds = %13
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = call i64 @HPDF_Dict_AddName(%struct.TYPE_8__* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i64, i64* @HPDF_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %34

26:                                               ; preds = %20
  %27 = load i32, i32* @HPDF_OSUBCLASS_EXT_GSTATE, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %3, align 8
  br label %34

34:                                               ; preds = %26, %25, %19, %12
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %35
}

declare dso_local %struct.TYPE_8__* @HPDF_Dict_New(i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_8__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
