; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encryptdict.c_HPDF_EncryptDict_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encryptdict.c_HPDF_EncryptDict_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c" HPDF_EncryptDict_New\0A\00", align 1
@HPDF_OSUBCLASS_ENCRYPT = common dso_local global i32 0, align 4
@HPDF_EncryptDict_OnFree = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @HPDF_EncryptDict_New(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_8__* @HPDF_Dict_New(i32 %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %47

14:                                               ; preds = %2
  %15 = load i32, i32* @HPDF_OSUBCLASS_ENCRYPT, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @HPDF_EncryptDict_OnFree, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @HPDF_GetMem(i32 %26, i32 4)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = call i32 @HPDF_Dict_Free(%struct.TYPE_8__* %31)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %47

33:                                               ; preds = %14
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @HPDF_Encrypt_Init(i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = call i64 @HPDF_Xref_Add(i32 %39, %struct.TYPE_8__* %40)
  %42 = load i64, i64* @HPDF_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %47

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %3, align 8
  br label %47

47:                                               ; preds = %45, %44, %30, %13
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %48
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_8__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @HPDF_Dict_Free(%struct.TYPE_8__*) #1

declare dso_local i32 @HPDF_Encrypt_Init(i64) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
