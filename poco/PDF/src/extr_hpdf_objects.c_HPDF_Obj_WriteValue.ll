; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_objects.c_HPDF_Obj_WriteValue.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_objects.c_HPDF_Obj_WriteValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c" HPDF_Obj_WriteValue\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c" HPDF_Obj_WriteValue obj=0x%08X obj_class=0x%04X\0A\00", align 1
@HPDF_OCLASS_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@HPDF_ERR_UNKNOWN_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Obj_WriteValue(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @HPDF_PTRACE(i8* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HPDF_OCLASS_ANY, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %64 [
    i32 132, label %25
    i32 130, label %29
    i32 129, label %33
    i32 128, label %37
    i32 135, label %42
    i32 136, label %47
    i32 133, label %52
    i32 134, label %57
    i32 131, label %61
  ]

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @HPDF_Name_Write(i8* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %66

29:                                               ; preds = %3
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @HPDF_Number_Write(i8* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %66

33:                                               ; preds = %3
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @HPDF_Real_Write(i8* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %66

37:                                               ; preds = %3
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @HPDF_String_Write(i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %66

42:                                               ; preds = %3
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @HPDF_Binary_Write(i8* %43, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %66

47:                                               ; preds = %3
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @HPDF_Array_Write(i8* %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %66

52:                                               ; preds = %3
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @HPDF_Dict_Write(i8* %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %66

57:                                               ; preds = %3
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @HPDF_Boolean_Write(i8* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %66

61:                                               ; preds = %3
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @HPDF_Stream_WriteStr(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %8, align 4
  br label %66

64:                                               ; preds = %3
  %65 = load i32, i32* @HPDF_ERR_UNKNOWN_CLASS, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %61, %57, %52, %47, %42, %37, %33, %29, %25
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Name_Write(i8*, i32) #1

declare dso_local i32 @HPDF_Number_Write(i8*, i32) #1

declare dso_local i32 @HPDF_Real_Write(i8*, i32) #1

declare dso_local i32 @HPDF_String_Write(i8*, i32, i32) #1

declare dso_local i32 @HPDF_Binary_Write(i8*, i32, i32) #1

declare dso_local i32 @HPDF_Array_Write(i8*, i32, i32) #1

declare dso_local i32 @HPDF_Dict_Write(i8*, i32, i32) #1

declare dso_local i32 @HPDF_Boolean_Write(i8*, i32) #1

declare dso_local i32 @HPDF_Stream_WriteStr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
